import 'package:flutter/material.dart';
import 'package:treinamento1_app/data/dummy_data.dart';
import 'package:treinamento1_app/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                height: 170,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                margin: const EdgeInsets.all(22),
                height: 75,
                //width: 75,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/camera.jpg',
                        fit: BoxFit.cover,
                        height: 75,
                        width: 75,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'UserXXX',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
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
          for (var user in DUMMY_USERS) UserCard(user)
        ],
      ),
    );
  }
}
