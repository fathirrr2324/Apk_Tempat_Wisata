import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class LoginPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView( // Menggunakan SingleChildScrollView untuk menghindari overflow
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Travelya',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'billabong',
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 40),

              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              ),
              const SizedBox(height: 16),

              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 22),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Create New Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
