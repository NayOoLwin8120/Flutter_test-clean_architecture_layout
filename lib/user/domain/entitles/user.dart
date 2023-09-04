import 'package:equatable/equatable.dart';

 class User extends Equatable {
  final int userid;
  final int id;
  final String title;
  final bool completed;

  // const User(this.userid, this.id, this.title, this.completed);
  const User(this.userid, this.id, this.title, this.completed);

  @override
  List<Object?> get props => [userid, id, title, completed];
}
