import 'documento.dart';
import 'dart:convert';

class DocumentoJson implements Documento{
  @override
  String generar(List<int> calificaciones) {
    //Aquí debe estar el proceso para crear el archivo JSON
    return jsonEncode({'calificaciones': calificaciones});
  }
}