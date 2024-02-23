// import 'package:animate_do/animate_do.dart';
// import 'package:dental_clinic_system/presentation/screens/signIn_screen.dart';
import 'package:animate_do/animate_do.dart';
import 'package:book/home.dart';
import 'package:flutter/material.dart';

import 'CustomTextFieldWidget.dart';
import 'SignIn.dart';
import 'itemList.dart';

// import '../widgets/common/buildTextField.dart';

class Login extends StatefulWidget {
  static String routeName = 'login';

  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: _buildContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.brown.shade500,
            Colors.brown.shade300,
            Colors.brown.shade200
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40,     fontFamily: 'Marhey',),
                  ),
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  duration: const Duration(milliseconds: 1300),
                  child: const Text(
                    "Welcome BackGate",
                    style: TextStyle(color: Colors.white, fontSize: 18,     fontFamily: 'Marhey',),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: _buildLoginForm(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          FadeInUp(
            duration: const Duration(milliseconds: 1400),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(175, 147, 120, 1.0),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  CustomTextFieldWidget(
                    controller: emailController,
                    hintText: "Email or Phone number",
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email or phone number';
                      }
                      // You can add more specific validation if needed
                      return null;
                    },
                  ),
                  CustomTextFieldWidget(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                    textInputType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      // You can add more specific validation if needed
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 40),
          FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: MaterialButton(

              onPressed: () async {
                if (_formKey.currentState?.validate() ?? false) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home()));
                }
              },
              height: 50,
              color: Colors.brown.shade400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Marhey',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const SizedBox(height: 15),

          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, SignIn.routeName);
            },
            child: FadeInUp(
              duration: const Duration(milliseconds: 1700),
              child: const Text(
                "Don't have an account ?",
                style: TextStyle(color: Colors.grey,     fontFamily: 'Marhey',),
              ),
            ),
          ),
        ],
      ),
    );
  }


}

