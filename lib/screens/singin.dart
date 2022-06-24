import 'package:flutter/material.dart';
import 'package:rapido/constant.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColour,
        // appBar: AppBar(),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Create your account',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                'Already have an account',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('LogIn'))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Lexend Deca'),
            decoration: InputDecoration(
              hintText: 'Enter your email',
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                fontFamily: 'Lexend Deca'),
            decoration: InputDecoration(
              hintText: 'Enter your /',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
