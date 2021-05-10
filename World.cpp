#include "World.h"
#include <iostream>

World::World()
{
    world = dWorldCreate();
    space = dHashSpaceCreate(0);
    contactgroup = dJointGroupCreate(0);
    ground = dCreatePlane(space, 0, 0, 1, 0);
    dWorldSetGravity(world, 0, 0, __DEAFULT_GRAVITY);
}

World::~World()
{
    dSpaceDestroy(space);
    dWorldDestroy(world);
}