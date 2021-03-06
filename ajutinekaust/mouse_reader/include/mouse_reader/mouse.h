#include <linux/input.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <glob.h>	// for counting files in a dir (needed for counting event files in /dev/input)
#include <sstream>
#include "ros/ros.h"
#include <map>
#include <vector>
#include <iostream>
#include <fstream>

class Mouse
{
    int bytes;
    unsigned char data[3];
    int8_t pos[5] = {0,0,0,0,0};

    const char *pDevice = "/dev/input/mice";

    int left, middle, right;
    signed char x, y;
    // Open Mouse
    int fd = open(pDevice, O_RDWR);



    while(ros::ok())
    {
        // Read Mouse     
        bytes = read(fd, data, sizeof(data));

        if(bytes > 0)
        {
            left = data[0] & 0x1;
            right = data[0] & 0x2;
            middle = data[0] & 0x4;

            x = data[1];
            y = data[2];

            printf("x=%d, y=%d, left=%d, middle=%d, right=%d\n", x, y, left, middle, right);
		}
	mouse_reader::mouse mouse_msg;
	mouse_msg.x = x;
	mouse_msg.y = y;
	mouse_msg.left = left;
	mouse_msg.middle = middle;
	mouse_msg.right = right;
	}
}
