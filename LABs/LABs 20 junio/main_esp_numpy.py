#1. Importa el paquete NUMPY bajo el nombre np.

import numpy as np 

#2. Imprime la versión de NUMPY y la configuración.

print ( f"Version numpy: {np.version.version}" )
print ("Configuración: \n")
np.show_config()

#3. Genera un array tridimensional de 2x3x5 con valores aleatorios. Asigna el array a la variable "a"
# Desafío: hay al menos tres maneras fáciles que usan numpy para generar arrays aleatorios. ¿Cuántas formas puedes encontrar?

#arr = np.array(2,3)
#print("Array:", arr)

a=np.random.random((2,3,5)) 
#print(a)

a2=np.random.random_sample((2,3,5)) 
#print(a2)
#print(np.random.rand(3,4,2)) # matriz 3x4
a3=np.random.rand(2,3,5) 
#print(a3)

#4. Imprime a.

print ( f" Matriz a:\n{a}\n")

#5. Crea un array tridimensional de 5x2x3 con todos los valores igual a 1.
#Asigna el array a la variable "b"

b = np.ones((5,2,3))

#6. Imprime b.
print ( f" Matriz b:\n{b}\n")


#7. ¿Tienen a y b el mismo tamaño? ¿Cómo lo demuestras en código Python?


print(f"Tamaño a: {a.shape} tamaño b: {b.shape}, ¿tienen el mismo tamaño? {a.shape==b.shape}") 

#8. ¿Es posible sumar a y b? ¿Por qué sí o por qué no?

# No, para poder sumar dos matrices han de tener las mismas dimensiones, ya que se suman los elementos que estan en la misma posición. 


#9. Transpone b para que tenga la misma estructura que a (es decir, se convierta en un array de 2x3x5). Asigna el array transpuesto a la variable "c".

c = np.transpose(b,(1,2,0))



#10. Intenta sumar a y c. Ahora debería funcionar. Asigna la suma a la variable "d". Pero, ¿por qué funciona ahora?

d = a + c
# Funciona porque a y c tienen el mismo tamaño

print(f"Tamaño a: {a.shape} tamaño c: {c.shape}, ¿tienen el mismo tamaño? {a.shape==c.shape}") 


#11. Imprime a y d. ¿Notas la diferencia y la relación entre los dos arrays en términos de los valores? Explica.
print ( f" Matriz a:\n{a}\n\nMatriz d:\n{d}")

# La matriz d tiene como valores  la suma de 1 al valor correspondiente a la misma posicion en a

#12. Multiplica a y c. Asigna el resultado a e.

e = a*c
print ( f" Matriz e:\n{e}\n")

#13. ¿Es e igual a a? ¿Por qué sí o por qué no?

# Si son iguales porque e es el resultado de multiplicar los valores de a por 1, ya que c es una matriz de unos y por tanto hay un 1 en cada posicion correspondiente.


#14. Identifica los valores máximos, mínimos y medios en d. Asigna esos valores a las variables "d_max", "d_min" y "d_mean"

d_max=np.max(d)
d_min=np.min(d)
d_mean=np.mean(d)

print(f"El maximo valor en d es: {d_max}, el mínimo: {d_min} y la media: {d_mean}\n")

#15. Ahora queremos etiquetar los valores en d. Primero crea un array vacío "f" con la misma forma (es decir, 2x3x5) que d usando `np.empty`.

f = np.empty((2,3,5))

#print ( f" Matriz f:\n{f}\n")

"""
#16. Rellena los valores en f. Para cada valor en d, si es mayor que d_min pero menor que d_mean, asigna 25 al valor correspondiente en f.
Si un valor en d es mayor que d_mean pero menor que d_max, asigna 75 al valor correspondiente en f.
Si un valor es igual a d_mean, asigna 50 al valor correspondiente en f.
Asigna 0 al valor correspondiente(s) en f para d_min en d.
Asigna 100 al valor correspondiente(s) en f para d_max en d.
Al final, f debería tener solo los siguientes valores: 0, 25, 50, 75 y 100.
Nota: no necesitas usar Numpy en esta pregunta.
"""


f[np.logical_and(d>d_min, d<d_mean)]=25
f[np.logical_and(d>d_mean, d<d_max)]=75
f[d==d_mean]=50
f[d==d_min]=0
f[d==d_max]=100



"""
#17. Imprime d y f. ¿Tienes el f esperado?
Por ejemplo, si tu d es:
array([[[1.85836099, 1.67064465, 1.62576044, 1.40243961, 1.88454931],
        [1.75354326, 1.69403643, 1.36729252, 1.61415071, 1.12104981],
        [1.72201435, 1.1862918 , 1.87078449, 1.7726778 , 1.88180042]],

       [[1.44747908, 1.31673383, 1.02000951, 1.52218947, 1.97066381],
        [1.79129243, 1.74983003, 1.96028037, 1.85166831, 1.65450881],
        [1.18068344, 1.9587381 , 1.00656599, 1.93402165, 1.73514584]]])

Tu f debería ser:
array([[[ 75.,  75.,  75.,  25.,  75.],
        [ 75.,  75.,  25.,  25.,  25.],
        [ 75.,  25.,  75.,  75.,  75.]],

       [[ 25.,  25.,  25.,  25., 100.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  75.,   0.,  75.,  75.]]])
"""
print ( f" Matriz d:\n{d}\n")
print ( f" Matriz f:\n{f}\n")

# Si, es el f esperadp

"""
#18. Pregunta de bonificación: en lugar de usar números (es decir, 0, 25, 50, 75 y 100), ¿cómo usar valores de cadena 
("A", "B", "C", "D" y "E") para etiquetar los elementos del array? Esperas el resultado sea:
array([[[ 'D',  'D',  'D',  'B',  'D'],
        [ 'D',  'D',  'B',  'B',  'B'],
        [ 'D',  'B',  'D',  'D',  'D']],

       [[ 'B',  'B',  'B',  'B',  'E'],
        [ 'D',  'D',  'D',  'D',  'D'],
        [ 'B',  'D',   'A',  'D', 'D']]])
De nuevo, no necesitas Numpy en esta pregunta.
"""

g = np.empty((2,3,5),dtype=str)

g[np.logical_and(d>d_min, d<d_mean)]="A"
g[np.logical_and(d>d_mean, d<d_max)]="B"
g[d==d_mean]="C"
g[d==d_min]="D"
g[d==d_max]="E"

print ( f" Matriz g:\n{g}\n")
