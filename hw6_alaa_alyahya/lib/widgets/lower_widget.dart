import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw6_alaa_alyahya/helper/extintion.dart';
import 'package:hw6_alaa_alyahya/layer/user_layer.dart';
import 'package:hw6_alaa_alyahya/widgets/user_info_widget.dart';

class ListOfUsers extends StatefulWidget {
  const ListOfUsers({super.key});

  @override
  State<ListOfUsers> createState() => _ListOfUsersState();
}

class _ListOfUsersState extends State<ListOfUsers> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              width: context.screenWidget() * 0.9,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (GetIt.I.get<User>().users.length.toString().isNotEmpty)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Number of Users:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          GetIt.I.get<User>().users.length.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ...GetIt.I
                .get<User>()
                .users
                .map(
                  // .getUser()(
                  (user) => UserInfo(name: user.username!, email: user.email!),
                )
                .toList()
          ],
        ),
      ],
    );
  }
}
