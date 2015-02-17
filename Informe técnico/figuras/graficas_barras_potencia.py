#!/usr/bin/python
# coding: latin-1

import numpy as np
import matplotlib.pyplot as plt

N = 3
ind = np.arange(N)  # the x locations for the groups
width = 0.17       # the width of the bars

fig = plt.figure()
ax = fig.add_subplot(111)

rippleVals = [838.27, 1033.07, 1033.07]
rects1 = ax.bar(ind, rippleVals, width, color='r')
bkungVals = [1095.91,1651.95,2049.86]
rects2 = ax.bar(ind+width, bkungVals, width, color='g')
sklanskyVals = [2330.71,2411.29,3237.50]
rects3 = ax.bar(ind+width*2, sklanskyVals, width, color='b')

ax.set_ylabel('Potencia [uW]')
ax.set_xticks(ind+width)
ax.set_xticklabels( ('8 bits', '16 bits', '32 bits') )
ax.legend( (rects1[0], rects2[0], rects3[0]), ('Ripple Carry', 'Brent-Kung', 'Sklansky') )

def autolabel(rects):
    for rect in rects:
        h = rect.get_height()
        ax.text(rect.get_x()+rect.get_width()/2., 1.05*h, '%d'%int(h),
                ha='center', va='bottom')

#autolabel(rects1)
#autolabel(rects2)
#autolabel(rects3)

plt.show()
