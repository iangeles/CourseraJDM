//: Mini Reto - Juego de Memoria

/*
 Programa un playground que evalúe un rango de números con base a 4 reglas de impresión.
 
 Generar un rango de 0 a 100, incluye el número 100 en el rango.
 Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
 Al evaluar cada número debes aplicar las siguientes reglas:
 - Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
 
 - Si el número es par, imprime: # el número + “par!!!”
 
 - Si el número es impar, imprime: # el número + “impar!!!”
 
 - Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
 
 Debes de usar la interpolación de variables para realizar la impresión de cada número.
 */

import UIKit


for var serie = 0; serie <= 100; serie++ {
    var rango = serie;
    switch serie {
        
    case rango where rango == 0:
        print("\(rango)\tno aplica!!!") //: Descartamos el cero porque no cumple con ninguna de las 4 reglas
        
    case rango where rango % 5 == 0 && rango % 2 == 0 && (rango >= 30 && rango <= 40):
        print("\(rango)\tBingo!!!\tPar!!!\tViva Swift!!!") //: Números que cumplen con las reglas: 1, 2 y 4
        
    case rango where rango % 5 == 0 && rango % 2 != 0 && (rango >= 30 && rango <= 40):
        print("\(rango)\tBingo!!!\tImpar!!!\tViva Swift!!!") //: Números que cumplen con las reglas: 1, 3 y 4
        
    case rango where rango % 2 == 0 && (rango >= 30 && rango <= 40):
        print("\(rango)\tPar!!!\tViva Swift!!!") //: Números que cumplen con las reglas: 2 y 4
        
    case rango where rango % 2 != 0 && (rango >= 30 && rango <= 40):
        print("\(rango)\tImpar!!!\tViva Swift!!!") //: Números que cumplen con las reglas: 3 y 4
        
    case rango where rango % 2 == 0:
        print("\(rango)\tPar!!!")  //: Números que cumplen con las reglas: 2
        
    case rango where rango % 2 != 0:
        print("\(rango)\tImpar!!!") //: Números que cumplen con las reglas: 3
        
    default:
        print("\(rango)") //: el default son aquellos que no cumplen ninguna de las condiciones anteriores
    }
}


