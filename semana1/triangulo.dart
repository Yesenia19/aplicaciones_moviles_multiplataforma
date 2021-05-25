import "dart:io";
void main (){
print("Calculadora del area de un triangulo \n Ingresa la altura del triangulo");
String altura=stdin.readLineSync();
print(" Ingresa la medida de la base");
String base=stdin.readLineSync();
double valor_base=double.parse(base);
double valor_altura=double.parse(altura);
double area=(valor_base*valor_altura)/2;
print("El area del triangulo es: $area");
}