#!/usr/bin/python
# coding: latin-1
# La segunda línea (# coding: latin-1) es necesaria para poder usar acentos y ñ. Para entender el porqué, visitar:
# http://www.python.org/dev/peps/pep-0263/
"""
Simple demo with multiple subplots.
"""
from numpy import * 
#import pylab
import sys
import matplotlib.pyplot as plt 

# Primero cargo el resultado de la simulación en un arreglo:
filename_str = sys.argv[1]
data = genfromtxt(filename_str, skip_header=0,unpack=True)

# http://matplotlib.sourceforge.net/api/figure_api.html#module-matplotlib.figure 
print sys.argv[1]
print "El archivo que contiene los datos a graficar es ", filename_str


# Two subplots, the axes array is 1-d
f, eje = plt.subplots(2, sharex=True)

eje[0].plot(data[0],data[1])
eje[0].set_title('V(out) y Corriente de la fuente')
eje[1].plot(data[0],data[2])


#
y1 = data[1]
y2 = data[2]

x1 = data[0]
x2 = data[0]
'''
plt.subplot(2, 1, 1)
plt.plot(x1, y1 )
plt.title('2 subplots')
plt.ylabel('Voltage')

plt.subplot(2, 1, 2)
plt.plot(x2, y2, )
plt.xlabel('time (s)')
plt.ylabel('Corriente Total')
'''
plt.show()
