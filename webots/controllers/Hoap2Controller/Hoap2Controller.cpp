// File:          Hoap2Controller.cpp

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>

#include <webots/Emitter.hpp>
#include <webots/Motor.hpp>
#include <webots/PositionSensor.hpp>
#include <webots/Robot.hpp>
#include <webots/Device.hpp>
#include <webots/TouchSensor.hpp>


#define CONTROL_STEP 50

using namespace webots;

enum class Joints : int
{
  body_joint_1,
  lleg_joint_1,
  lleg_joint_3,
  lleg_joint_2,
  lleg_joint_4,
  lleg_joint_5,
  lleg_joint_6,
  rleg_joint_1,
  rleg_joint_3,
  rleg_joint_2,
  rleg_joint_4,
  rleg_joint_5,
  rleg_joint_6,
  larm_joint_1,
  larm_joint_2,
  larm_joint_3,
  larm_joint_4,
  larm_joint_5,
  rarm_joint_1,
  rarm_joint_2,
  rarm_joint_3,
  rarm_joint_4,
  rarm_joint_5,
  head_joint_2,
  head_joint_1
};

static std::vector<double> motorPosition(25, 0.0);
static std::vector<double> nextPosition(25, 0.0);

static std::vector<Motor *> joint(25);
static std::vector<PositionSensor *> jointSensors(25);
static std::map<Joints, const char *> joints{
    {Joints::body_joint_1, "body_joint_1"},
    {Joints::lleg_joint_1, "lleg_joint_1"},
    {Joints::lleg_joint_3, "lleg_joint_3"},
    {Joints::lleg_joint_2, "lleg_joint_2"},
    {Joints::lleg_joint_4, "lleg_joint_4"},
    {Joints::lleg_joint_5, "lleg_joint_5"},
    {Joints::lleg_joint_6, "lleg_joint_6"},

    {Joints::rleg_joint_1, "rleg_joint_1"},
    {Joints::rleg_joint_3, "rleg_joint_3"},
    {Joints::rleg_joint_2, "rleg_joint_2"},
    {Joints::rleg_joint_4, "rleg_joint_4"},
    {Joints::rleg_joint_5, "rleg_joint_5"},
    {Joints::rleg_joint_6, "rleg_joint_6"},

    {Joints::larm_joint_1, "larm_joint_1"},
    {Joints::larm_joint_2, "larm_joint_2"},
    {Joints::larm_joint_3, "larm_joint_3"},
    {Joints::larm_joint_4, "larm_joint_4"},
    {Joints::larm_joint_5, "larm_joint_5"},

    {Joints::rarm_joint_1, "rarm_joint_1"},
    {Joints::rarm_joint_2, "rarm_joint_2"},
    {Joints::rarm_joint_3, "rarm_joint_3"},
    {Joints::rarm_joint_4, "rarm_joint_4"},
    {Joints::rarm_joint_5, "rarm_joint_5"},

    {Joints::head_joint_2, "head_joint_2"},
    {Joints::head_joint_1, "head_joint_1"}};

int main(int argc, char **argv)
{
  Robot *robot = new Robot();
  for (int i = 0; i < 25; i++)
  {
    joint[i] = robot->getMotor(joints[static_cast<Joints>(i)]);
    jointSensors[i] = joint[i]->getPositionSensor();
    jointSensors[i]->enable(CONTROL_STEP);
  }

  // open files for read and write
  const char *filename = argv[1];
  FILE *filesMotionCsv = fopen(filename, "r");
  if (!filesMotionCsv)
  {
    printf("[IO] Unable to locate file for read: %s\n", filename);
    fclose(filesMotionCsv);
    return 1;
  }

  char motion[500];
  char *ptr = fgets(motion, 500, filesMotionCsv);
  if (!ptr)
  {
    fprintf(stderr, "[IO] Error while reading the %s file\n", filename);
    fclose(filesMotionCsv);
    return 1;
  }

  FILE *fileGraph = fopen("force.txt", "w");
  if (!fileGraph)
  {
    printf("[IO] Unable to open file for writing: %s\n", "force.txt");
    fclose(fileGraph);
    return 1;
  }

  int sampling = 1;
  std::vector<int> pulse = {209, 209, 209, 209, -209, -209, -209, 209, -209, 209, 209, 209, -209, -209, 209, -209, 209, 0, 209, 209, -209, -209, 0, 0, 0};
  std::vector<int> tempMotor(25, 0);

  // fingers
  tempMotor[(int)Joints::larm_joint_5] = 0;
  tempMotor[(int)Joints::rarm_joint_5] = 0;

  nextPosition[(int)Joints::larm_joint_5] = 0.0;
  nextPosition[(int)Joints::rarm_joint_5] = 0.0;

  TouchSensor *leftTouch = robot->getTouchSensor("left touch");
  TouchSensor *rightTouch = robot->getTouchSensor("right touch");
  leftTouch->enable(CONTROL_STEP);
  rightTouch->enable(CONTROL_STEP);

  sscanf(motion,
         "%d, %d, %d, %d ,%d, %d, %d, %d, %d, %d, %d, %d, %d, "
         "%d, %d, %d, %d, %d, %d, %d, %d",
         &tempMotor[(int)Joints::rleg_joint_1], &tempMotor[(int)Joints::rleg_joint_2], &tempMotor[(int)Joints::rleg_joint_3], &tempMotor[(int)Joints::rleg_joint_4], &tempMotor[(int)Joints::rleg_joint_5], &tempMotor[(int)Joints::rleg_joint_6], 
         &tempMotor[(int)Joints::rarm_joint_1], &tempMotor[(int)Joints::rarm_joint_2], &tempMotor[(int)Joints::rarm_joint_3], &tempMotor[(int)Joints::rarm_joint_4], 
         &tempMotor[(int)Joints::lleg_joint_1], &tempMotor[(int)Joints::lleg_joint_2], &tempMotor[(int)Joints::lleg_joint_3], &tempMotor[(int)Joints::lleg_joint_4], &tempMotor[(int)Joints::lleg_joint_5], &tempMotor[(int)Joints::lleg_joint_6],
         &tempMotor[(int)Joints::larm_joint_1], &tempMotor[(int)Joints::larm_joint_2], &tempMotor[(int)Joints::larm_joint_3], &tempMotor[(int)Joints::larm_joint_4],
         &tempMotor[(int)Joints::body_joint_1]);

  for (int i = 0; i < 23; i++)
    motorPosition[i] = tempMotor[i] * (M_PI / 180.0) / pulse[i];

  motorPosition[(int)Joints::larm_joint_5] = 0.0;
  motorPosition[(int)Joints::rarm_joint_5] = 0.0;

  printf("Init robot walk...\n");
  robot->step(50 * CONTROL_STEP);

  for (int i = 0; i < 25; i++)
    nextPosition[i] = jointSensors[i]->getValue();

  bool fileEnded = false;
  int comInterval = CONTROL_STEP / sampling;
  std::vector<int> posFromCsv(22);
  printf("Walk started.\n");

  while (!fileEnded)
  {
    for (int i = 0; i < comInterval && !fileEnded; i++)
    {
      if (fgets(motion, 500, filesMotionCsv) == NULL)
      {
        printf("End of file reached.\n");
        fclose(filesMotionCsv);
        fileEnded = true;
        for (int j = 0; j < 25; j++)
          nextPosition[j] = jointSensors[j]->getValue();
      }
    }

    if (!fileEnded)
    {
      // read data for next positions from CSV
      sscanf(motion,
             "%*d, %d, %d, %d, %d ,%d, %d, %d, %d, %d,"
             " %d, %d, %d, %d, %d, %d, %d, %d, %d, %d,"
             " %d, %d",
             &posFromCsv[(int)Joints::rleg_joint_1], &posFromCsv[(int)Joints::rleg_joint_2], &posFromCsv[(int)Joints::rleg_joint_3],
             &posFromCsv[(int)Joints::rleg_joint_4], &posFromCsv[(int)Joints::rleg_joint_5], &posFromCsv[(int)Joints::rleg_joint_6],
             &posFromCsv[(int)Joints::rarm_joint_1], &posFromCsv[(int)Joints::rarm_joint_2], &posFromCsv[(int)Joints::rarm_joint_3],
             &posFromCsv[(int)Joints::rarm_joint_4], &posFromCsv[(int)Joints::lleg_joint_1], &posFromCsv[(int)Joints::lleg_joint_2],
             &posFromCsv[(int)Joints::lleg_joint_3], &posFromCsv[(int)Joints::lleg_joint_4], &posFromCsv[(int)Joints::lleg_joint_5],
             &posFromCsv[(int)Joints::lleg_joint_6], &posFromCsv[(int)Joints::larm_joint_1], &posFromCsv[(int)Joints::larm_joint_2],
             &posFromCsv[(int)Joints::larm_joint_3], &posFromCsv[(int)Joints::larm_joint_4], &posFromCsv[(int)Joints::body_joint_1]);

      //  write next position convert angles to radians
      for (int i = 0; i < 22; i++)
        nextPosition[i] = posFromCsv[i] * (M_PI / 180.0) / pulse[i];
    }

    // set joint positions
    joint[(int)Joints::body_joint_1]->setPosition(nextPosition[(int)Joints::body_joint_1]);
    joint[(int)Joints::lleg_joint_1]->setPosition(nextPosition[(int)Joints::lleg_joint_1]);
    joint[(int)Joints::lleg_joint_2]->setPosition(nextPosition[(int)Joints::lleg_joint_2]);
    joint[(int)Joints::lleg_joint_3]->setPosition(nextPosition[(int)Joints::lleg_joint_3]);
    joint[(int)Joints::lleg_joint_4]->setPosition(nextPosition[(int)Joints::lleg_joint_4]);
    joint[(int)Joints::lleg_joint_5]->setPosition(nextPosition[(int)Joints::lleg_joint_5]);
    joint[(int)Joints::lleg_joint_6]->setPosition(nextPosition[(int)Joints::lleg_joint_6]);
    joint[(int)Joints::rleg_joint_1]->setPosition(nextPosition[(int)Joints::rleg_joint_1]);
    joint[(int)Joints::rleg_joint_2]->setPosition(nextPosition[(int)Joints::rleg_joint_2]);
    joint[(int)Joints::rleg_joint_3]->setPosition(nextPosition[(int)Joints::rleg_joint_3]);
    joint[(int)Joints::rleg_joint_4]->setPosition(nextPosition[(int)Joints::rleg_joint_4]);
    joint[(int)Joints::rleg_joint_5]->setPosition(nextPosition[(int)Joints::rleg_joint_5]);
    joint[(int)Joints::rleg_joint_6]->setPosition(nextPosition[(int)Joints::rleg_joint_6]);
    joint[(int)Joints::larm_joint_1]->setPosition(nextPosition[(int)Joints::larm_joint_1]);
    joint[(int)Joints::larm_joint_2]->setPosition(nextPosition[(int)Joints::larm_joint_2]);
    joint[(int)Joints::larm_joint_3]->setPosition(nextPosition[(int)Joints::larm_joint_3]);
    joint[(int)Joints::larm_joint_4]->setPosition(nextPosition[(int)Joints::larm_joint_4]);
    joint[(int)Joints::rarm_joint_1]->setPosition(nextPosition[(int)Joints::rarm_joint_1]);
    joint[(int)Joints::rarm_joint_2]->setPosition(nextPosition[(int)Joints::rarm_joint_2]);
    joint[(int)Joints::rarm_joint_3]->setPosition(nextPosition[(int)Joints::rarm_joint_3]);
    joint[(int)Joints::rarm_joint_4]->setPosition(nextPosition[(int)Joints::rarm_joint_4]);

    robot->step(CONTROL_STEP);

    // write force data for plotting
    fprintf(fileGraph, "%8.5f;%8.5f,", leftTouch->getValue(), rightTouch->getValue());
  }

  printf("Ending walk motion.\n");
  fclose(fileGraph);
  
  return 0;
}
