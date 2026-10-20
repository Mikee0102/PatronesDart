import 'documento.dart';
import 'generador-reportes.dart';
import 'documento-texto.dart';

class GeneradorTexto extends GeneradorReportes {
  @override
  Documento crearDocumento() {
    return DocumentoTexto();
  }
}
