import 'proyector.dart';
import 'reproductor.dart';
import 'sistema-audio.dart';

class CineFacade{
  final Proyector _proyector;
  final SistemaAudio _audio;
  final Reproductor _reproductor;

  CineFacade(
    this._proyector,
    this._audio,
    this._reproductor,
  );

  void verPelicula(String pelicula, int volumen){
    _proyector.encender();
    _audio.encender();
    _audio.ajustarVolumen(volumen);
    _reproductor.reproducir(pelicula);
  }
  // con facade se agrupan todos los llamdos a clases y metodos involucrados en reproducir la pelicula, en un solo metodo

  void terminarPelicula(){
    _reproductor.detener();
    _audio.apagar();
    _proyector.apagar();
  }
}