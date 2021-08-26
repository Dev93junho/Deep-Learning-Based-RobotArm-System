//Trajectory Planning of 2 DOF Manipulator in Joint Space

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <math.h>
#define phi 3.14159

void main()
{
	float theta1=0,theta2=0;
	float L1=1,L2=0.5,x,y,tt=0;
	FILE *fp;

	fp=fopen("C:\\temp\\traj_1.dat","w+");

for(tt=0;tt<=3;tt+=0.1){ 
	theta1=40*tt*tt-8.88*tt*tt*tt;
	theta2=30*tt*tt-6.66*tt*tt*tt;
	x=L1*cos(theta1*phi/180)+L2*cos(theta1*phi/180+theta2*phi/180);
	y=L1*sin(theta1*phi/180)+L2*sin(theta1*phi/180+theta2*phi/180);
	fprintf(fp,"%7.3f %7.3f\n",x,y);
	}

	fclose(fp);
}