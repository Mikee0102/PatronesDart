import 'medio-de-pago.dart';

class ServicioPago implements MedioDePago{
  void pagar(double pesos){
    print ('Servicio de pago: ${pesos} pesos');
  }
}