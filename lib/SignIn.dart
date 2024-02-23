import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';

import 'CustomTextFieldWidget.dart';
import 'Login.dart';
import 'RegExp.dart';
import 'itemList.dart';


class SignIn extends StatefulWidget {
  static String routeName = 'login';

  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
            Colors.brown.shade200,
            Colors.brown.shade300,
            Colors.brown.shade400
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
                    "Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 40,     fontFamily: 'Marhey',),
                  ),
                ),
                const SizedBox(height: 10),
                FadeInUp(
                  duration: const Duration(milliseconds: 1300),
                  child: const Text(
                    "Welcome Back",
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
                    color: Color.fromRGBO(201, 178, 155, 1.0),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  CustomTextFieldWidget(

                    controller: username,
                    hintText: "user name",

                    textInputType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      if (!Invalidfullname(value)) {
                        return 'please enter valid username';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWidget(
                    controller: phonenumber,
                    hintText: "Phone Number",
                    textInputType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      // Additional validation if needed
                      return null;
                    },
                  ),
                  CustomTextFieldWidget(
                    controller: emailController1,
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!InvalidEmail(value)) {
                        return 'please enter valid email';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWidget(
                    controller: passwordController1,
                    hintText: "Password",
                    obscureText: true,
                    textInputType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (!InvalidPassword(value)) {
                        return 'please enter a strong password';
                      }
                      return null;
                    },
                  ),
                  CustomTextFieldWidget(
                    controller: passwordconfiguration,
                    hintText: "Configuration Password",
                    obscureText: true,
                    textInputType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (passwordController1.text != passwordconfiguration.text) {
                        return 'Passwords do not match';
                      }
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
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              height: 50,
              color: Colors.brown.shade400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text(
                  "Sign In",
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            child: FadeInUp(
              duration: const Duration(milliseconds: 1700),
              child: const Text(
                "I already have an account",
                style: TextStyle(color: Colors.grey,     fontFamily: 'Marhey',),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
