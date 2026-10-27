// un tipo de observador que representa un panel de alumno
import 'observador.dart';

class PanelAlumno implements Observador{
  void actualizar(String tarea){
    print("El alumno ha recibido la tarea: $tarea");
  }
}