class User {
  final String name;
  final String fraction;
  final String avatar;
  final String id;

  User({
    required this.name,
    required this.fraction,
    required this.avatar,
    required this.id
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      fraction: json['fraction'],
      avatar: json['avatar'],
      id: json['id'],
    );
  }
}