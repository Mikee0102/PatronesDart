import 'documento.dart';

class DocumentoExcel implements Documento {

  @override
  String generar (List<int> calificaciones) {
    //Aquí debe estar el proceso para crear el archivo de Excel
    return 'Calificaciones en formato Excel : ${calificaciones.join(', ')}';
  }
}