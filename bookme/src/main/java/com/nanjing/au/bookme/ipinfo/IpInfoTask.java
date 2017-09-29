package com.nanjing.au.bookme.ipinfo;


import java.util.Timer;
import java.util.TimerTask;

import org.apache.log4j.Logger;


public class IpInfoTask extends TimerTask{
	private Logger omtlogger = Logger.getLogger(IpInfoTask.class);

	private Timer timer;
	private String ipaddress;
	
    public IpInfoTask(String ipAddr)
    {
        timer = new Timer("IpInfoTask",true);
        this.ipaddress = ipAddr;
    }
	@Override
	public void run() {
		// TODO Auto-generated method stub
		scanAndProcess();
	}
	
	private void scanAndProcess(){
		omtlogger.info("IpInfoTask start...with ipaddr:" + ipaddress);
		IpInfoUtil.updateClients(ipaddress);
		omtlogger.info("IpInfoTask...End");
	}
	
    public void start()
    {
    	// Every 10 minutes 
		if(timer == null){
			timer = new Timer("IpInfoTask",true);
		}
		timer.schedule(this, 2*1000);
    }
    
    public void stop()
    {
    	if(timer != null) timer.cancel();
    }
}
