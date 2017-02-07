package com.nanjing.au.bookme;


/**
- The application is a simulation of a toy robot moving on a square table top,
  of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be
  prevented from falling to destruction. Any movement that would result in the
  robot falling from the table must be prevented, however further valid
  movement commands must still be allowed.
  
 * @author Tony
 * @version 0.1
 */
public class Robot {

	private int maxx;
	private int minx;
	private int maxy;
	private int miny;
	
	private int x;
	private int y;
	
	private String d;
	
	private static final String ERROR_DIRECTION = "Error direction! Avoid taking any actions.";
	private static final String ERROR_COMMAND_LINE = "Error input command line.";
	private static final String ERROR_COMMAND_ACTION = "Error input action command.";
	private static final String ERROR_ACTION_OUTRANGE = "Error action, out of range.";
	
	public void Robot(){
		
	}
	
	public void Robot(int mx, int my, int x, int y, String d){
		
	}
	
	private void initRobot(int mx, int my, int x, int y, String d){
		this.maxx = mx;
		this.maxy = my;
		this.minx = 0;
		this.miny = 0;
		this.x = x;
		this.y = y;
		this.d = d;
	}
	
	private void turnLeft(){
		switch(d){
		case "N":
			d = "W";
			break;
		case "S":
			d = "E";
			break;
		case "E":
			d = "N";
			break;
		case "W":
			d = "S";
			break;
		default:
			writeLog(ERROR_DIRECTION);
			break;
		}
	}
	
	private void turnRight(){
		switch(d){
		case "N":
			d = "E";
			break;
		case "S":
			d = "W";
			break;
		case "E":
			d = "S";
			break;
		case "W":
			d = "N";
			break;
		default:
			writeLog(ERROR_DIRECTION);
			break;
		}
	}
	
	private void moveAhead(){
		switch(d){
		case "N":
			if(y>=maxy){
				writeLog(ERROR_ACTION_OUTRANGE);
				return;
			}
			y = y+1;
			break;
		case "S":
			if(y<=miny){
				writeLog(ERROR_ACTION_OUTRANGE);
				return;
			}
			y = y-1;
			break;
		case "E":
			if(x>=maxx){
				writeLog(ERROR_ACTION_OUTRANGE);
				return;
			}
			x = x+1;
			break;
		case "W":
			if(x<=minx){
				writeLog(ERROR_ACTION_OUTRANGE);
				return;
			}
			x = x-1;
			break;
		default:
			writeLog(ERROR_DIRECTION);
			break;
		}
	}
	
	private void writeLog(String message){
		System.out.println(message);
	}
	
	private void run(String move){
		if(move == null || move.trim().length() == 0){
			writeLog(ERROR_COMMAND_LINE);
			return;
		}
		char[] actions = move.toCharArray();
		for(char action : actions){
			switch(action){
			case 'R':
				turnRight();
				break;
			case 'L':
				turnLeft();
				break;
			case 'M':
				moveAhead();
				break;
			case 'Q':
				whereIam();
				break;
			default:
				writeLog(ERROR_COMMAND_ACTION);
				break;
			}
		}
	}
	
	private void whereIam(){
		writeLog("I am at the location: [x:"+x + "--y:"+y + "--d:"+d+"]");
	}
	private enum Directions {EAST, WEST, SOUTH, NORTH};
	public static void main(String args[]){
        //System.out.println(Directions.valueOf("123"));
        System.out.println(Directions.valueOf("NORTH"));
		String move = "MMRMLMMLMLQ";
		Robot robot = new Robot();
		robot.initRobot(4, 5, 2, 1, "N");
		robot.run(move);
	}
	
}
