import matplotlib.pyplot as plt

GRAPH_DATA = 'force.txt'
TICK = 50

left_force = []
right_force = []
sum_force = []
time = []

if __name__ == '__main__':
    with open(GRAPH_DATA) as f:
        lines = f.readlines()

        elapsed = 0.0
        for entry in lines[0][:-1].split(','):
            e = entry.split(';')
            left_force.append(float(e[0]))
            right_force.append(float(e[1]))
            sum_force.append(float(e[0]) + float(e[1]))

            time.append(elapsed)
            elapsed += (TICK / 1000)
    
    fig, axs = plt.subplots(3)
    fig.set_size_inches(10, 6, forward=True)
    
    axs[0].plot(time, left_force, 'tab:blue')
    axs[0].set_title('lijeva noga - pristina sila')
    
    axs[1].plot(time, right_force, 'tab:blue')
    axs[1].set_title('desna noga - pritisna sila')

    axs[2].plot(time, sum_force, 'tab:green')
    axs[2].set_title('suma sila')

    # Hide x labels and tick labels for top plots and y ticks for right plots.
    for ax in axs.flat:
        ax.set(xlabel='vrijeme \ [s]', ylabel='sila \ [N]')
        ax.label_outer()

    plt.savefig('walkCycleForce.png')
    plt.show()
