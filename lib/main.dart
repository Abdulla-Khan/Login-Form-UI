import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:login_page/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/signup": (BuildContext context) => const Signup()
      },
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: formKey,
        child: Scaffold(
          backgroundColor: Colors.black,
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(15.0, 110, 00, 0),
                        child: const Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(16, 175, 00, 0),
                        child: const Text(
                          "There",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                    Container(
                        padding: const EdgeInsets.fromLTRB(220.0, 175, 00, 0),
                        child: const Text(
                          ".",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        )),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 335, left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  hintText: 'abd@gmail.com',
                                  hintStyle: TextStyle(color: Colors.white),
                                  labelText: 'Email',
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.green,
                                    size: 25,
                                  ),
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
                                EmailValidator(errorText: "Not a valid Email")
                              ])),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  labelText: 'Password',
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.green,
                                    size: 25,
                                  ),
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
                              obscureText: true,
                              validator: MultiValidator([
                                RequiredValidator(errorText: 'Required *'),
                                MinLengthValidator(6,
                                    errorText: "At least 6 characters")
                              ])),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                              alignment: const Alignment(1, 0),
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )),
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
                                    'Login',
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
                                  Navigator.of(context).pushNamed('/signup');
                                },
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
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
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
