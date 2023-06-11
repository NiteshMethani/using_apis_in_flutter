class User {
  User({
    required this.uid,
    required this.name,
    required this.email,
    required this.status,
    required this.gender,
  });

  final int uid;
  final String name;
  final String email;
  final String status;
  final String gender;

  factory User.fromJSON(Map<String, dynamic> data) {
    return User(
      uid: data['id'],
      name: data['name'],
      email: data['email'],
      status: data['status'],
      gender: data['gender'],
    );
  }
}
