import 'configuraciones.dart';

void main() {
  final pantallaInicio = Configuraciones('es');
  final pantallaPerfil = Configuraciones('en');

  print('Idioma de la pantalla de inicio: ${pantallaInicio.idioma}');
  print('Idioma de la pantalla de inicio: ${pantallaPerfil.idioma}');

  print(identical (pantallaInicio, pantallaPerfil));
}
