import "dart:io";
List agenda=[];
void main(){
  print("AGENDA \n Opcion 1: Visualizar contactos \n Opcion 2: Agregar nuevo contato \n Opcion 3: Modificar un registro \n Opcion 4: Eliminar un registro");
  print("----------------------------------------------------------");
  String respuesta=stdin.readLineSync();
  int opcion=int.parse(respuesta);
  if (opcion == 1){
  mostrar();
  print("----------------------------------------------------------");
  main();
  }
  if (opcion == 2){
  agregar();
  print("----------------------------------------------------------");
  main();
  }
  if (opcion == 3){
  modificar();
  print("----------------------------------------------------------");
  main();
  }
  if (opcion == 4){
  elimina();
  print("----------------------------------------------------------");
  main();
  }
  else{
  print("Opcion no valida \n ----------------------------------------------------------");
  main();
  }
}

void agregar(){
print("Funcion ingresar nuevo contacto \n Ingresa nombre de la persona: ");
String nombre=stdin.readLineSync();
print("Ingresa telefono de la persona: ");
String tel=stdin.readLineSync();
int telefono=int.parse(tel);
print("Ingresa E-mail de la persona: ");
String email=stdin.readLineSync();

Map <String, dynamic> persona={
"nombre":nombre,
"telefono":telefono,
"correo": email
};
agenda.add(persona);
}

void mostrar(){
  print("Contactos \n $agenda ");
}

void modificar(){
  print("Funcion modificar contactos \n ");
  mostrar();
  print("Nombre de la persona a modificar (Exactamente como se encuentra registrado): ");
  String modificar=stdin.readLineSync();

  for (int i=0; i<agenda.length; i++){
    var persona_modificar= new Map();
    persona_modificar= agenda[i];


  if (modificar== persona_modificar["nombre"])
  {
    print("Ingresa el nuevo nombre de la persona");
    String nombre=stdin.readLineSync();
    print("Ingresa el nuevo telefono de la persona");
    String tel=stdin.readLineSync();
    int telefono=int.parse(tel);
    print("Ingresa el nuevo email de la persona");
    String email=stdin.readLineSync();  
    persona_modificar["nombre"]=nombre;
    persona_modificar["telefono"]=telefono;
    persona_modificar["correo"]=email;
    agenda[i]=persona_modificar;
    print(agenda);
  }
} 
}
void elimina(){
  print("Funcion eliminar contacto \n $agenda \n Nombre de la persona a eliminar (Exactamente como se encuentra registrado): ");
  String eliminar=stdin.readLineSync();
  for (int i=0; i<agenda.length; i++){
    var persona_eliminar= new Map();
    persona_eliminar= agenda[i];
      if (eliminar== persona_eliminar["nombre"])
      {
      agenda.removeAt(i);
      print("Datos eliminados!!");
      }
      
}
}