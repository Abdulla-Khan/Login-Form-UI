import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:login_page/main.dart';

void main() {
  runApp(const Signup());
}

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/main": (BuildContext context) => const MyApp()
      },
      home: const _Signup(),
    );
  }
}

class _Signup extends StatefulWidget {
  const _Signup({
    Key? key,
  }) : super(key: key);
  @override
  State<_Signup> createState() => SignUp();
}

class SignUp extends State<_Signup> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Stack(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(10.0, 90, 00, 0),
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                      Container(
                        padding: const EdgeInsets.fromLTRB(135, 55, 00, 0),
                        child: const Text(
                          ".",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 150, left: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.green,
                                    ))),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: "Required *"),
                                  EmailValidator(
                                      errorText: "Not a valid Email"),
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  labelText: 'Number',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.green,
                                    ))),
                                validator: MultiValidator([
                                  RequiredValidator(errorText: 'Required *'),
                                  MinLengthValidator(6,
                                      errorText: "At least 6 characters")
                                ])),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  labelText: 'Confirm Password',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Colors.green,
                                  ))),
                              validator:
                                  RequiredValidator(errorText: 'Required *'),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7.0,
                              child: SizedBox(
                                height: 40,
                                child: TextButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {}
                                  },
                                  child: const Center(
                                    child: Text(
                                      'Create Account',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Have an account?",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.green,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushNamed('/main');
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  )
                                ]),
                            const SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ]))));
  }
}
