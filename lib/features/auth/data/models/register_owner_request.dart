class RegisterOwnerRequest {
  final String name;
  final String email;
  final String password;
  final String ruc;
  final String parkingName;
  final String parkingAddress;

  RegisterOwnerRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.ruc,
    required this.parkingName,
    required this.parkingAddress,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    'ruc': ruc,
    'parkingName': parkingName,
    'parkingAddress': parkingAddress,
  };
}