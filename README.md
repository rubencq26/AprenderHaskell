# Aprender Haskell

Apuntes y ejercicios del curso de Haskell (MAC, universidad), organizados por sesiones.

## Índice general

| Sesión | Tema | Contenido |
|---|---|---|
| [Sesión 2](#sesión-2--primeros-pasos) | Primeros pasos | Operadores aritméticos y lógicos |
| [Sesión 3](#sesión-3--tipos-tuplas-e-io) | Tipos, tuplas e IO | Entrada/salida, tuplas, ficheros, 15 ejercicios |
| [Sesión 4](#sesión-4--listas) | Listas | Operadores, rangos, listas intensionales, tuplas y `zip` |
| [Sesión 5](#sesión-5--funciones-sobre-listas) | Funciones sobre listas | `map`, `filter`, plegados (`fold`) y `scan` |
| [Sesión 6](#sesión-6--funciones-módulos-y-currificación) | Funciones, módulos y currificación | Pattern matching, guardas, módulos, orden superior |

---

## Sesión 2 · Primeros pasos

Código: [`Sesion2/Main.hs`](Sesion2/Main.hs)

- Comentarios de línea y de bloque.
- Operaciones aritméticas (`+`, `*`, `/`, `^`), negativos entre paréntesis.
- Operadores lógicos (`&&`, `||`, `not`).

## Sesión 3 · Tipos, tuplas e IO

Ejemplos:

| Archivo | Tema |
|---|---|
| [`Main.hs`](Sesion3/Main.hs) | Salida por pantalla (`putChar`, `putStr`, `putStrLn`...) |
| [`Tuplas.hs`](Sesion3/Tuplas.hs) | Tuplas |
| [`IOFiles.hs`](Sesion3/IOFiles.hs) | Lectura y escritura de ficheros (`readFile`, `writeFile`, `appendFile`); usa [`entrada.txt`](Sesion3/entrada.txt) y genera [`salida.txt`](Sesion3/salida.txt) |

### Ejercicios

| # | Enunciado resumido | Código |
|---|---|---|
| 1 | Número divisible por `b` y por `c` | [Ej1.hs](Sesion3/Ejercicios/Ej1.hs) |
| 2 | La suma de valores absolutos es par | [Ej2.hs](Sesion3/Ejercicios/Ej2.hs) |
| 3 | Volumen de una esfera | [Ej3.hs](Sesion3/Ejercicios/Ej3.hs) |
| 4 | Máximo de 5 números (`Double`) | [Ej4.hs](Sesion3/Ejercicios/Ej4.hs) |
| 5 | `esPar` con `even` y con `mod` | [Ej5.hs](Sesion3/Ejercicios/Ej5.hs) |
| 6 | `mcd3` con `gcd` | [Ej6.hs](Sesion3/Ejercicios/Ej6.hs) |
| 7 | Tipo de expresiones (`^`, `^^`, `**`...) | [Ej7.hs](Sesion3/Ejercicios/Ej7.hs) |
| 8 | `esDivisible` con `mod`/`rem` | [Ej8.hs](Sesion3/Ejercicios/Ej8.hs) |
| 9 | ¿Compilan estas expresiones? | [Ej9.hs](Sesion3/Ejercicios/Ej9.hs) |
| 10 | `intercambia` por desestructuración | [Ej10.hs](Sesion3/Ejercicios/Ej10.hs) |
| 11 | `sumaComponentes` de una tupla | [Ej11.hs](Sesion3/Ejercicios/Ej11.hs) |
| 12 | `mediaPunto` (punto medio 2D) | [Ej12.hs](Sesion3/Ejercicios/Ej12.hs) |
| 13 | `desempaquetar` una tupla a mensaje | [Ej13.hs](Sesion3/Ejercicios/Ej13.hs) |
| 14 | Leer dos números: suma, producto y división | [Ej14.hs](Sesion3/Ejercicios/Ej14.hs) |
| 15 | Leer una frase y mostrar su longitud | [Ej15.hs](Sesion3/Ejercicios/Ej15.hs) |

## Sesión 4 · Listas

Apuntes: [`Sesion4/Listas.md`](Sesion4/Listas.md)

- [Tipos de Datos](Sesion4/Listas.md#tipos-de-datos)
- [Operador Cons `(:)`](Sesion4/Listas.md#operador-cons-)
- [Operador Concatenación `(++)`](Sesion4/Listas.md#operador-concatenación-)
- [Operador Índice `(!!)`](Sesion4/Listas.md#operador-índice-)
- [Listas de Listas](Sesion4/Listas.md#listas-de-listas)
- [Listas de funciones](Sesion4/Listas.md#listas-de-funciones)
- **[Rangos](Sesion4/Listas.md#rangos)**
  - [Definir Listas con Rangos](Sesion4/Listas.md#definir-listas-con-rangos)
  - [Rangos con Saltos](Sesion4/Listas.md#rangos-con-saltos)
- **[Listas Intensionales](Sesion4/Listas.md#listas-intensionales)**
  - [Definición Intensional de Listas](Sesion4/Listas.md#definicion-intensional-de-listas)
  - [Filtrado de Listas](Sesion4/Listas.md#filtrado-de-listas)
  - [Comprensión de Listas ("mapeado")](Sesion4/Listas.md#comprensión-de-listas-mapeado)
  - [Intensión con Listas de Listas](Sesion4/Listas.md#intensión-con-listas-de-listas)
- **[Listas y Tuplas](Sesion4/Listas.md#listas-y-tuplas)**
  - [Tuplas como Elementos de Listas](Sesion4/Listas.md#tuplas-como-elementos-de-listas)
  - [Ejemplo Práctico con Lista de Tuplas](Sesion4/Listas.md#ejemplo-práctico-con-lista-de-tuplas)
  - [`splitAt`](Sesion4/Listas.md#función-splitat)
  - [`span`](Sesion4/Listas.md#función-span)
  - [`break`](Sesion4/Listas.md#función-break)
  - [`zip` (Empaquetado)](Sesion4/Listas.md#función-zip-empaquetado)
  - [`unzip`, `zip3` y `unzip3`](Sesion4/Listas.md#funciones-unzip-zip3-y-unzip3)
  - [`zipWith` y `zipWith3`](Sesion4/Listas.md#funciones-zipwith-y-zipwith3)

## Sesión 5 · Funciones sobre listas

Apuntes: [`Sesion5/Sesion5.md`](Sesion5/Sesion5.md)

**Funciones básicas**
- [`length` y `null`](Sesion5/Sesion5.md#lenght-y-null)
- [`head` y `tail`](Sesion5/Sesion5.md#head-y-tail)
- [`last` e `init`](Sesion5/Sesion5.md#last-e-init)
- [`elem` y `notElem`](Sesion5/Sesion5.md#elem-y-notelem)
- [`reverse`](Sesion5/Sesion5.md#reverse)
- [`lines` y `unlines`](Sesion5/Sesion5.md#lines-y-unlines)
- [`words` y `unwords`](Sesion5/Sesion5.md#words-y-unwords)
- [`maximum` y `minimum`](Sesion5/Sesion5.md#maximum-y-minimum)
- [`sum` y `product`](Sesion5/Sesion5.md#sum-y-product)

**Orden superior y generación**
- [Funciones Anónimas (Lambda)](Sesion5/Sesion5.md#funciones-anónimas-lambda)
- [`map` y `filter`](Sesion5/Sesion5.md#map-y-filter)
- [`take` y `drop`](Sesion5/Sesion5.md#take-y-drop)
- [`takeWhile` y `dropWhile`](Sesion5/Sesion5.md#takewhile-y-dropwhile)
- [`and` y `or`](Sesion5/Sesion5.md#and-y-or)
- [`all` y `any`](Sesion5/Sesion5.md#all-y-any)
- [`replicate`](Sesion5/Sesion5.md#replicate)
- [`repeat`](Sesion5/Sesion5.md#repeat)
- [`cycle` e `iterate`](Sesion5/Sesion5.md#cycle-e-iterate)

**Plegados (folds) y scans**
- [Ejemplo de Plegado](Sesion5/Sesion5.md#ejemplo-de-plegado)
- [Patrón Recursivo de Plegado](Sesion5/Sesion5.md#patrón-recursivo-de-plegado)
- [`foldr`](Sesion5/Sesion5.md#foldr) · [`foldr` de sumar](Sesion5/Sesion5.md#foldr-de-sumar) · [`foldr` de calcular](Sesion5/Sesion5.md#foldr-de-calcular)
- [`foldl`](Sesion5/Sesion5.md#foldl) · [`foldl` de calcular](Sesion5/Sesion5.md#foldl-de-calcular)
- [`foldr1` y `foldl1`](Sesion5/Sesion5.md#foldr1-y-foldl1)
- [`scanr` y `scanl`](Sesion5/Sesion5.md#scanr-y-scanl)
- [`scanr1` y `scanl1`](Sesion5/Sesion5.md#scanr1-y-scanl1)

## Sesión 6 · Funciones, módulos y currificación

Apuntes: [`Sesion6/Sesion6.md`](Sesion6/Sesion6.md)

- **[Pattern Matching](Sesion6/Sesion6.md#pattern-matching)**
  - [Patrones "as"](Sesion6/Sesion6.md#patrones-as-as-patterns)
- **[Formas de Definir Funciones](Sesion6/Sesion6.md#formas-de-definir-funciones)**
  - [Sobrecarga de Funciones](Sesion6/Sesion6.md#sobrecarga-de-funciones)
  - [Guardas](Sesion6/Sesion6.md#guardas)
  - [Definiciones locales con `where`](Sesion6/Sesion6.md#definiciones-locales-con-where)
  - [Composición de Funciones](Sesion6/Sesion6.md#composición-de-funciones)
  - [Definiciones locales con `let-in`](Sesion6/Sesion6.md#definiciones-locales-con-let-in)
  - [Expresiones `if-then-else`](Sesion6/Sesion6.md#expresiones-if-then-else)
  - [Expresiones `case`](Sesion6/Sesion6.md#expresiones-case)
  - [`case` con más de 1 parámetro](Sesion6/Sesion6.md#case-con-más-de-1-parámetro)
- **[Módulos](Sesion6/Sesion6.md#módulos)**
  - [Módulos en Haskell (Librerías)](Sesion6/Sesion6.md#módulos-en-haskell-librerías)
  - [Uso de Módulos](Sesion6/Sesion6.md#uso-de-módulos)
  - [Creación de Módulos](Sesion6/Sesion6.md#creación-de-módulos)
  - [Exportación de Funciones](Sesion6/Sesion6.md#exportación-de-funciones)
  - [Módulos Útiles](Sesion6/Sesion6.md#módulos-útiles)
- **[Currificación](Sesion6/Sesion6.md#currificación)**
  - [Concepto de Currificación](Sesion6/Sesion6.md#concepto-de-currificación)
  - [Parámetros en Programación Funcional](Sesion6/Sesion6.md#parámetros-en-programación-funcional)
  - [Secciones](Sesion6/Sesion6.md#secciones)
  - [Funciones de Orden Superior](Sesion6/Sesion6.md#funciones-de-orden-superior)
  - [Aplicación de Funciones con `$`](Sesion6/Sesion6.md#aplicación-de-funciones-con-)

---

## Estructura del repositorio

```
AprenderHaskell/
├── Sesion2/            # Primeros pasos
├── Sesion3/            # IO, tuplas y ejercicios
│   └── Ejercicios/
├── Sesion4/            # Listas (Listas.md)
├── Sesion5/            # Funciones sobre listas (Sesion5.md)
└── Sesion6/            # Funciones, módulos, currificación (Sesion6.md)
```

## Cómo ejecutar los ejemplos

Necesitas [GHC](https://www.haskell.org/ghc/):

```bash
ghc Main.hs && ./Main     # compilar y ejecutar
runghc Main.hs            # o ejecutar directamente
ghci                      # intérprete interactivo
```
