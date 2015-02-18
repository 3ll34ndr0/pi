#!/usr/bin/python
# coding: latin-1
# La segunda línea (# coding: latin-1) es necesaria para poder usar acentos y ñ. 
from numpy import * 
import sys
import matplotlib.pyplot as plt 
# Primero cargo el resultado de la simulación en un arreglo:
filename_str = sys.argv[1]
data = genfromtxt(filename_str, skip_header=0,unpack=True)

print sys.argv[1] # Imprimo el nombre del archivo a graficar.
totalPlots = len(data)
###########################
# totalPlots compartiendo los ejes x/y.
f, eje = plt.subplots(totalPlots, sharex=True, sharey=False)

# Comienzo las etiquetas del resultado a partir del 2do. elemento:
for i in range(1,len(eje)):
   eje[i].plot(data[0], data[i])
   eje[i].set_ylabel("s"+str(i))

# Escribo la primera etiqueta:
#eje[0].plot(data[0], data[1])
#eje[0].set_ylabel('a0')
#eje[0].set_title(filename_str )

# Escribo la segunda etiqueta:
#eje[1].plot(data[0], data[2])
#eje[1].set_ylabel('cout')
#Los nombres de las etiquetas son arbitrarios, pero el orden depende de como se hayan guardado en la simulacion.

# Mejoro un poco la figura; acerco los sub graficos uno a otro y escondo los ticks
# en x para todo el grafico de abajo.
f.subplots_adjust(hspace=0)
plt.setp([a.get_xticklabels() for a in f.axes[:-1]], visible=False)

# Escondo los ticks de todos los ejes Y:
plt.setp([a.get_yticklabels() for a in f.axes[:]], visible=False)

# Con este comando aparece la ventana con los gráficos
plt.show()
