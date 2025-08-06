import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print(
      'Seleccione una opción: \n' +
          '1. Velocidad de un automovil. \n' +
          '2. Promedio del estudiante. \n' +
          '3. Partidos ganados. \n' +
          '4. Planilla de empleado. \n' +
          '5. Hallar la hipotenusa. \n' +
          '6. Horno de casa. \n' +
          '7. Salir'
    );
    int? opcion = int.tryParse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
      /* 1. Se desea calcular la distancia recorrida (D) por un automóvil que tiene velocidad constante
      (m/s) durante un tiempo T (Sg), considerar que es un MRU (Movimiento Rectilíneo
      Uniforme). Tenga en cuenta que la formula del movimiento rectilíneo es: D = V * T */

        print('Ingrese la velocidad de automovil: ');
        double? velocidad = double.tryParse(stdin.readLineSync()!);
        print('Ingrese el tiempo de recorrido del automovil: ');
        double? tiempo = double.tryParse(stdin.readLineSync()!);

        double result = distancia(velocidad!, tiempo!);
        print('El resultado es: $result');
        print('');

        break;
      case 2:
      /*2. Se necesita obtener el promedio de un estudiante a partir de sus tres notas parciales. El
      estudiante debe digitar sus tres notas y el sistema deberá darle el promedio del semestre. */
        print('Ingrese su primera nota: ');
        double? nota1 = double.tryParse(stdin.readLineSync()!);
        print('Ingrese su segunda nota: ');
        double? nota2 = double.tryParse(stdin.readLineSync()!);
        print('Ingrese su tercera nota: ');
        double? nota3 = double.tryParse(stdin.readLineSync()!);

        double result = promedio(nota1!, nota2!, nota3!);
        print('Tu promedio es de: $result');

        print('');

        break;
      case 3:
        /*3. Elaborar un algoritmo que permita ingresar el número de partidos ganados, perdidos y
        empatados, de un equipo en un torneo de futbol. Se debe de imprimir el puntaje total del
        equipo, tenga en cuenta que:
        a. Por cada partido ganado obtendrá 3 puntos.
        b. Por cada partido empatado 1 punto.
        c. Por cada partido perdido 0 puntos.
        Se desea imprimir la cantidad de partidos ganados, perdidos, empatados y el cálculo
        completo de la cantidad de puntos obtenidos del equipo de futbol. */

        print('Ingrese los partidos ganados: ');
        int? partidosGanados = int.tryParse(stdin.readLineSync()!);
        print('Ingrese los partidos empatados: ');
        int? partidosEmpatados = int.tryParse(stdin.readLineSync()!);
        print('Ingrese los partidos perdidos: ');
        int? partidosPerdidos = int.tryParse(stdin.readLineSync()!);

        int puntaje = partidos(partidosGanados!, partidosEmpatados!, partidosPerdidos!);
        print('El puntaje del equipo es: $puntaje \n' +
          'Partidos ganados: $partidosGanados \n' +
          'Partidos empatados: $partidosEmpatados \n' +
          'Partidos perdidos: $partidosEmpatados'
        );

        print('');

        break;
      case 4:
        /*4. Se requiere el algoritmo para elaborar la planilla de un empleado. Para ello se debe digitar:
        nombre del empleado, la cantidad de horas laboradas en el mes y la tarifa por hora. Se debe
        calcular el total devengado por el empleado en el mes e imprimir: Nombre del empleado,
        cantidad de horas laboradas y total devengado. */

        print('Ingrese el nombre del empleado: ');
        String? name = stdin.readLineSync();

        print('Ingrese las horas lavoradas: ');
        int? hour = int.tryParse(stdin.readLineSync()!);
        
        print('Ingrese la tarifa por hora: ');
        int? tarifa = int.tryParse(stdin.readLineSync()!);

        int totalDevengado = empleado(hour!, tarifa!);

        print('Nombre: $name \n' +
          'Horas lavoradas: $hour \n' +
          'Total devengado: $totalDevengado'
        );

        print('');

        break;
      case 5:
        /*5. Se tiene un triángulo rectángulo cuyos lados deberán ser digitados por el usuario. Se debe
        hallar la hipotenusa teniendo en cuenta la formula: H = raíz cuadrada (a**2 + b**2) */

        print('Ingrese el lado a: ');
        double? ladoA = double.tryParse(stdin.readLineSync()!);

        print('Ingrese el lado b: ');
        double? ladoB = double.tryParse(stdin.readLineSync()!);

        double hipotenusa = triangulo(ladoA!, ladoB!);

        print('La hipotenusa: $hipotenusa');

        print('');

        break;
      case 6:
        /*6. Se tiene un horno en casa con temperaturas en grados Celsius (centígrado), requiere
        transformar la temperatura de 70°C a grados Fahrenheit. Para ello tenga en cuenta la
        siguiente fórmula. F = (C * 1.8) + 32 */

        double Celsius = 70;
        double Fahrenheit =  temperatura(Celsius!);

        print('La temperatura en grados Fahrenheit es: $Fahrenheit');

        print('');
        break;
      case 7:
        return;
      
    }
  }
}

double distancia(double v, double t) {
  return (v * t);
}

double promedio(double a, double b, double c) {
  return (a + b + c) / 3;
}

int partidos(int G, int E, int P) {
  return (G * 3) + (E * 1) + (P * 0);
}

int empleado(int hora, int tarifa) {
  return (hora * tarifa);
}

double triangulo(double a, double b) {
  return pow(a, 2).toDouble() + pow(b, 2).toDouble();
}

double temperatura(double C) {
  return (C * 1.8) + 32;
}
