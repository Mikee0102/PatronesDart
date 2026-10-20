import 'servicio-pago.dart';
import 'terminal-externa.dart';


class Tienda {
  //Problema 1:  La tienda tiene dos servicios de pago, uno en pesos y otro en dolares, pero no se pueden modificar.
  final ServicioPago servicioPago;
  final TerminalExterna terminalExterna;

  Tienda(this.servicioPago, this.terminalExterna);

  void finalizarCompra(double total, String metodo){
    if (metodo == 'servicio'){
      servicioPago.pagar(total);
    } else if (metodo == 'terminal'){
      terminalExterna.cobrar(total);
    }else if (metodo == 'terminal'){
      // Problema2: La tienda debe convertir pesos a dolares
      //NO es su responsabilidad
      terminalExterna.cobrar((total / 18.0));
    }else {
      throw ArgumentError('Método de pago no válido');
    }
  }

}