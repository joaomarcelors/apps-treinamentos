import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  'assets/images/camera.jpg',
                  fit: BoxFit.fill,
                ),
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
          ),
        ],
      ),
      // appBar: AppBar(

      //   leading: Container(
      //     height: 1000,
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(110),
      //       child: Image.asset('assets/images/camera.jpg'),
      //     ),
      //   ),
      //   title: Text('UserXXX'),
      // ),
    );
  }
}
