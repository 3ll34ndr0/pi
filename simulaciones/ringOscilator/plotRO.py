#!/usr/bin/python
# coding: latin-1
# La segunda línea (# coding: latin-1) es necesaria para poder usar acentos y ñ. Para entender el porqué, visitar:
# http://www.python.org/dev/peps/pep-0263/
from numpy import * 
#import pylab
import sys
import matplotlib.pyplot as plt # Primero cargo el resultado de la simulación en un arreglo:
filename_str = sys.argv[1]
data = genfromtxt(filename_str, skip_header=0,unpack=True)

# http://matplotlib.sourceforge.net/api/figure_api.html#module-matplotlib.figure 
print sys.argv[1],len(data)
#nob_str = raw_input('Ingresa cantidad señales a graficar: ')
#nob = int(nob_str)
nob = len(data)
###########################
# nob subplots sharing both x/y axes
f, eje = plt.subplots(nob, sharex=True, sharey=False)
print len(eje)

if nob == 2:
	#repito la única señal porque sino no queda vacio el primer eje:
	eje[0].plot(data[0],data[1])

# Comienzo a graficar a partir 2 elemento:
for i in range(1,len(eje)):
	eje[i].plot(data[0], data[i])

#   		eje[i].set_ylabel("out"+str(i))
#eje[0].set_title("Ring Oscilator 31 stages")



# Fine-tune figure; make subplots close to each other and hide x ticks for
# all but bottom plot.
f.subplots_adjust(hspace=0)
plt.setp([a.get_xticklabels() for a in f.axes[:-1]], visible=False)

# Escondo los ticks de todos los ejes Y:
plt.setp([a.get_yticklabels() for a in f.axes[:]], visible=False)

# Con este comando aparece la ventana con los gráficos
plt.show()
