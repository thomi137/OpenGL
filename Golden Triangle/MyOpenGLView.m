//
//  MyOpenGLView.m
//  Golden Triangle
//
//  Created by Thomas Prosser on 03.11.13.
//  Copyright (c) 2013 Thomas Prosser. All rights reserved.
//

#import "MyOpenGLView.h"
#include <OpenGL/gl.h>
#include <GLUT/GLUT.h>

@implementation MyOpenGLView


- (void)drawRect:(NSRect) bounds
{
	glClearColor(0 ,0 ,0, 0);
    glClear(GL_COLOR_BUFFER_BIT);
    drawAnObject();
    glFlush();
}

static void drawAnObject()
{
    glColor3f(1.0f, 0.85f, 0.35f);
    /*glBegin(GL_TRIANGLES);
    {
        glVertex3f(0.0, 0.6, 0.0);
        glVertex3f(-0.2, -0.3, 0.0);
        glVertex3f(0.2, -0.3, 0.0);
    }
     */
    glutSolidTeapot(.5);
    glEnd();
    

}

@end
