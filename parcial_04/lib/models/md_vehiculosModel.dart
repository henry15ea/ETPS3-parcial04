class MD_Vehiculos{
  String id_vehiculo = "";
  String marca = "";
  String modelo = "";

  void setIdVehiculo(String data) {
    id_vehiculo = data.trim();
  }

  String getIdVehiculo() {
    return id_vehiculo;
  }

  void setMarca(String data) {
    marca = data.trim();
  }

  String getMarca() {
    return marca;
  }

 void setModelo(String data) {
    modelo = data.trim();
  }

  String getModelo() {
    return modelo;
  }

}