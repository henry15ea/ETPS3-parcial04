class MD_ClienteVehiculo{
  String id_cliente = "";
  String id_vehiculo = "";
  String skilometros = "";
  String smatricula = "";

  String getIdCliente() {
    return id_cliente;
  }

  void setIdCliente(String data) {
    id_cliente = data.trim();
  }

  String getIdVehiculo() {
    return id_cliente;
  }

  void setIdVehiculo(String data) {
    id_vehiculo = data.trim();
  }

String getSKilometros() {
    return skilometros;
  }

  void setSKilometros(String data) {
    skilometros = data.trim();
  }
  String getSMatricula() {
    return smatricula;
  }

  void setSMatricula(String data) {
    smatricula = data.trim();
  }

}