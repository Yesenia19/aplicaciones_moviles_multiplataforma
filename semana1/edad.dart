import "dart:io";
void main (){
print("Calculadora de edad de perros a humanos  \n Ingresa edad del perro: ");
String edad=stdin.readLineSync();
int edad_perro=int.parse(edad);
int edad_humano = edad_perro * 7;
print("La edad del perro en años humanos es $edad_humano");
}