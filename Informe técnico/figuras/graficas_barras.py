#!/usr/bin/python
# coding: latin-1

import numpy as np
import matplotlib.pyplot as plt

N = 3
ind = np.arange(N)  # the x locations for the groups
width = 0.17       # the width of the bars

fig = plt.figure()
ax = fig.add_subplot(111)

rippleVals = [3.325, 6.01, 11.5]
rects1 = ax.bar(ind, rippleVals, width, color='r')
bkungVals = [1.95,4.1,6.9]
rects2 = ax.bar(ind+width, bkungVals, width, color='g')
sklanskyVals = [1.4,3.1,5.2]
rects3 = ax.bar(ind+width*2, sklanskyVals, width, color='b')

ax.set_ylabel('Performance')
ax.set_xticks(ind+width)
ax.set_xticklabels( ('8 bits', '16 bits', '32 bits') )
ax.legend( (rects1[0], rects2[0], rects3[0]), ('Ripple Carry', 'Brent-Kung', 'Sklansky') )

def autolabel(rects):
    for rect in rects:
        h = rect.get_height()
        ax.text(rect.get_x()+rect.get_width()/2., 1.05*h, '%d'%int(h),
                ha='center', va='bottom')

autolabel(rects1)
autolabel(rects2)
autolabel(rects3)

plt.show()
