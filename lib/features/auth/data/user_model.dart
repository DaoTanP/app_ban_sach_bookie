class User {
  String id;
  String username;
  String password;

  User({required this.id, required this.username, required this.password});

  static List<User> userList() {
    return [
      User(id: '01', username: 'user1', password: 'user1'),
      User(id: '02', username: 'user2', password: 'user2'),
      User(id: '03', username: 'user3', password: 'user3'),
      User(id: '04', username: 'user4', password: 'user4'),
    ];
  }
}
