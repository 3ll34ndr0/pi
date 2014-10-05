#!/usr/bin/python
# coding: latin-1
# La segunda línea (# coding: latin-1) es necesaria para poder usar acentos y ñ. Para entender el porqué, visitar:
# http://www.python.org/dev/peps/pep-0263/
from numpy import * 
#import pylab
import matplotlib.pyplot as plt # Primero cargo el resultado de la simulación en un arreglo:
data = genfromtxt('rippleCarry8_14ns.out', unpack=True)

# http://matplotlib.sourceforge.net/api/figure_api.html#module-matplotlib.figure 

nob = 8
totalPlots = nob+2
###########################
# nob subplots sharing both x/y axes
f, eje = plt.subplots(totalPlots, sharex=True, sharey=False)

eje[0].plot(data[0], data[1])
eje[0].set_ylabel('a0')
eje[0].set_title('Ripple Carry Adder 8 bits')

for i in range(1,totalPlots):
   eje[i].plot(data[0], data[i+1])
   eje[i].set_ylabel("s"+str(i-1))

#ax10.plot(data[0], data[10])
eje[totalPlots-1].set_ylabel('cout')



# Fine-tune figure; make subplots close to each other and hide x ticks for
# all but bottom plot.
f.subplots_adjust(hspace=0)
plt.setp([a.get_xticklabels() for a in f.axes[:-1]], visible=False)

# Escondo los ticks de todos los ejes Y:
plt.setp([a.get_yticklabels() for a in f.axes[:]], visible=False)

plt.show()



# Con este comando aparece la ventana con los gráficos
plt.show()
#plt.plot(data[0],fase)
#plt.show()
