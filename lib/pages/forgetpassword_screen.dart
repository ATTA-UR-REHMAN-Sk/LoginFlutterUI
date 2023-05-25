import 'package:flutter/material.dart';
import 'package:lgoin_ui/pages/login_screen.dart';
import 'package:lgoin_ui/pages/signup.dart';
import 'package:lgoin_ui/pages/widgets/custom_button.dart';

class ForgetPassScreen extends StatefulWidget {
  const ForgetPassScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPassScreen> createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
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
                  'Forget_Password',
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
                TextFormField(
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
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // keyboardType: TextInputType.phone,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'LastPassword',
                    fillColor: Colors.blueGrey,
                    filled: true,
                    suffixIcon: Icon(Icons.lock),
                    prefixIcon: Icon(Icons.password,
                        color: Color.fromARGB(115, 254, 9, 9)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(31, 189, 25, 25))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // const Align(
                //   alignment: Alignment.centerRight,
                //   child: Text(
                //     textAlign: TextAlign.right,
                //     'ForgetPassword?',
                //     style: TextStyle(
                //         fontSize: 16,
                //         fontFamily: 'Rubik Regular',
                //         color: Color(0xff4c5980)),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  btnName: 'ResetPassword',
                  color: Colors.blue,
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Rubik Regular',
                          color: Color(0xff4c5980)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Regular',
                            color: Color.fromARGB(255, 244, 76, 15)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
