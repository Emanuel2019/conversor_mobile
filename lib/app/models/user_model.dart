class UserModel {
  String? id;
  String name;
  String email;
  String password;
  String role;
  String country;
  String phone;
  String photo;
  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.role,
    required this.country,
    required this.phone,
     required this.photo,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"] as String,
      name: json["name"] as String,
      email:json["email"] as String,
      password: json["password"] as String,
      role: json["role"] as String,
      country: json["country"] as String,
      phone: json["phone"] as String,
      photo: json["photo"] as String,
      
    );
  }
}
