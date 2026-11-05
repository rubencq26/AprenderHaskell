# Sesión 6

## Pattern Matching

- Técnica de bifurcación en la que en cada rama se debe indicar el
patrón que deben tener los elementos que componen los
datos para que se ejecute dicha rama.

- Los patrones siempre se evalúan en orden (de arriba a abajo), es
decir, deben ir del más específico al más general.

```haskell
factorial :: (Integral a) => a -> a
factorial 0 = 1 -- Primer patrón: a es 0
factorial n = n * factorial (n – 1)
-- Segundo patrón: a es cualquier número n
```

```haskell
tell :: (Show a) => [a] -> String
tell [] = "Lista vacía"
tell (x:[]) = "Lista de 1 elemento: " ++ show x
tell (x:y:[]) = "Lista de 2 elementos: " ++ show x ++
 " y " ++ show y
tell (x:y:_) = "Lista con más de 2 elementos"
```

- El primer patrón suele ser la lista vacía.

- Se puede usar deconstrucción/descomposición en elementos,
pero hay que hacerlo utilizando paréntesis

### Patrones “as” (As Patterns)

```haskell
inicial :: String -> String
inicial "" = "¡Cadena vacía!"
inicial todo@(x:_) = "Primera letra de " ++ todo ++
 " es " ++ [x]
```

-  Permite hacer uso de la lista completa en un pattern matching.

- Primero va el nombre de la variable (el que se quiera, aquí se
llama todo), seguido de una arroba, y seguido del patrón, todo
sin espacios entre medias.


## Formas de Definir Funciones

### Sobrecarga de Funciones.

- Se declara la función una vez pero se define varias veces, cada
una con un patrón diferente.

```haskell
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n – 1)
tipoLista :: (Show a) => [a] -> String
tipoLista [] = "Lista vacía"
tipoLista (x:[]) = "Lista de 1 elemento: " ++ show x
tipoLista (x:_) = "Lista de 2 elementos o más"
```

### Guardas

- Se separan los diferentes patrones mediante el símbolo “pipe”.

- Se llama guarda porque dicho símbolo parece una “barrera”.

-  El caso más general se indica mediante otherwise.

```haskell
factorial :: (Integral a) => a -> a
factorial n
 | n == 0 = 1
 | n > 0 = n * factorial (n – 1)
 | otherwise = error "No hay factoriales de negativos"
```

```haskell
calculaBMI :: (RealFloat a) => a -> a -> String
calculaBMI peso altura
 | peso / (altura ^ 2) <= 18.5 = "Delgado"
 | peso / (altura ^ 2) <= 25.0 = "Normal"
 | peso / (altura ^ 2) <= 30.0 = "Sobrepeso"
 | otherwise
```

### Definiciones Locales con “where”

- Evita repetir código mediante la definición de constantes o
funciones locales al final.

```haskell
calculaBMI :: (RealFloat a) => a -> a -> String
calculaBMI peso altura
 | bmi <= delgado = "Delgado"
 | bmi <= normal = "Normal"
 | bmi <= sobrepeso = "Sobrepeso"
 | otherwise = "Obeso"
 where bmi = peso / (altura ^ 2)
 (delgado, normal, sobrepeso) = (18.5, 25.0, 30.0)
```

### Composición de Funciones

- Mediante el operador “punto”, se pueden concatenar varias
funciones.

```haskell
esPrimo :: Integer -> Bool
esPrimo n
 | n < 2 = False
 | otherwise = all (\x -> n `mod` x /= 0) [2 .. isqrt n]
 where isqrt = floor . sqrt . fromIntegral
```

### Definiciones Locales con “let-in”

- Expresión donde las variables definidas en la parte “let” se
podrán usar en la parte “in”.

```haskell
areaCilindro :: (RealFloat a) => a -> a -> a
areaCilindro radio altura =
 let areaLateral = 2 * pi * radio * altura
 areaBase = pi * (radio ^ 2)
 in areaLateral + (2 * areaBase)
```

### Expresiones “if-then-else”

- Expresión que permite devolver un valor u otro según una
condición.

```haskell
factorial :: (Integral a) => a -> a
factorial n =
 if n == 0 then 1
 else n * factorial (n – 1)
```

```haskell
calculaBMI :: (RealFloat a) => a -> a -> String
calculaBMI peso altura =
 let bmi = peso / (altura ^ 2)
 (delgado, normal, sobrepeso) = (18.5, 25.0, 30.0)
 in
 if bmi <= delgado then "Delgado"
 else if bmi <= normal then "Normal"
 else if bmi <= sobrepeso then "Sobrepeso"
 else "Obeso"
```

```haskell
calculaBMI :: (RealFloat a) => a -> a -> String
calculaBMI peso altura =
 if bmi <= delgado then "Delgado"
 else if bmi <= normal then "Normal"
 else if bmi <= sobrepeso then "Sobrepeso"
 else "Obeso"
 where bmi = peso / (altura ^ 2)
 (delgado, normal, sobrepeso) = (18.5, 25.0, 30.0)
```

### Expresiones “case”

- Expresión que permite devolver un valor u otro según un
patrón.

```haskell
factorial :: (Integral a) => a -> a
factorial n = case n of
 0 -> 1
 _ -> n * factorial (n – 1)
```

```haskell
calculaBMI :: (RealFloat a) => a -> a -> String
calculaBMI peso altura =
 case (bmi <= delgado, bmi <= normal, bmi <= sobrepeso) of
 (True, _, _) -> "Delgado"
 (False, True, _) -> "Normal"
 (False, False, True) -> "Sobrepeso"
 (False, False, False) -> "Obeso"
 where bmi = peso / (altura ^ 2)
 (delgado, normal, sobrepeso) = (18.5, 25.0, 30.0)
```

### “case” con Más de 1 Parámetro

- Se suelen agrupar en tuplas para compararlos con los patrones:

```haskell
coordenadas :: Integer -> Integer -> String
coordenadas a b = case (a, b) of
 (0, 0) -> "Lugar (0,0)"
 (0, 1) -> "Lugar (0,1)"
 (1, 0) -> "Lugar (1,0)"
 (1, 1) -> "Lugar (1,1)"
 (_, _) -> "Lugar Desconocido"
```

## Módulos

### Módulos en Haskell (Librerías)

- Módulo: colección de funciones y tipos relacionados entre sí con
el objetivo de ser reutilizables.

- Importación: mediante import y el nombre del módulo. Deben
estar al principio de los ficheros.

```haskell
import Data.List -- Todo el módulo
import Data.List (nub, sort) -- Sólo algunas partes
import Data.List hiding (sort) -- Todo menos alguna parte
import Data.List as L -- Renombrar el módulo
```

- **GHCI/Winhugs**: :m + Data.List

### Uso de Módulos

- Se usan las funciones importadas haciendo referencia a su nombre,
como si fuera una función local.

```haskell
import Data.List (sort)
menores k lista = take k (sort lista)
```

-  Para evitar choques entre nombres, se puede usar qualified.

```haskell
import qualified Data.List (sort)
menores k lista = take k (Data.List.sort lista)
```

- Para hacerlo más breve, se puede usar alias.
```haskell
import qualified Data.List as L (sort)
menores k lista = take k (L.sort lista)
```


### Creación de Módulos

- **Módulo**: debe ir todo dentro de un mismo fichero
“NombreModulo.hs”, donde el nombre del fichero será el mismo
que tiene el módulo.

```haskell
module NombreModulo -- Declaración del módulo
where -- Definición del módulo
funcion :: Integer -> Integer
funcion n = ...
```
- Submódulo: deben ir en carpetas, de forma que si la ruta es
“Ruta/Modulo.hs”, la importación será import Ruta.Modulo. Y
para “Otra/Ruta/Modulo2.hs” es import Otra.Ruta.Modulo2.

### Exportación de Funciones

- Si se indica una lista de funciones en la declaración, sólo
serán accesibles desde fuera dichas funciones, ocultando el resto.

```haskell
module NombreModulo -- Declaración del módulo
( funcion1 -- Sólo estas 3 funciones son
, funcion2 -- accesibles
, funcion3
)
where ...
import NombreModulo (funcion1) -- Se puede usar
import NombreModulo (funcion4) -- No se puede usar
```

### Módulos Útiles

[haskell org](https://downloads.haskell.org/ghc/latest/docs/libraries/)

[hoogle](https://hoogle.haskell.org/)

- Data.Char
- Data.Text
- Data.Time
- Data.List
- Data.Set
- Data.Map
- System.IO
- System.Directory
- System.Console.CmdArgs
- System.Environment

## Currificación

### Concepto de Currificación

- Cualquier función con múltiples parámetros puede ser expresada
como una secuencia de funciones que toman 1 único
parámetro y devuelven una función.

```haskell
suma :: (Integral a) => a -> a -> a
suma x y = x + y
suma :: (Integral a) => a -> (a -> a)
suma x = \y -> x + y -- suma x y ↔ (suma x) y
suma 1 -- Produce la función \y -> 1 + y
(suma 1) 2 -- Produce el valor 3
```

### Parámetros en Programación Funcional

- En la programación funcional, en realidad, no existen funciones
que reciben 2 o más parámetros.

- Sólo existen funciones que toman 0 ó 1 parámetros y que:

- Devuelven un valor.

- Devuelven otra función.

```
sumaUno :: (Integral a) => (a -> a)
sumaUno = suma 1 -- Función Parcialmente Aplicada
sumaUno 2 -- Resultado: 3
sumaUno 10 -- Resultado: 11
```

### Secciones

- Son una aplicación parcial (toma tantos parámetros como le
falte) de los operadores.

```haskell
sumaDosA x = 2 + x -- Función “normal”
sumaDosB = \x -> 2 + x -- La misma, pero currificada
sumaDosC = (+) 2 -- La misma, pero con operador suma
sumaDosD = (2+) -- Sección equivalente
map sumaDosA [1,2,3] -- Resultado: [3,4,5]
map sumaDosB [1,2,3] -- map (\x -> x + 2) [1,2,3]
map sumaDosC [1,2,3] -- map ((+) 2) [1,2,3]
map sumaDosD [1,2,3] -- map (2+) [1,2,3]
```

### Funciones de Orden Superior

- Paso de Función como Parámetro: en la declaración, se indica
mediante el uso de paréntesis.

```haskell
dosVeces :: (Integer -> Integer) -> Integer -> Integer
dosVeces funcion valor = funcion (funcion valor)
```

- Retorno de Función: también con paréntesis, pero al final
```haskell
calculo :: Integer -> (Integer -> Integer)
calculo y = \x -> x + (y ^ 2) -- Retorna función
calculo :: Integer -> Integer -> Integer -- ¿Distinto?
calculo x y = x + (y ^ 2) -- Retorna valor
```

```haskell
zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith _ [] _ = []
zipWith _ _ [] = []
zipWith f (x:xs) (y:ys) = f x y : zipWith f xs ys
```

```haskell
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs
```

```haskell
flip :: (a -> b -> c) -> (b -> a -> c)
flip f = g where g x y = f y x
```

### Aplicación de Funciones con $

- Evita escribir muchos paréntesis.

```haskell
func1 (func2 (func3 a b)) ↔ func1 $ func2 $ func3 a b
print (take 2 (sort [3, 1, 2]))
print $ take 2 $ sort [3, 1, 2]
```

-  Aplica una función a sus parámetros y devuelve el resultado.

- Aplicación vs. Composición de Funciones: la aplicación
devuelve un resultado, la composición de funciones combina
funciones pero sin aplicar valores.

```haskell
map (negate . sum . tail) [[1..5],[3..6],[1..7]]
```

