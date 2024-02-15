import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw6_alaa_alyahya/helper/extintion.dart';
import 'package:hw6_alaa_alyahya/layer/user_layer.dart';
import 'package:hw6_alaa_alyahya/model/user_model.dart';
import 'package:hw6_alaa_alyahya/widgets/button_widget.dart';
import 'package:hw6_alaa_alyahya/widgets/textfied_widget.dart';

class UpperSection extends StatelessWidget {
  UpperSection({super.key});

  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final box = GetStorage();
  // final UserModel? user;


  @override
  Widget build(BuildContext context) {
    return 
    Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(15),
        height: context.screenHeight() * .5,
        width: context.screenWidget() * 0.9,
        decoration:  BoxDecoration(
          color: Colors.purple.shade50,
        ),
        child: Column(
          children: [
            TextFieldWidget(
                hintText: "Enter Your Name",
                labelText: "Name",
                icon: Icons.person,
                clearButton: ButtonWidget(buttonText: "Clear", action: (){ userName.clear();}),
                controller: userName,              
             ),
      
             const SizedBox(height: 15,),
      
             TextFieldWidget(
                hintText: "Enter Your Email",
                labelText: "Email",
                icon: Icons.email,
                clearButton: ButtonWidget(buttonText: "Clear", action: (){ email.clear();}),
                controller: email,              
             ),

              const SizedBox(height: 35,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonWidget(
                    buttonText: "Add",
                    action:(){
                     GetIt.I.get<User>().saveUser(username: userName.toString(), email: email.toString());
                  
                    },
                  ),

                  const SizedBox(width: 10,),

                  ButtonWidget(
                    buttonText: "Clear List",
                    action:(){
                      box.erase();
                    },
                  ),                 
                ],
              ),
          ],
        ),      
      ),
    );
  }
}