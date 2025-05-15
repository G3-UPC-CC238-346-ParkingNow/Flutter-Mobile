class RegisterDriverRequest {
  final String name;
  final String email;
  final String password;
  final String plate;
  final String dni;

  RegisterDriverRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.plate,
    required this.dni,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'plate': plate,
    'dni': dni,
  };
}