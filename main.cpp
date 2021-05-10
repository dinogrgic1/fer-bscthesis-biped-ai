#include <ode/ode.h>
#include <drawstuff/drawstuff.h>

#ifdef dDOUBLE
#define dsDrawSphere dsDrawSphereD
#define dsDrawCapsule dsDrawCapsuleD
#endif
#include "texturepath.h"

#ifdef _MSC_VER
#pragma warning(disable : 4244 4305)
#endif

dWorldID world;
dSpaceID space;
dGeomID ground;
dJointID joint;
dJointGroupID contactgroup;
dReal r = 0.5, m = 1.0;
dsFunctions fn;
dReal THETA = {0.0};

typedef struct
{
  dBodyID body;
  dGeomID geom;
  double l, r, m;
} MyObject;
MyObject ball, pole;

static void nearCallback(void *data, dGeomID o1, dGeomID o2)
{
  static const int N = 10;
  dContact contact[N];

  int isGround = ((ground == o1) || (ground == o2));

  int n = dCollide(o1, o2, N, &contact[0].geom, sizeof(dContact));
  if (isGround)
  {
    for (int i = 0; i < n; i++)
    {
      contact[i].surface.mode = dContactBounce;
      contact[i].surface.bounce = 1.0;
      contact[i].surface.bounce_vel = 0.0;

      dJointID c = dJointCreateContact(world, contactgroup, &contact[i]);
      dJointAttach(c, dGeomGetBody(contact[i].geom.g1), dGeomGetBody(contact[i].geom.g2));
    }
  }
}

static void jointControl()
{
  dReal k = 10.0, fMax = 100.0;

  dReal tmp = dJointGetHingeAngle(joint);       // 関節角の取得
  dReal z = THETA - tmp;                        // 残差
  dJointSetHingeParam(joint, dParamVel, k * z); // 角速度の設定
  dJointSetHingeParam(joint, dParamFMax, fMax); // トルクの設定
}


static void simLoop(int pause)
{
  dSpaceCollide(space, 0, &nearCallback);
  jointControl();
  dWorldStep(world, 0.01);

  dJointGroupEmpty(contactgroup);
  dsSetColor(1.0, 0.0, 0.0);

  dsDrawSphere(dBodyGetPosition(ball.body), dBodyGetRotation(ball.body), ball.r);
  dsDrawCapsule(dBodyGetPosition(pole.body), dBodyGetRotation(pole.body), pole.l, pole.r);
}

static void createBallandPole()
{
  dReal x0 = 0.0, y0 = 0.0, z0 = 1.25;
  dMass mass1;

  ball.r = 0.2;
  ball.m = 1.0;
  ball.body = dBodyCreate(world);

  //  ball
  dMassSetZero(&mass1);
  dMassSetSphereTotal(&mass1, ball.m, ball.r);
  dBodySetMass(ball.body, &mass1);
  dBodySetPosition(ball.body, x0, y0, z0);
  ball.geom = dCreateSphere(space, ball.r);
  dGeomSetBody(ball.geom, ball.body);

  //  cylinder
  pole.r = 0.025;
  pole.l = 1.0;
  pole.m = 1.0;
  pole.body = dBodyCreate(world);
  dMassSetZero(&mass1);
  dMassSetCapsuleTotal(&mass1, pole.m, 3, pole.r, pole.l);
  dBodySetMass(pole.body, &mass1);
  dBodySetPosition(pole.body, x0, y0, z0 - 0.5 * pole.l);
  pole.geom = dCreateCapsule(space, pole.r, pole.l);
  dGeomSetBody(pole.geom, pole.body);

  //  joint
  joint = dJointCreateHinge(world, 0);
  dJointAttach(joint, ball.body, pole.body);
  dJointSetHingeAnchor(joint, x0, y0, z0 - ball.r);
  dJointSetHingeAxis(joint, 1, 0, 0);
  dJointSetHingeParam (joint, dParamLoStop, -0.25 * M_PI);
  dJointSetHingeParam (joint, dParamHiStop,  0.25 * M_PI);
}

void start()
{
  static float xyz[3] = {3.0, 0.0, 1.0};
  static float hpr[3] = {-180, 0, 0};
  dsSetViewpoint(xyz, hpr);
}

void setDrawStuff()
{
  fn.version = DS_VERSION;
  fn.start = &start;
  fn.step = &simLoop;
  fn.path_to_textures = "textures";
}

int main(int argc, char **argv)
{
  setDrawStuff();

  dInitODE();
  world = dWorldCreate();
  dWorldSetGravity(world, 0, 0, -9.81);

  space = dHashSpaceCreate(0);
  contactgroup = dJointGroupCreate(0);
  ground = dCreatePlane(space, 0, 0, 1, 0);
  createBallandPole();

  dsSimulationLoop(argc, argv, 640, 480, &fn);
  dSpaceDestroy(space);
  dWorldDestroy(world);
  dCloseODE();
  return 0;
}
