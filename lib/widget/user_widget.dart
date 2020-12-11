import 'package:flutter/material.dart';
import 'package:riverpod_modifiers_example/page/modifiers/user_helper.dart';

class UserWidget extends StatelessWidget {
  final User user;

  const UserWidget({
    @required this.user,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black12,
            backgroundImage: NetworkImage(user.urlAvatar),
            radius: 80,
          ),
          const SizedBox(height: 24),
          buildHeader('Name:', user.name),
          const SizedBox(height: 8),
          buildHeader('Age:', user.age.toString()),
          const SizedBox(height: 8),
          buildHeader('Gender:', user.gender),
        ],
      );

  Widget buildHeader(String header, String value) => Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Container(
              width: 120,
              child: Text(
                header,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 120,
              child: Text(
                value,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Spacer(),
          ],
        ),
      );
}
