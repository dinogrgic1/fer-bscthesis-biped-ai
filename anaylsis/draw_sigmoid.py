import matplotlib.pyplot as plt
import numpy as np

left_force = []
right_force = []
sum_force = []
time = []

if __name__ == '__main__':
    fig, axs = plt.subplots(1, 2)
    fig.set_size_inches(18, 6, forward=True)

    x = [i/100 for i in range(-500, 500)]
    y = np.tanh(np.linspace(-5, 5, 1000))
    axs[0].plot(x, y, 'b')
    axs[0].set_title('tanh')
    axs[0].set_ylim(-1.2, 1.2)
    axs[0].set_xlim(-5.5, 5.5)

    y = [1/(1 + np.exp(-i)) for i in x]
    axs[1].plot(x, y, 'g')
    axs[1].set_title('sigmoid')
    axs[1].set_ylim(-1.2, 1.2)
    axs[1].set_xlim(-5.5, 5.5)

    plt.savefig('activationFunctions.png')
    plt.show()
