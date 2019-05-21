enum Velocidades :Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        let actual = velocidad.rawValue
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            return (actual,"Apagado")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (actual,"Velocidad baja")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (actual,"Velocidad media")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (actual,"Velocidad alta")
        }
    }
}

var auto = Auto()

for _ in 1...20{
    let velocidadActual = auto.cambioDeVelocidad()
    print("\(velocidadActual.actual), \(velocidadActual.velocidadEnCadena)")
}
