--Ejercicio 12: define mediaPunto :: (Double, Double) -> (Double, Double) -> (Double, Double) que, dadas dos coordenadas 2D, devuelva el punto medio.

main :: IO()
main = do
    print(mediaPunto (2,5) (2,6))

mediaPunto :: (Double, Double) -> (Double, Double) -> (Double, Double)
mediaPunto (x1,y1) (x2, y2) = ((x1 + x2)/2, (y1 + y2)/2)