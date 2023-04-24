import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/controllers/firebase_users.dart';
import 'package:grocery_app/screens/dashboard/dashboard_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import '../../common_widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = "";
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();

  Future<void> signInWithEmailPassword() async {
    try {
      await Auth().signEmailPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createEmailPassword(
          email: _controllerEmail.text,
          password: _controllerPassword.text,
          firstName: _controllerFirstName.text,
          lastName: _controllerLastName.text,
          phone: _controllerPhone.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      setState(() {
        errorMessage = e.message;
      });

      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: Text(e.message.toString()),
            );
          });
    }
  }

  Widget _title() {
    return const Text("Firebase Auth");
  }

  Widget _entryField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: TextStyle(
          color: AppColors.darkGrey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: AppColors.darkGrey,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2.0,
          ),
        ),
      ),
      style: _textFieldStyle,
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Ooops...  $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
        onPressed:
            isLogin ? signInWithEmailPassword : createUserWithEmailAndPassword,
        child: AppText(text: isLogin ? 'Login' : "Register"));
  }

  Widget skipButton() {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)),
        onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()))
            },
        child: AppText(text: "Skip"));
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
            foregroundColor: MaterialStateProperty.all(AppColors.darkGrey)),
        onPressed: () => {
              setState(
                () => isLogin = !isLogin,
              )
            },
        child: AppText(text: isLogin ? "Register instead" : "Login instead"));
  }

  Widget getAppIcon() {
    String iconPath = "assets/icons/app_icon.svg";
    return SvgPicture.asset(
      iconPath,
      alignment: Alignment.center,
      color: AppColors.darkGrey,
    );
  }

  TextStyle _textFieldStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: _title(),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            heightFactor: 1.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                !isLogin
                    ? Column(
                        children: [
                          getAppIcon(),
                          SizedBox(height: 15),
                          _entryField("First Name", _controllerFirstName),
                          SizedBox(height: 10),
                          _entryField("Last Name", _controllerLastName),
                          SizedBox(height: 10),
                          _entryField("email", _controllerEmail),
                          SizedBox(height: 10),
                          _entryField("password", _controllerPassword),
                          SizedBox(height: 10),
                          _errorMessage(),
                          SizedBox(height: 10),
                          _submitButton(),
                          SizedBox(height: 10),
                          _loginOrRegisterButton()
                        ],
                      )
                    : Column(children: [
                        getAppIcon(),
                        SizedBox(height: 15),
                        _entryField("email", _controllerEmail),
                        SizedBox(height: 10),
                        _entryField("password", _controllerPassword),
                        SizedBox(height: 10),
                        _errorMessage(),
                        SizedBox(height: 10),
                        _submitButton(),
                        SizedBox(height: 10),
                        _loginOrRegisterButton(),
                      ]),
                Divider(
                  thickness: 2,
                ),
                skipButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
