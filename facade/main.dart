import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';
import 'cine-facade.dart';

void main() {

  final cine = CineFacade(
    Proyector(),
    SistemaAudio(),
    Reproductor(),
  );

  //Iniciar la pelicula
  cine.verPelicula('Juntos por siempre', 25);

  // Detener la pelicula
  cine.terminarPelicula();

  
  //La fachada coordina todos los pasos para lograr el objetivo 
  // El usuario dev solo conoce los metodos de la fachada y no tiene que preocuparse por los detalles de implementación de cada clase involucrada en el proceso.
  //El procedimiento se concentra en una sola clase, Facade 
  //El usuario no dev no necesita cononcer a las clases involucradas en el proceso, solo necesita conocer la fachada y sus metodos para lograr el objetivo de reproducir una pelicula.
}