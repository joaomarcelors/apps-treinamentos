import 'package:flutter/material.dart';

class TesteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(20),
          //height: 140,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/image2.jpg',
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
                  'User x',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 100,
                //width: 110,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  
                  onPressed: () {},
                  child: Text('Detalhes'),
                  style: ButtonStyle(
                    //fixedSize: MaterialStateProperty.all(Size(100, 10)),
                    
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    minimumSize: MaterialStateProperty.all(Size(100, 30)),
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
            ],
          ),
        ),
      ),
    );
  }
}
