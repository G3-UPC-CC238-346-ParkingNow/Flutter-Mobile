class VerifyCodeResponse {
  final String? message;
  final bool success;

  VerifyCodeResponse({
    required this.success,
    this.message,
  });

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) {
    return VerifyCodeResponse(
      success: json['success'],
      message: json['message'],
    );
  }
}