import "dart:io";
List datos=[];
void main(){
  final objeto_sensor = new sensores();
  objeto_sensor.agregar();
}

class sensores{
  void insertar(){
    print("Ingresa los siguientes datos \n id_sensor: ");
    String id_sensor=stdin.readLineSync(); 
    print("Valor: ");
    String valor=stdin.readLineSync();
    print("Fecha del registro(DD/MM/AAAA): ");
    String fecha_registro=stdin.readLineSync();
    Map <String, dynamic> sensor={
    "id_sensor":id_sensor,
    "valor":valor,
    "fecha_registro": fecha_registro
    };
    datos.add(sensor);
  }
  void leer(){
    print("Registros \n $datos ");
  }

  agregar(){
    print("Registros a ingresar: ");
    String registro=stdin.readLineSync();
    int registros=int.parse(registro);

    for (int i=0; i<registros; i++){
      insertar();
    }
    leer();
  }
}
