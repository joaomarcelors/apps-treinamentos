import 'package:flutter/material.dart';
import 'package:treinamento1_app/models/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        //height: 140,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      user.imagem,
                      fit: BoxFit.cover, //aplia para caber top
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 24,
                  ),
                  alignment: Alignment.topCenter,
                  child: Text(
                    'User${user.name}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Detalhes', style: TextStyle(fontSize: 16),),
              style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap, //remove os padding interno vindo por padrao do botao
                //padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                minimumSize: MaterialStateProperty.all(Size(100, 35)),
                //maximumSize: MaterialStateProperty.all(Size.zero),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue.shade700
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
