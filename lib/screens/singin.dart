import 'package:flutter/material.dart';
import 'package:rapido/constant.dart';
import 'package:rapido/screens/location.dart';

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
          ListTile(
            title: const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: TextFormField(
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Lexend Deca'),
              decoration: InputDecoration(
                hintText: 'Enter your email',
                // labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            title: const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: TextFormField(
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Lexend Deca'),
              decoration: InputDecoration(
                hintText: 'Enter your password',
                // labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: TextFormField(
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  fontFamily: 'Lexend Deca'),
              decoration: InputDecoration(
                hintText: 'Enter your Phoneno',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: SizedBox(
              height: 30,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Location()),
                  );
                },
                child: Text("SignUp"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    side: BorderSide(width: 1.0, color: Colors.purple),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
