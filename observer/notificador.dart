//observer
import 'observador.dart';

class Notificador implements Observador{
  void actualizar(String tarea){
    print("Se ha notificado la tarea: $tarea");
  }
}

