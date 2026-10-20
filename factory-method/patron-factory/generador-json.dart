import 'documento.dart';
import 'generador-reportes.dart';
import 'documento-json.dart';

class GeneradorJson extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoJson();
  }
}
