class User {
  final String uid;
  final String username;
  final int age;
  final String sex;
  final String email;
  final String address;
  final String profileImageUrl;
  final String password;

  User({
    required this.uid,
    required this.username,
    required this.age,
    required this.sex,
    required this.email,
    required this.address,
    required this.profileImageUrl,
    required this.password,
  });

  // Convert User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'username': username,
      'age': age,
      'sex': sex,
      'email': email,
      'address': address,
      'profileImageUrl': profileImageUrl,
      'password': password,
    };
  }

  // Convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid: json['uid'],
      username: json['username'],
      age: json['age'],
      sex: json['sex'],
      email: json['email'],
      address: json['address'],
      profileImageUrl: json['profileImageUrl'],
      password: json['password'],
    );
  }
}
