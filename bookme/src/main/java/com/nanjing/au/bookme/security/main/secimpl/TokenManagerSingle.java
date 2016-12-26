package com.nanjing.au.bookme.security.main.secimpl;

import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.codec.Base64;

import com.nanjing.au.bookme.security.main.restsec.TokenInfo;
import com.nanjing.au.bookme.security.main.restsec.TokenManager;

/**
 * Implements simple token manager, that keeps a single token for each user. If user logs in again,
 * older token is invalidated.
 */
public class TokenManagerSingle implements TokenManager {

	private Map<String, UserDetails> validUsers = new HashMap<>();
	private final long TimeOutMilliSec = 60*60*1000; // 60 minutes

	/**
	 * This maps system users to tokens because equals/hashCode is delegated to User entity.
	 * This can store either one token or list of them for each user, depending on what you want to do.
	 * Here we store single token, which means, that any older tokens are invalidated.
	 */
	private Map<UserDetails, TokenInfo> tokens = new HashMap<>();

	@Override
	public TokenInfo createNewToken(UserDetails userDetails) {
		String token;
		do {
			token = generateToken();
		} while (validUsers.containsKey(token));

		TokenInfo tokenInfo = new TokenInfo(token, userDetails);
		removeUserDetails(userDetails);
		UserDetails previous = validUsers.put(token, userDetails);
		if (previous != null) {
			System.out.println(" *** SERIOUS PROBLEM HERE - we generated the same token (randomly?)!");
			return null;
		}
		tokens.put(userDetails, tokenInfo);

		return tokenInfo;
	}

	private String generateToken() {
		byte[] tokenBytes = new byte[32];
		new SecureRandom().nextBytes(tokenBytes);
		return new String(Base64.encode(tokenBytes), StandardCharsets.UTF_8);
	}

	@Override
	public void removeUserDetails(UserDetails userDetails) {
		TokenInfo token = tokens.remove(userDetails);
		if (token != null) {
			validUsers.remove(token.getToken());
		}
	}

	@Override
	public UserDetails removeToken(String token) {
		UserDetails userDetails = validUsers.remove(token);
		if (userDetails != null) {
			tokens.remove(userDetails);
		}
		return userDetails;
	}

	@Override
	public UserDetails getUserDetails(String token) {
		return validUsers.get(token);
	}

	@Override
	public Collection<TokenInfo> getUserTokens(UserDetails userDetails) {
		return Arrays.asList(tokens.get(userDetails));
	}

	@Override
	public Map<String, UserDetails> getValidUsers() {
		return Collections.unmodifiableMap(validUsers);
	}
	
	@Override 
	public void timeOutUserToken(){
		Set<UserDetails> keys = tokens.keySet();
		Iterator<UserDetails> itr = keys.iterator();
		long current = System.currentTimeMillis();
		TokenInfo tokeninfo = null;
		while(itr.hasNext()){
			UserDetails ud = itr.next();
			tokeninfo = tokens.get(ud);
			if(tokeninfo != null){
				long time = current - tokeninfo.getCreated();
				if(time > TimeOutMilliSec){
					removeUserDetails(ud);
					System.out.println("Token removed due to Timeout.With token="+tokeninfo.getToken() +",with username=" + ud.getUsername());
				}
			}
		}
	}
}
