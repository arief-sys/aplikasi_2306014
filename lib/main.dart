import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // global key
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    //jika login berhasil
    if (_formKey.currentState!.validate()) {
      String username = usernameController.text;
      String password = passwordController.text;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login berhasil $username - $password')),
      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: username)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halaman Login',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username tidak boleh kosong';
                  }
                  if (value.length < 4) {
                    return 'Username minimal 4 huruf';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password tidak boleh kosong';
                  }
                  if (value.length < 4) {
                    return 'Password minimal 4 huruf';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  login();
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
