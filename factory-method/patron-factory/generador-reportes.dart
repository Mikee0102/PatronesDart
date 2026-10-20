import 'documento.dart';

abstract class GeneradorReportes {
  // Este es el factory method, que será implementado por las subclases concretas
  Documento crearDocumento();

  void generarReporte(List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones.');
    }

    final documento = crearDocumento();
    final reporte = documento.generar(calificaciones);
    print(reporte);
  }
}