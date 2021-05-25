import "dart:io";
void main (){
print("Calculadora de pokemones en un rectangulo \n Ingresa la medida de la altura del rectangulo: ");
String altura=stdin.readLineSync();
print("Ingresa el valor de la base del rectangulo: ");
String ancho=stdin.readLineSync();
double valor_ancho=double.parse(ancho);
double valor_altura=double.parse(altura);
double area = valor_ancho * valor_altura;
double pokemon = area / 30;
print("En el rectangulo caben $pokemon pokemones");
}