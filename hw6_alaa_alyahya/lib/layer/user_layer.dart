import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:hw6_alaa_alyahya/model/user_model.dart';

class User {
  List<UserModel> users = [];
  final box = GetStorage();

  User() {
    getUser;
  }


  saveUser({required String username, required String email}) async {
    final userInfo = UserModel(username: username, email: email);
    users.add(userInfo);

    List userEncodable = [];
    for (var e in users) {
      userEncodable.add(e.toMap());
    }
    await box.write("user",
    //  jsonEncode(
      userEncodable
    //  )
     );
    print(users.toString());
  }

  getUser() {
    if (box.hasData("user")) {
      final userList = 
      // jsonDecode(
        box.read("user");
        // );

      for (var element in userList) {
        print("-------");
        users.add(UserModel.fromJson(element));
      }
    }
  }
}
