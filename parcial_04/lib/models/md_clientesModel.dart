class MD_Clientes{
  String id_cliente="";
  String nombre="";
  String apellidos="";
  String direccion="";
  String ciudad="";

  String getIdCliente() {
    return id_cliente;
  }

  void setIdCliente(String data) {
    id_cliente = data.trim();
  }

  String getNombre() {
    return nombre;
  }

  void setNombre(String data) {
    nombre = data.trim();
  }

  String getApellidos() {
    return apellidos;
  }

  void setApellidos(String data) {
    apellidos = data.trim();
  }

  String getDireccion() {
    return direccion;
  }

  void setDireccion(String data) {
    direccion = data.trim();
  }

  String getCiudad() {
    return ciudad;
  }

  void setCiudad(String data) {
    ciudad = data.trim();
  }
  
}