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