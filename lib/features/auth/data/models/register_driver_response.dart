class RegisterDriverResponse {
  final String? message;

  RegisterDriverResponse({this.message});

  factory RegisterDriverResponse.fromJson(Map<String, dynamic> json) {
    return RegisterDriverResponse(
      message: json['message'],
    );
  }
}