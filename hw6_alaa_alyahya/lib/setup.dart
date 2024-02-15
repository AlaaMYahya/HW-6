
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw6_alaa_alyahya/layer/user_layer.dart';

setup() async {
 await GetStorage.init();

 GetIt.instance;
 GetIt.I.registerSingleton<User>(User());

}