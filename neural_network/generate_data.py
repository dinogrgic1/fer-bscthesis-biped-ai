from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_squared_error
from keras.models import Sequential
from keras.layers import Activation
from keras.layers import Dense
from keras.models import load_model
from keras.callbacks import ModelCheckpoint
from numpy import asarray
import matplotlib.pyplot as plt

TITLE = 'walk'
GRAPH_DATA = f'../data/hoap2/{TITLE}.csv'

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

csv_header = ['rleg1', 'rleg2', 'rleg3', 'rleg4', 'rleg5', 'rleg6', 'rarm1', 'rarm2', 'rarm3', 'rarm4',
               'lleg1', 'lleg2', 'lleg3', 'lleg4', 'lleg5', 'lleg6', 'larm1', 'larm2', 'larm3', 'larm4', 'body']

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

    epoch = 500
    joints = ['lleg3', 'lleg4', 'lleg5', 'lleg6', 'larm1', 'larm2',
            'rleg3', 'rleg4', 'rleg5', 'rleg6', 'rarm1', 'rarm2']
    data = {'lleg1': lleg1_angle, 'lleg2': lleg2_angle, 
            'rleg1': lleg1_angle, 'rleg2': lleg2_angle,
            'larm3': larm3_angle, 'larm4': larm4_angle, 
            'rarm3': rarm3_angle, 'rarm4' : rarm4_angle, 'body' : body_angle}

    for joint in joints:
        arr = []
        if joint == 'larm1':
            arr = larm1_angle
        elif joint == 'larm2':
            arr = larm2_angle
        elif joint == 'lleg3':
            arr = lleg3_angle
        elif joint == 'rarm1':
            arr = rarm1_angle
        elif joint == 'rarm2':
            arr = rarm2_angle
        elif joint == 'rleg3':
            arr = rleg3_angle
        elif joint == 'lleg4':
            arr = lleg4_angle
        elif joint == 'lleg5':
            arr = lleg5_angle
        elif joint == 'lleg6':
            arr = lleg6_angle
        elif joint == 'rleg4':
            arr = rleg4_angle
        elif joint == 'rleg5':
            arr = rleg5_angle
        elif joint == 'rleg6':
            arr = rleg6_angle

        #path = f'models/150_50_25_25_cycleStart/{joint}/saved-model'
        path = f'models/150_50_25_25_1/{joint}/saved-model-500'
        model_load = load_model(path)

        x = asarray([i for i in range(0,len(arr))])
        y = asarray(arr)
    
        x = x.reshape((len(x), 1))
        y = y.reshape((len(y), 1))

        scale_x = MinMaxScaler()
        x = scale_x.fit_transform(x)
        scale_y = MinMaxScaler()
        y = scale_y.fit_transform(y)
        
        ywhat = model_load.predict(x)
    
        yhat_plot = scale_y.inverse_transform(ywhat)

        data[joint] = [int(i[0]) for i in yhat_plot.tolist()]

        fig, axs = plt.subplots(1)
        fig.set_size_inches(10, 6, forward=True)   
        x = [i / 1000 for i in range (0, len(arr))]
        arr = [i / 260 for i in arr] 
        axs.plot(x, arr, 'b')
        axs.set_title(joint)
        yhat_plot = [i[0] / 260 for i in yhat_plot]
        axs.plot(x, yhat_plot, 'r')
        
        plt.savefig(f'{path}.png')
        plt.show()

    f = open(f"../data/hoap2/{TITLE}_best.csv", "w")
    for i in range(0, len(body_angle)):
        row = []
        for joint in csv_header:
            row.append(str(data[joint][i]))
        f.write(','.join(row))
        f.write('\n')
    f.close()