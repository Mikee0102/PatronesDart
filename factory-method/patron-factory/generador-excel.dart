import 'documento.dart';
import 'generador-reportes.dart';
import 'documento-excel.dart';

class GeneradorExcel extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoExcel();
  }
}
