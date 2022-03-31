import 'package:flutter/material.dart';
import 'package:treinamento1_app/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8),
          height: 120,
          //alignment: Alignment.center,
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                user.imagem,
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
            title: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'User ${user.name}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              child: Text('Detalhes'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue.shade600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
