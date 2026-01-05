class User {
  final String firstName;
  final String lastName;
  final String email;
  final String avatarUrl;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatarUrl,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['name']['first'],
      lastName: json['name']['last'],
      email: json['email'],
      avatarUrl: json['picture']['large'],
    );
  }

  String get fullName => '$firstName $lastName';
}
