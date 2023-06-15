import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Color(0xff1793A6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff1793A6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/images/logo2.png'),
                height: 90,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 40.0, right: 40.0, top: 70.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Login',
                          filled: true,
                          fillColor: Color(0xffF1F1F1),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          border: InputBorder.none,
                          fillColor: Color(0xffF1F1F1),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text('Lembrar-me'),
                          const SizedBox(
                            width: 70,
                          ),
                          const Text(
                            'Esqueceu sua senha?',
                            style: TextStyle(
                              color: Color(0xff1793A6),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed('Home', arguments: {
                              'title': "Diego",
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1793A6),
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 10.0,
                            ),
                            minimumSize: Size(double.infinity, 0),
                          ),
                          child: Text('Login'),
                        ),
                      ), //button
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Image(
                        image:
                            AssetImage('assets/images/login-with-google.png'),
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
