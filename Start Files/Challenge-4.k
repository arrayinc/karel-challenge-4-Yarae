/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/

import "turns";

function ClimbMountains(){
	while(beepersInBag()){
		climbUp();
		putBeeper();
		climbDown();
	}
}

function climbUp(){
	if(frontIsClear()){
		move();
		while(frontIsBlocked()){
			turnLeft();
			move();
			turnRight();
			move();
		}
	}
}

function climbDown(){
	while(frontIsClear()){
		move();
		turnRight();
		move();
		turnLeft();
	}
	if(frontIsBlocked()){
		climbUp();
	}
}
