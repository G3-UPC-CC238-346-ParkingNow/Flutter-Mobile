class LoginResponse {
  final String token;
  final String? message; // Si tu backend devuelve mensaje opcional

  LoginResponse({
    required this.token,
    this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      message: json['message'],
    );
  }
}