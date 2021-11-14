import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
prefix operator +++

prefix func +++(valor:Int)->Int
{
    let v =  valor * valor
    return v
}

+++5
+++2
//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
let cantidades = [2,5,3,4]

class Cantidad
{
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }
    
    subscript(idx:Int) -> Int
    {
        get
        {
            return valores[idx]
        }
        
        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}



/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
struct Enemigo {
    var Enemigo1: String
    var Enemigo2: String
    var Enemigo3: Int
    var Enemigo4: String
}
/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let dictError = [1:"uno", 2:"dos", 3:"tres"]

func Existe(idx:Int)
{
    guard let existe = dictError[idx] else {
        print("No existe")
        return
    }
    print("existe \(existe)")
}

Existe(idx: 2)
dictError[2]
