import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:testing_app/user/domain/entitles/user.dart';
import 'package:testing_app/user/presentation/getx/controller/usercontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final UserUsecase = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Test ',
        initialRoute: '/',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: const Column(
            children: [
              Center(child: Text("Flutter Clean Architecture ")),
              // Text("user id : ${User.id}"),
              // Text("user id : ${User.userid}"),
              // Text("user id : ${User.title}"),
              // Text("user id : ${User.completed}"),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            UserUsecase.getUser();
          }),
        ));
  }
}
