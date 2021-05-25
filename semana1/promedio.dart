import "dart:io";
void main (){
print("Calculadora del promedio de calificaciones \n Ingresa la calificacion 1: ");
String cal1=stdin.readLineSync();
print("Ingresa la calificacion 2: ");
String cal2=stdin.readLineSync();
print("Ingresa la calificacion 3: ");
String cal3=stdin.readLineSync();
double cal_1=double.parse(cal1);
double cal_2=double.parse(cal2);
double cal_3=double.parse(cal3);
double promedio=(cal_1*0.20) + (cal_2*0.30) + (cal_3*0.50);
print("El promedio de calificaciones es $promedio");
}