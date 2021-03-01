import UIKit
	
class Persona{
    var nombre = "";
    var saludo = "";
    var camino = 0;

    init(nombre:String, saludo:String)
    {
        self.nombre = nombre
        self.saludo = saludo
    }

    func hablar(mensaje:String){
        self.saludo = mensaje
    }

    func persona(nombre:String)
    {
        self.nombre = nombre
    }

    func caminar(pasos:Int)
    {
        self.camino = pasos
    }
}
var Ali = Persona(nombre: "Ali", saludo: "")
Ali.persona(nombre:"Ali")
Ali.hablar(mensaje:"mucho gusto")
Ali.caminar(pasos:35)
print("Hola \(Ali.nombre), \(Ali.saludo), tus pasos son \(Ali.camino)")

/*----------------------------*/

//Declaración de Struct
struct Pantalla {
    var alto:Int
    var ancho:Int

    init(alto:Int, ancho:Int) {
        self.alto = alto
        self.ancho = ancho
    }

    func resolucion() ->(Int, Int){
        return (self.alto, self.ancho)
    }
}

var hd = Pantalla(alto: 1024, ancho: 800)
var vga = Pantalla(alto: 360, ancho: 360)

hd.resolucion()
vga.resolucion()//aplicacion de struct

/*-------------------------------------*/

//Extension
extension Int{
    var dias:Int{
        return self*12*30
    }
    
    func horas()-> Int{
        return self*24*60
    }
}
3.dias
3.horas()

/*----------------------------------------*/

//Optional
var ciudad = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = ciudad["DF"]

if let temp = ciudad["DF"]{
    print("si existe")
}else{
    print("no existe")
}
