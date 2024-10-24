import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPagetState();
}

class _LoginPagetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView( // Menambahkan SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(50.0), // Mengatur ukuran lebar untuk email dan password
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tempat Wisata',
                style: TextStyle(
                  fontFamily: 'billabong',
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 100), // Jarak antara "Tempat Wisata" dan email/password
              
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 25), // Jarak antara input email/password dan tombol Login
              
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0), // Jarak antara tombol Login dan "Create New Account"
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text('Login'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // Ini belum dibuat
                },
                child: const Text('Create New Account'),
              ),
              const SizedBox(height: 30), // Jarak tambahan untuk memastikan "Create New Account" memiliki spasi yang baik
            ],
          ),
        ),
      ),
    );
  }
}
