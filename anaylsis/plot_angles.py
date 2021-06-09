import matplotlib.pyplot as plt

GRAPH_DATA = '../data/hoap2/walk.csv'

RLEG1_JOINT = 0
RLEG2_JOINT = 1
RLEG3_JOINT = 2
RLEG4_JOINT = 3
RLEG5_JOINT = 4
RLEG6_JOINT = 5
RARM1_JOINT = 6
RARM2_JOINT = 7
RARM3_JOINT = 8
RARM4_JOINT = 9

LLEG1_JOINT = 10
LLEG2_JOINT = 11
LLEG3_JOINT = 12
LLEG4_JOINT = 13
LLEG5_JOINT = 14
LLEG6_JOINT = 15
LARM1_JOINT = 16
LARM2_JOINT = 17
LARM3_JOINT = 18
LARM4_JOINT = 19

BODY_JOINT = 20

rleg1_angle = []
rleg2_angle = []
rleg3_angle = []
rleg4_angle = []
rleg5_angle = []
rleg6_angle = []

rarm1_angle = []
rarm2_angle = []
rarm3_angle = []
rarm4_angle = []

lleg1_angle = []
lleg2_angle = []
lleg3_angle = []
lleg4_angle = []
lleg5_angle = []
lleg6_angle = []

larm1_angle = []
larm2_angle = []
larm3_angle = []
larm4_angle = []
body_angle = []


if __name__ == '__main__':
    with open(GRAPH_DATA) as f:
        lines = f.readlines()
        for entry in lines:
            e = entry.split(',')
            rleg1_angle.append(int(e[RLEG1_JOINT]))
            rleg2_angle.append(int(e[RLEG2_JOINT]))
            rleg3_angle.append(int(e[RLEG3_JOINT]))
            rleg4_angle.append(int(e[RLEG4_JOINT]))
            rleg5_angle.append(int(e[RLEG5_JOINT]))
            rleg6_angle.append(int(e[RLEG6_JOINT]))
            
            rarm1_angle.append(int(e[RARM1_JOINT]))
            rarm2_angle.append(int(e[RARM2_JOINT]))
            rarm3_angle.append(int(e[RARM3_JOINT]))
            rarm4_angle.append(int(e[RARM4_JOINT]))

            lleg1_angle.append(int(e[LLEG1_JOINT]))
            lleg2_angle.append(int(e[LLEG2_JOINT]))
            lleg3_angle.append(int(e[LLEG3_JOINT]))
            lleg4_angle.append(int(e[LLEG4_JOINT]))
            lleg5_angle.append(int(e[LLEG5_JOINT]))
            lleg6_angle.append(int(e[LLEG6_JOINT]))
            
            larm1_angle.append(int(e[LARM1_JOINT]))
            larm2_angle.append(int(e[LARM2_JOINT]))
            larm3_angle.append(int(e[LARM3_JOINT]))
            larm4_angle.append(int(e[LARM4_JOINT]))
            body_angle.append(int(e[BODY_JOINT]))
    

    # # RIGHT LEG GRAPHS
    # fig, axs = plt.subplots(4)
    # fig.set_size_inches(15, 8, forward=True)
    # fig.canvas.manager.set_window_title('Right leg')
    
    # axs[0].plot(rleg3_angle, 'b')
    # axs[0].set_title('rleg3')
    
    # axs[1].plot(rleg4_angle, 'b')
    # axs[1].set_title('rleg4')
     
    # axs[2].plot(rleg5_angle, 'b')
    # axs[2].set_title('rleg5')
     
    # axs[3].plot(rleg6_angle, 'b')
    # axs[3].set_title('rleg6')

    # for ax in axs.flat:
    #     ax.label_outer()


    # # RIGHT ARM GRAPHS
    # plt.figure(1)
    # fig, axs = plt.subplots(2)
    # fig.set_size_inches(15, 8, forward=True)
    # fig.canvas.manager.set_window_title('Right arm')
    # axs[0].plot(rarm1_angle, 'b')
    # axs[0].set_title('rarm1')
    
    # axs[1].plot(rarm2_angle, 'b')
    # axs[1].set_title('rarm2')

    # for ax in axs.flat:
    #     ax.label_outer()

    # # LEFT LEG GRAPHS
    # plt.figure(2)
    # fig, axs = plt.subplots(4)
    # fig.set_size_inches(15, 8, forward=True)
    # fig.canvas.manager.set_window_title('Left leg')

    # axs[0].plot(lleg3_angle, 'r')
    # axs[0].set_title('lleg3')
    
    # axs[1].plot(lleg4_angle, 'r')
    # axs[1].set_title('lleg4')
     
    # axs[2].plot(lleg5_angle, 'r')
    # axs[2].set_title('lleg5')
     
    # axs[3].plot(lleg6_angle, 'r')
    # axs[3].set_title('lleg6')

    # for ax in axs.flat:
    #     ax.label_outer()

    # # LEFT ARM GRAPHS
    # plt.figure(3)
    # fig, axs = plt.subplots(2)
    # fig.set_size_inches(15, 8, forward=True)
    # fig.canvas.manager.set_window_title('Left arm')
    
    # axs[0].plot(larm1_angle, 'r')
    # axs[0].set_title('larm1')

    # axs[1].plot(larm2_angle, 'r')
    # axs[1].set_title('larm2')

    # for ax in axs.flat:
    #     ax.label_outer()


    # LEFT AND RIGHT LEG GRAPHS
    plt.figure(4)
    fig, axs = plt.subplots(4)
    fig.set_size_inches(15, 8, forward=True)
    fig.canvas.manager.set_window_title('Left and right leg')
    
    axs[0].plot(lleg3_angle, 'r')
    axs[0].plot(rleg3_angle, 'b')
    axs[0].set_title('l/r leg3')
    
    axs[1].plot(lleg4_angle, 'r')
    axs[1].plot(rleg4_angle, 'b')
    axs[1].set_title('l/r leg4')
     
    axs[2].plot(lleg5_angle, 'r')
    axs[2].plot(rleg5_angle, 'b')
    axs[2].set_title('l/r leg5')
     
    axs[3].plot(lleg6_angle, 'r')
    axs[3].plot(rleg6_angle, 'b')
    axs[3].set_title('l/r leg6')

    for ax in axs.flat:
        ax.label_outer()

    # LEFT AND RIGHT ARM GRAPHS
    plt.figure(5)
    fig, axs = plt.subplots(2)
    fig.set_size_inches(15, 8, forward=True)
    fig.canvas.manager.set_window_title('Left and right arm')
    
    axs[0].plot(larm1_angle, 'r')
    #axs[0].plot(rarm1_angle, 'b')
    axs[0].set_title('larm1')

    axs[1].plot([i + 2 * (abs(larm1_angle[0]) + abs(rarm2_angle[0])) for i in larm2_angle], 'r')
    axs[1].plot(rarm2_angle, 'b')
    axs[1].set_title('larm2')

    for ax in axs.flat:
        ax.label_outer()

    plt.show()
