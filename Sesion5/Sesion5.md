# Funciones Sobre Listas

### lenght y null

- **length**: indica la cantidad de elementos de una lista.
```haskell
let lista = [1..5]
length lista -- Resultado: 5
length [] -- Resultado: 0
```

- **null**: indica si una lista no tiene elementos, está vacía (True) o si contiene al menos un elemento (False).
```haskell
null lista -- Resultado: False
null [] -- Resultado: True
```

### head y tail

- **head**: devuelve el primer elemento de una lista. Lanza excepción si la lista está vacía.

```haskell
let lista = [1..5] 
head lista -- Resultado: 1 
head [] -- ¡¡¡ ERROR !!!
```

- **tail**: devuelve una copia de la lista pero sin el primer elemento. Lanza excepción si la lista está vacía.

```haskell
tail lista -- Resultado: [2,3,4,5]
tail [] -- ¡¡¡ ERROR !!!
```
### last e init

- **last**: devuelve el último elemento de una lista. Lanza excepción si la lista está vacía.

```haskell
let lista = [1..5] 
last lista -- Resultado: 5 
last [] -- ¡¡¡ ERROR !!!
```

- **init**: devuelve una copia de la lista pero sin el último elemento. Lanza excepción si la lista está vacía.

```haskell
init lista -- Resultado: [1,2,3,4] 
init [] -- ¡¡¡ ERROR !!!
```
 
### elem y notElem

- **elem**: indica si un elemento pertenece a la lista (True) o no (False).

```haskell
let lista = [1..5]
elem 3 lista -- Resultado: True
elem 8 lista -- Resultado: False
```

- **notElem**: indica si un elemento no pertenece a la lista (True) o sí (False).

```haskell
notElem 3 lista -- Resultado: False
notElem 8 lista -- Resultado: True
```

### reverse

- reverse: devuelve una copia de la lista pero con sus elementos en orden inverso (¡ojo! No ordena los números o las letras, sino que “da la vuelta” a la lista).

```haskell
let numeros = [1..5]
reverse numeros -- Resultado: [5,4,3,2,1]

let numeros = [3,8,1,5,2]
reverse numeros -- Resultado: [2,5,1,8,3]

let letras = ['a'..'e']
reverse letras -- Resultado: "edcba"
```

### lines y unlines

- **lines**: trocea un texto según sus saltos de línea.
```haskell
let texto = "Un\ngato\nnegro" 
lines texto -- Resultado: ["Un","gato","negro"] 
lines "" -- Resultado: []
```

- **unlines**: une una lista de Strings en un texto con saltos de línea.
```haskell
let palabras = ["Un","gato","negro"] 
unlines palabras -- Resultado: "Un\ngato\nnegro\n" 
unlines [] -- Resultado: ""
```

### words y unwords

- **words**: devuelve una lista con las palabras de un String.
```haskell
let texto = "Una \t prueba   \n   fin" 
words texto -- Resultado: ["Una","prueba","fin"] 
words "" -- Resultado: []
```

-  **unwords**: devuelve un String con la unión de una lista de
palabras.

```haskell
let palabras = ["Esto","es","una","prueba"]
unwords palabras -- Resultado: "Esto es una prueba"
unwords [] -- Resultado: ""
```

### maximum y minimum

-  **maximum:** devuelve el máximo de una lista de números o Chars.

```haskell
let numeros = [1..5]
maximum numeros -- Resultado: 5
maximum [] -- Resultado: ¡¡¡ ERROR !!!
maximum "prueba" = 'u'
```

-  **minimum**: devuelve el mínimo de una lista de números o Chars.

```haskell
minimum numeros -- Resultado: 1
minimum [] -- Resultado: ¡¡¡ ERROR !!!
minimum "prueba" -- Resultado: 'a'
```

### sum y product

- **sum**: devuelve la suma de una lista de números.

```haskell
let numeros = [1..5]
sum numeros -- Resultado: 15
sum [] -- Resultado: 0
```

-  **product**: devuelve el producto de una lista de números.

```haskell
product numeros -- Resultado: 120
product [] -- Resultado: 1
```

### Funciones Anónimas (Lambda)

- Son funciones sin nombre, sencillas, de 1 sólo uso, que se definen
directamente donde van a ser usadas.

```haskell
suma1 :: [Integer] -> Integer
suma1 x = x + 1
\x -> x + 1 -- Función anónima equivalente
(\x -> x + 1) 2 -- Resultado: 3
\x y -> x * y
(\x y -> x * y) 2 3 -- Resultado: 6
```

### map y filter

- **map**: aplica una transformación a cada elemento de una lista.

```haskell
let numeros = [1..5]
map (\x -> x + 2) numeros -- Resultado: [3,4,5,6,7]
map (+2) numeros -- Resultado: [3,4,5,6,7]
map (\x -> x + 2) [] -- Resultado: []
```

-  **filter**: devuelve una lista que contiene sólo los elementos que
cumplen con una condición.

```haskell
filter (\x -> x > 3) numeros -- Resultado: [4,5]
filter (>3) numeros -- Resultado: [4,5]
filter (\x -> x > 3) [] -- Resultado: []
```

### take y drop

-  **take**: devuelve los n primeros elementos de una lista

```haskell
let numeros = [1..5]
take 3 numeros -- Resultado: [1,2,3]
take 7 numeros -- Resultado: [1,2,3,4,5]
take (-3) numeros -- Resultado: []
take 3 [] -- Resultado: ¡¡¡ ERROR !!!
```

- **drop**: elimina los n primeros elementos de una lista.
```haskell
drop 3 numeros -- Resultado: [4,5]
drop 7 numeros -- Resultado: []
drop (-3) numeros -- Resultado: [1,2,3,4,5]
drop 3 [] -- Resultado: ¡¡¡ ERROR !!!
```

### takeWhile y dropWhile

- **takeWhile**: devuelve los elementos de una lista mientras se cumple
una condición.

```takeWhile (\x -> x < 5) [1..10] -- Resultado: [1,2,3,4]
takewhile (<5) [1,3,8,2,0,4,7] -- Resultado: [1,3]
takeWhile (>10) [] -- Resultado: []
```

- **dropWhile**: elimina elementos de una lista mientras se cumple una
condición.

```haskell
dropWhile (\x -> x <= 3) [1..5] -- Resultado: [4,5]
dropWhile (<5) [1,3,8,2,0,4,7] -- Resultado: [8,2,0,4,7]
dropWhile (>10) [] -- Resultado: []
```

### and y or

- **and**: devuelve True si todos los elementos de la lista son True.

```haskell
and [True, True, True] -- Resultado: True
and [True, False, False] -- Resultado: False
and [] -- Resultado: True
```

- **or**: devuelve True si alguno de los elementos de la lista es True.

```haskell
or [True, True, True] -- Resultado: True
or [True, False, False] -- Resultado: True
or [False, False, False] -- Resultado: False
or [] -- Resultado: False
```

### all y any

-  **all**: retorna True si todos los elementos cumplen con la condición.

```haskell
all (\x -> x > 0) [(-3)..3] -- Resultado: False
all (\x -> x > 0) [1..5] -- Resultado: True
all (\x -> x > 0) [] -- Resultado: True
all even [1..5] -- Resultado: False
```

- **any**: retorna True si alguno de los elementos cumple con la condición.
```haskell
any (\x -> x < 0) [(-3)..3] -- Resultado: True
any (\x -> x < 0) [1..5] -- Resultado: False
any (\x -> x < 0) [] -- Resultado: False
any even [1..5] -- Resultado: True
```

### replicate

- **replicate**: genera una lista repitiendo un número de veces el
mismo elemento.

```haskell
replicate 3 5 -- Resultado: [5,5,5]
replicate 5 'a' -- Resultado: "aaaaa"
replicate 4 "a" -- Resultado: ["a","a","a","a"]
replicate (-3) 1 -- Resultado: []
replicate 0 1 -- Resultado: []
```

### repeat

- Cuando en un rango no se indica el elemento final, se define un
generador que crea elementos de forma ilimitada.

```haskell
let generador = [1..]
take 5 generador -- Resultado: [1,2,3,4,5]
```

-  **repeat**: crea un generador que repite el mismo elemento de
forma indefinida.

```haskell
take 5 (repeat 1) -- Resultado: [1,1,1,1,1]
take 3 (repeat 'a') -- Resultado: "aaa"
take 0 (repeat 1) -- Resultado: []
take (-3) (repeat 1) -- Resultado: []
```

### cycle e iterate

- **cycle**: crea un generador que repite una misma secuencia de
forma indefinida.

```haskell
take 7 (cycle [1,2,3]) -- Resultado: [1,2,3,1,2,3,1]
take 10 (repeat "ABC") -- Resultado: "ABCABCABCA"
```

- **iterate**: a partir de un número inicial, aplica una función de
forma repetida e ilimitada.

```haskell
take 10 (iterate (\x -> x * 2) 1)
-- Resultado: [1,2,4,8,16,32,64,128,256,512]
take 4 (iterate succ 32) -- Resultado: [32,33,34,35]
```

### Ejemplo de Plegado

- Son funciones que se encargan de fusionar los elementos de una lista
hasta reducirla a un único valor.

```haskell
sum [1,2,3,4]
1 + (sum [2,3,4])
1 + (2 + (sum [3,4]))
1 + (2 + (3 + (sum [4])))
1 + (2 + (3 + (4 + (sum [])))) -- caso base
1 + (2 + (3 + (4 + 0))) -- valor del caso base
1 + (2 + (3 + 4))
1 + (2 + 7)
1 + 9
10
```

### Patrón Recursivo de Plegado

- Si el argumento es la lista vacía, se ha llegado al caso base, y se
devuelve un valor base por definición (sum [] devuelve 0).

- Si la lista no está vacía, se aplica una función u operador, llamado
función de plegado o plegador que hace lo siguiente:

1. Extrae el primer elemento de la lista (cabecera).

2. Aplica al resto de la lista (cola) la misma función de plegado.

3. Cuando esta retorna, combina el elemento retornado con el primer
elemento de la lista extraído para fusionarlo en un único elemento.

4. Retorna dicho único elemento combinado.

- La declaración y definición de la función sum sería:

```haskell
sum :: [Integer] -> Integer
sum [] = 0 -- caso base, retorna valor
sum (x:xs) = x + (sum xs) -- caso recursivo (plegado)
```

- Una función de plegado genérica sería:

```haskell
funcion :: [a] -> b
funcion [] = z
funcion (x:xs) = op x (funcion xs)
-- donde “op” es la función u operador de plegado
```

### foldr

- **foldr**: a partir de un operador o función binaria (plegador) y
un valor inicial (caso base) reduce una lista aplicando la operación
de derecha a izquierda (ej. (1 + (2 + (3 + 0))): 0=inicial)

```haskell
sumar :: [Integer] -> Integer
sumar = foldr (+) 0 -- z=0, op=(+)
sumar [1,2,3,4] -- Resultado: 10
calcular :: [Integer] -> Integer
calcular = foldr (\x y -> 2*x + y) 4
calcular [1,2,3] -- Resultado: 16
```

### foldr de sumar

```haskell
1. sumar [1,2,3,4]

2. foldr (+) 0 [1,2,3,4]

3. foldr (+) 0 1:2:3:4:[]

4. foldr (+) 1
 foldr (+) 0 2:3:4:[]

5. foldr (+) 1
 foldr (+) 2
 foldr (+) 0 3:4:[]

6. foldr (+) 1
 foldr (+) 2
 foldr (+) 3
 foldr (+) 0 4:[]

7. foldr (+) 1
 foldr (+) 2
 foldr (+) 3
 foldr (+) 4
 foldr (+) 0 [] -- caso base, retorna 0
 -- sumar [] = 0
 -- foldr (+) 0 [] = 

8. foldr (+) 1
 foldr (+) 2
 foldr (+) 3
 foldr (+) 4 0 -- recuerda: “(+) a b” = “a + b”

9. foldr (+) 1
 foldr (+) 2
 foldr (+) 3
 4 + 0

10. foldr (+) 1
 foldr (+) 2
 foldr (+) 3 4

 11. foldr (+) 1
 foldr (+) 2
 3 + 4

12. foldr (+) 1
 foldr (+) 2 7

13. foldr (+) 1
 2 + 7

14. foldr (+) 1 9

15. 1 + 9

16. 10
```

### foldr de calcular

```haskell
1. calcular [1,2,3]

2. foldr (\x y -> 2*x + y) 4 1:2:3:[]

3. foldr (\x y -> 2*x + y) 1

 foldr (\x y -> 2*x + y) 4 2:3:[]

4. foldr (\x y -> 2*x + y) 1
 foldr (\x y -> 2*x + y) 2
 foldr (\x y -> 2*x + y) 4 3:[]

5. foldr (\x y -> 2*x + y) 1
 foldr (\x y -> 2*x + y) 2
 foldr (\x y -> 2*x + y) 3
 foldr (\x y -> 2*x + y) 4 [] -- caso base, returna 4

7. foldr (\x y -> 2*x + y) 1
 foldr (\x y -> 2*x + y) 2
 foldr (\x y -> 2*x + y) 3 4

8. foldr (\x y -> 2*x + y) 1
 foldr (\x y -> 2*x + y) 2
 2*3 + 4 -- Resultado: 10

9. foldr (\x y -> 2*x + y) 1
 foldr (\x y -> 2*x + y) 2 10

10. foldr (\x y -> 2*x + y) 1
 2*2 + 10 -- Resultado: 14

11. foldr (\x y -> 2*x + y) 1 14

12. 2*1 + 14

12. 16
```

### foldl

- **foldl**: a partir de un operador o función binaria (plegador) y
un valor inicial (caso base) reduce una lista aplicando la operación
de izquierda a derecha (ej. (((0 + 1) + 2) + 3): 0=inicial)

```haskell
sumar :: [Integer] -> Integer
sumar = foldl (+) 0
sumar [1,2,3,4] -- Resultado: 10 -- igual que “foldr”
calcular :: [Integer] -> Integer
calcular = foldl (\x y -> 2*x + y) 4
calcular [1,2,3] -- Resultado: 43 -- ¡distinto!
```

### foldl de calcular

```haskell
1. calcular [1,2,3]

2. foldl (\x y -> 2*x + y) 4 1:2:3:[]

3. foldl (\x y -> 2*x + y)
 (foldl (\x y -> 2*x + y) 4 1) 2:3:[]

4. foldl (\x y -> 2*x + y)
 (2*4 + 1) 2:3:[] -- Resultado: 9

5. foldl (\x y -> 2*x + y) 9 2:3:[]

6. foldl (\x y -> 2*x + y)
 (foldl (\x y -> 2*x + y) 9 2) 3:[]

7. foldl (\x y -> 2*x + y)
 (2*9 + 2) 3:[] -- Resultado: 20

8. foldl (\x y -> 2*x + y) 20 3:[]

9. foldl (\x y -> 2*x + y)
 (foldl (\x y -> 2*x + y) 20 3) []

10. foldl (\x y -> 2*x + y)
 (2*20 + 3) [] -- Resultado: 43

11. foldl (\x y -> 2*x + y) 43 [] -- No se puede operar más.

12. 43
```

### foldr1 y foldl1

- **foldr1**: igual que foldr, pero el valor inicial será el último
elemento de la lista.

```haskell
sumar :: [Integer] -> Integer
sumar = foldr1 (\x y -> 2*x + y) -- Sin valor inicial
sumar [1,2,3] -- Resultado: 9 -- 3 = valor inicial
```

-  **foldl1**: igual que foldl, pero el valor inicial será el primer
elemento de la lista.

```haskell
sumar :: [Integer] -> Integer
sumar = foldl1 (\x y -> 2*x + y) -- Sin valor inicial
sumar [1,2,3] -- Resultado: 11 -- 1 = valor inicial
```

### scanr y scanl

- scanr: igual que foldr, pero genera una lista con los valores
intermedios (recuerda: de derecha a izquierda).

```haskell
scanr (+) 5 [1,2,3,4] -- Resultado: [15,14,12,9,5]
scanr (+) 1 [5,4,3,2] -- Resultado: [15,10,6,3,1]
```


- **scanl**: igual que foldl, pero genera una lista con los valores
intermedios (recuerda: de izquierda a derecha).


```haskell
scanl (+) 1 [2,3,4,5] -- Resultado: [1,3,6,10,15]
scanl (+) 5 [4,3,2,1] -- Resultado: [5,9,12,14,15]
```

### scanr1 y scanl1

- **scanr1**: igual que scanr, pero el valor inicial será el último
elemento de la lista.

```haskell
scanr1 (+) [1,2,3,4,5] -- Resultado: [15,14,12,9,5]
scanr1 (+) [5,4,3,2,1] -- Resultado: [15,10,6,3,1]
```

- **scanl1**: igual que scanl, pero el valor inicial será el primer
elemento de la lista.

```haskell
scanl1 (+) [1,2,3,4,5] -- Resultado: [1,3,6,10,15]
scanl1 (+) [5,4,3,2,1] -- Resultado: [5,9,12,14,15]
```




