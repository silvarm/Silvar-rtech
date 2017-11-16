#include <linux/input.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sstream>
#include "ros/ros.h"
#include <iostream>
#include <fstream>
//#include <mouse.msg>

class Mouse
{
    int bytes;

    unsigned char data[3];
    signed char x, y;
    int left;

    //int8_t pos[5] = {0,0,0,0,0};


	
}
