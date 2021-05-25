import "dart:io";
void main (){
print("Calculadora del perimetro de un hexagono \n Ingresa la medida de uno de sus lados");
String lado=stdin.readLineSync();
double valor_lado=double.parse(lado);
double perimetro=(valor_lado*6);
print("El valor del perimetro es $perimetro");
}