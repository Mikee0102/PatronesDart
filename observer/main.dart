import 'agenda.dart';
import 'panel-alumno.dart';
import 'notificador.dart';
import 'historial.dart';

void main() {
  final agenda = Agenda();
  final PanelAlumno panel= PanelAlumno();
  final notificador = Notificador();
  final historial = Historial();

  //Suscribimos los observadores a la agenda
  agenda.suscribir(panel);
  agenda.suscribir(notificador);
  agenda.suscribir(historial);

  agenda.publicarTarea("Completar el informe");

  //El usuario ya no quiere recibir notificaciones, por lo que se desuscribe
  agenda.desuscribir(notificador);

  //Se genera otra tarea, pero el notificador ya no recibirá la actualización
  agenda.publicarTarea("investigar el tema de la próxima clase");
}

//cuando conviene: cuando varios componentes necesitan estar al tanto de los cambios en un objeto, y queremos mantener un bajo acoplamiento entre ellos.
//necesitan reaccionar al mismo cambio
//y sus suscqriptores pueden cambiar dinámicamente durante la ejecución del programa.
//No implica ejecución de código en paralelo, ni tampoco implica que los observadores se ejecuten en hilos separados. Simplemente significa que los observadores se notifican de los cambios en el sujeto y pueden reaccionar a esos cambios según sea necesario.