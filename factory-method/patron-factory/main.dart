import 'generador-excel.dart';
import 'generador-json.dart';
import 'generador-reportes.dart';
import 'generador-texto.dart';

void main() {
  final calificaciones = [9, 8, 7, 0, 7, 0, 9];
  final generadores = <GeneradorReportes>[
    GeneradorExcel(),
    GeneradorJson(),
    GeneradorTexto(),
  ];

  for (final generador in generadores) {
    generador.generarReporte(calificaciones);
  }
}
