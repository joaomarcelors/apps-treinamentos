import 'package:flutter/material.dart';
import 'package:treinamento1_app/data/dummy_data.dart';
import 'package:treinamento1_app/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 170,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(200)),
              child: Image.asset(
                'assets/images/camera.jpg',
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            title: Text(
              'UserXXX',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Usuários',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text('Lista de Usuários'),
          trailing: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ver mais',
                  style: TextStyle(color: Theme.of(context).disabledColor),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Theme.of(context).disabledColor,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
        for (var user in DUMMY_USERS) 
          UserCard(user)
      ],
    );
  }
}
