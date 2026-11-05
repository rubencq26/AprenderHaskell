# Listas

lista = [1,2,3,4]

suma :: [Integer] -> Integer 
suma :: (Num a) => [a] -> a

En realidad, una lista es una estructura recursiva con 2 elementos: 

- El primer elemento de la lista. 

- Otra lista con el resto de la lista original. 

```haskell
lista = [1,2,3,4] 
lista = 1:[2,3,4] 
lista = 1:2:[3,4] 
lista = 1:2:3:[4] 
lista = 1:2:3:4:[]
```

### Operador Cons (:)

Permite crear una nueva lista indicando el primer elemento y el resto de la lista:

```haskell
lista = 1:[2,3,4] -- resultado: [1,2,3,4] 
lista = 1:[] -- resultado: [1] 
texto = 'U':"n gato negro" -- resultado: "Un gato negro" 
let (primero:resto) = [1,2,3,4,5] 
print primero -- resultado: 1 
print resto   -- resultado: [2,3,4,5]
```

### Operador Concatenación (++)

Permite unir 2 listas para crea una nueva lista:

```haskell
lista = [1,2] ++ [3,4] -- resultado: [1,2,3,4] 
lista = [1,2] ++ [3] -- resultado: [1,2,3] 
--¡Ojo! lista = [1,2] ++ 3 -- ¡¡¡ ERROR !!! 
lista = [1,2] ++ [] -- resultado: [1,2] 
"hola" ++ " " ++ "mundo" -- resultado: "hola mundo" 
['h','o'] ++ ['l','a'] -- resultado: "hola"
```

### Operador Índice (!!)

Permite acceder a un elemento concreto de una lista, teniendo en cuenta que los índices comienzan en 0:

```haskell
lista = [10,20,30,40] 
lista !! 0 -- resultado: 10 
lista !! 2 -- resultado: 30 
lista !! 9 -- ¡¡¡ ERROR !!! 
"hola" !! 3 -- resultado: 'a'
```

### Listas de Listas

Las listas pueden contener como elementos a otras listas:

```haskell
lista_de_listas = [ [1,2], [3,4], [5,6] ] 
lista_de_listas = [1,2] : [[3,4],[5,6]] 
(lista_de_listas !! 2) !! 0 -- resultado: 5
```

### Listas de funciones

Las listas pueden contener como elementos a funciones:

```haskell
suma1 :: Integer -> Integer 
suma1 x = x + 1 

doble :: Integer -> Integer 
doble x = x * 2 

funciones :: [Integer -> Integer] 
funciones = [suma1, doble] 

(funciones !! 0) 5  -- resultado: 6 

(funciones !! 1) 10 -- resultado: 20
```

## Rangos

### Definir Listas con Rangos

- Si el tipo de dato implementa Enum, se pueden definir las listas mediante rangos (ej. Integer o Char).

- Un rango se define indicando sólo el primer elemento y el último elemento separados por “punto y punto” (..).

- Por defecto, el salto entre elementos será de 1 unidad positiva.

```haskell
enteros = [1,2,3,4,5]
enteros = [1..5]
abecedario = ['a'..'z'] -- resultado: ['a','b','c',…,'z']
reales = [1.0 .. 3.0] -- resultado: [1.0, 2.0, 3.0]
```

### Rangos con Saltos

Se se indica también el segundo elemento, se definirá el salto como la diferencia entre este y el primer elemento.

```haskell
salto2 = [1,3..15] -- resultado: [1,3,5,7,9,11,15]
salto5 = [10,15..30] -- resultado: [10,15,20,25,30]
[0.1, 0.2 .. 1.0] -- ¡puede generar 0.300000000004!
cuenta_atras = [10,9..0]
¡Ojo! [10..0] ¡¡¡ ERROR !!!
```

## Listas Intensionales

### Definicion Intensional de Listas

Para definir los números pares desde el 2 hasta 20 podemos hacerlo de 2 formas.

La primera es por extensión, indicando todos los elementos:

```haskell
[2,4,6,8,10,12,14,16,18,20]
```

La segunda es por intensión, indicando las propiedades o condiciones que cumplen dichos números:

```haskell
[x | x <- [2..20], (x `mod` 2) == 0]
[x | x <- [2..20], even x]
```

### Filtrado de Listas

Se puede llevar a cabo indicando una o más condiciones, que se indicarán al final, separándolas por comas:

```haskell
lista = [1..100]
filtro1 = [x | x <- lista, even x]
filtro2 = [x | x <- lista, even x, x <= 50]
filtro3 = [x | x <- lista, even x, x <= 50, x >= 10]
```

### Comprensión de Listas ("mapeado")

Si se realiza alguna transformación sobre los elementos:

```haskell
lista = [1..10]
dobles = [x*2 | x <- lista]
```

Se puede usar más de una lista (producto cartesiano) o filtros:

```haskell
lista1 = [1..10]
lista2 = [1..10]
[x^2 | x <- lista1, even x]
[x*y | x <- lista1, y <- lista2]
[x*y | x <- lista1, y <- lista2, even x, odd y]
```

### Intensión con Listas de Listas

Si los elementos de una lista son también listas, se pueden aplicar filtrado o mapeado a dichos elementos:

```haskell
listas = [ [1..10], [11..20], [21..30] ]
pares = [ [x*2 | x <- lista, even x] | lista <- listas]
{- resultado:  [                
                [ 4, 8,12,16,20],                
                [24,28,32,36,40],               
                [44,48,52,56,60]              
            ] -}
```

## Listas y Tuplas

### Tuplas como Elementos de Listas

Una lista puede contener tuplas como elementos, pero:

- Todos las tuplas deben tener el mismo número de componentes.

- Los tipos de datos de los componentes deben ser el mismo y en el mismo orden en todas las tuplas.

```haskell
lista = [(1,True),(2,False),(3,True)]
[(1,True,"hola"),(2,False),(3)] ¡¡¡ ERROR !!!
[(1,True),("hola",2),(False,True)] ¡¡¡ ERROR !!!
[(1,True),(False,2),(3,True)] ¡¡¡ ERROR !!!
```

### Ejemplo Práctico con Lista de Tuplas

Encontrar todos los triángulos rectángulos (que cumplen el Teorema de Pitágoras: a2+b2=c2) y su perímetro suma 24:

```haskell
let resultado =
        [ (cateto_a, cateto_b, hipotenusa)
        | hipotenusa <- [1..10]
        , cateto_a <- [1..hipotenusa]
        , cateto_b <- [1..cateto_a]
        , cateto_a ^ 2 + cateto_b ^ 2 == hipotenusa ^ 2
        , cateto_a + cateto_b + hipotenusa == 24
        ]
-- resultado: [(6,8,10)]
```

### Función splitAt

Divide una lista en un primer trozo, con el número de elementos indicado, y un segundo trozo con el resto de elementos:

```haskell
splitAt 3 [10,20,30,40,50] -- resultado, tupla con 2 listas: ([10,20,30],[40,50])
let (primero, segundo) = splitAt 5 [1..10]
print primero -- resultado: [1,2,3,4,5]
print segundo -- resultado: [6,7,8,9,10]
```

### Función span

Divide una lista en un primer trozo, al que agrega elementos mientras cumplan una condición, y un segundo trozo con el resto de elementos:

```haskell
span (<35) [10,20,30,40,50] -- resultado, tupla con 2 listas: ([10,20,30],[40,50])

let (primero, segundo) = span (<=5) [1..10]
print primero -- resultado: [1,2,3,4,5]
print segundo -- resultado: [6,7,8,9,10]

span (>10) [1..5] -- resultado: ([],[1,2,3,4,5])
span (<5) [8,7..0] -- resultado: ([],[8,7,6,5,4,3,2,1,0])
```

### Función break

Divide una lista en un primer trozo, al que agrega elementos mientras no cumplan una condición, y un segundo trozo con el resto de elementos (su primer elemento será el primero que cumplió la condición):

```haskell
break (>10) [3,5,12,4,1,32,8]-- resultado, tupla con 2 listas: ([3,5],[12,4,1,32,8]) 
break (>10) [1..5] – resultado: ([1,2,3,4,5],[]) 
break (<10) [1..5] – resultado: ([],[1,2,3,4,5])
```

### Función zip (Empaquetado)

Toma 2 listas y genera una nueva lista emparejando en tuplas los elementos de cada lista que ocupan la misma posición:

```haskell
let lista1 = [1,2,3] 
let lista2 = ["uno","dos","tres"] 
zip lista1 lista2-- resultado: [(1,"uno"), (2,"dos"), (3,"tres")] 
zip [1..10] ['a','b','c','d'] -- diferentes longitudes-- resultado: [(1,'a'), (2,'b'), (3,'c'), (4,'d')] 
zip [1..10] [] -- una lista está vacía-- resultado: []
```

### Funciones unzip, zip3 y unzip3

- **unzip**: hace justo lo contrario que la función zip.

```haskell
let lista = [(1,"uno"), (2,"dos"), (3,"tres")] 
unzip lista -- resultado: ([1,2,3],["uno","dos","tres"])
```

- **zip3**: lo mismo que zip, pero con 3 listas en vez de 2.

```haskell
zip3 [1,2,3] [10,20,30] [100,200,300]-- resultado: [(1,10,100),(2,20,200),(3,30,300)]
```

- **unzip3**: hace justo lo contrario que la función zip3.

```haskell
unzip3 [(1,10,100),(2,20,200),(3,30,300)]-- resultado: ([1,2,3],[10,20,30],[100,200,300])
```

### Funciones zipWith y zipWith3

- **zipWith**: en vez de crear tuplas con los pares de elementos, aplica una función a la pareja y guarda una lista con los resultados.

```haskell
let lista1 = [1,2,3] 
let lista2 = [10,11,12] 
zipWith (+) lista1 lista2 -- resultado: [11,13,15]
```

- **zipWith3**: lo mismo que zipWith, pero con 3 listas.

```haskell
zipWith3 (\a b c -> a + b + c) [1,2,3] [4,5,6] [7,8,9]-- resultado: [12,15,18]
```