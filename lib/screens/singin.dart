import 'package:flutter/material.dart';
import 'package:rapido/constant.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rapido/screens/location.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColour,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          )),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 10, 16, 5),
            child: Text(
              'Create your account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),
            child: Row(
              children: [
                const Text(
                  'Already have an account',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'LogIn',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 16, 10),
            child: ListTile(
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 10),
            child: ListTile(
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
                  suffixIcon: const Icon(Icons.visibility),
                  // labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 10),
            child: ListTile(
              title: const Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              //  TextFormField(
              //   style: const TextStyle(
              //       fontWeight: FontWeight.normal,
              //       fontSize: 14,
              //       fontFamily: 'Lexend Deca'),
              //   decoration: InputDecoration(
              //     hintText: 'Enter your Phoneno',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //   ),
              // ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 5, 30, 10),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Location()),
                  );
                },
                child: const Text("SignUp"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    side: const BorderSide(width: 1.0, color: Colors.purple),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Or sign up with social account',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                    height: 50,
                    width: 150,
                    child: Image(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png"))),
                SizedBox(
                    height: 50,
                    width: 150,
                    child: Image(
                        image: NetworkImage(
                            "http://assets.stickpng.com/images/58e9196deb97430e819064f6.png")))
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                const Text(
                  'By clicking "Singn Up" you agree to our',
                  style: TextStyle(
                      fontSize: 11,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'term and conditions',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
            subtitle: Row(
              children: [
                const Text(
                  'as well as our ',
                  style: TextStyle(
                      fontSize: 11,
                      // fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'privacy policy',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
