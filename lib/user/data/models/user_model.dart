import 'package:testing_app/user/domain/entitles/user.dart';

// class UserModel extends User {
//   const UserModel(super.userid, super.id, super.title, super.completed);

//   // // by using factory
//   // factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//   //     userid: json['userId'],
//   //     id: json['id'],
//   //     title: json['title'],
//   //     completed: json['completed']);
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         userid: json['userid'],
//       );
//   // api response data
//   Map<String, dynamic> toJson() =>
//       {"userId": userid, "id": id, "title": title, "completed": completed};
// }

class UserModel extends User {
  @override
  const UserModel({
    required int userid,
    required int id,
    required String title,
    required bool completed,
  }) : super(userid, id, title, completed);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      userid: json["userId"],
      id: json["id"],
      title: json['title'],
      completed: json['completed']);
  Map<String, dynamic> toJson() =>
      {"userId": userid, "id": id, "title": title, "completed": completed};
}
