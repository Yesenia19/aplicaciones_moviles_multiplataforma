import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  var email;
  var password;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: _formularioLogin(),
    );
  }

  Widget _formularioLogin() {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text('Email'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              maxLength: 50,
              controller: _emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Email"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text('Contraseña'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Contraseña"),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: ElevatedButton(
                  child: Container(child: Text("Login")),
                  onPressed: _loginButton)),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: ElevatedButton(
                  child: Container(child: Text("Registro de ususarios")),
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro');
                  })),
        ]);
  }

  void _loginButton() {
    setState(() {
      email = _emailController.text;
      password = _passwordController.text;
      print(email);
      print(password);
      authUser(email, password);
    });
  }

  void authUser(
    String email,
    String password,
  ) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCaDRh1-V7SEOaT88Aro0oGX-byH2ECwkU');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        //Navigator.popAndPushNamed(context, 'leer');
        Navigator.pushNamed(context, 'read');
      }
      if (response.statusCode == 400) {
        _mensaje();
      }
    } catch (error) {
      print(error.toString());
    }
  }
  void _mensaje() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            content: Text("Los datos ingresados no son correctos, verifiquelos nuevamente"));
      },
    );
  }
}
