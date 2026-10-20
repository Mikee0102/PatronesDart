// Contrato que necesita la tienda para recibir pagos, pero no puede modificarlo
abstract class MedioDePago {
  void pagar(double pesos);
}