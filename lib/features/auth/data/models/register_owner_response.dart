class RegisterOwnerResponse {
  final String? message;

  RegisterOwnerResponse({this.message});

  factory RegisterOwnerResponse.fromJson(Map<String, dynamic> json) {
    return RegisterOwnerResponse(
      message: json['message'],
    );
  }
}