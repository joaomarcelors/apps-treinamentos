import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {
  
  GlobalKey<FormState> _form = GlobalKey();
  final _passwordController = TextEditingController();
  final Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  Widget _createFormField({required Widget child}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      height: 60,
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Form(
        key: _form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createFormField(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 28,
                  ),
                  hintText: 'E-mail',
                  hintStyle: TextStyle(
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Informe um e-mail válido!';
                  }
                  return null;
                },
                onSaved: (value) => _authData['email'] = value!,
              ),
            ),
            _createFormField(
              child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: _passwordController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 28,
                  ),
                  hintText: 'Senha',
                  hintStyle: TextStyle(
                    fontSize: 18,
                  ),
                  border: InputBorder.none,
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty || value.length < 5) {
                    return 'Informe uma senha válida!';
                  }
                  return null;
                },
                onSaved: (value) => _authData['password'] = value!,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ENTRAR',
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
