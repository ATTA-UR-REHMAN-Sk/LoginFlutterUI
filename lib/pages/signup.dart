import 'package:flutter/material.dart';
import 'package:lgoin_ui/pages/forgetpassword_screen.dart';
import 'package:lgoin_ui/pages/login_screen.dart';
import 'package:lgoin_ui/pages/widgets/custom_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                width: 10,
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('images/logo.png'),
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xff205542)),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik Medium',
                            color: Color.fromARGB(247, 230, 99, 23)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                  child: Text(
                'Sign_Up',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff205542)),
              )),
              const SizedBox(
                height: 14,
              ),
              const Center(
                  child: Text(
                'Login To Maintanence Side We Help  You 24/7\n Its Great For You To Visit There.',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4c5980)),
              )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Name',
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: Icon(Icons.person),
                    prefixIcon: Icon(Icons.title,
                        color: Color.fromARGB(115, 254, 9, 9)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(31, 189, 25, 25))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Contact#',
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: Icon(Icons.contact_phone),
                    prefix: Icon(Icons.mobile_friendly,
                        color: Color.fromARGB(115, 206, 14, 14)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(31, 159, 32, 32))),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: Icon(Icons.email),
                    prefixIcon: Icon(Icons.alternate_email,
                        color: Color.fromARGB(115, 254, 9, 9)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(31, 189, 25, 25))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: Icon(Icons.password),
                    prefix: Icon(Icons.password_outlined,
                        color: Color.fromARGB(115, 206, 14, 14)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(31, 159, 32, 32))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgetPassScreen()));
                },
                child: const Text(
                  'ForgetPassword?',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff4c5980)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                btnName: 'SignUp',
                width: 200,
                color: Colors.blue,
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account.",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xff4c5980)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Regular',
                          color: Color.fromARGB(255, 244, 76, 15)),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
