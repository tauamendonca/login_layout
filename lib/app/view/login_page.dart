import 'package:flutter/material.dart';
import 'package:login_layout_exercise/app/components/custom_checkbox/custom_checkbox.dart';
import 'package:login_layout_exercise/app/components/custom_field/custom_field.dart';
import 'package:login_layout_exercise/app/components/login_signin/controllers/sign_navigation_controller.dart';
import 'package:login_layout_exercise/app/components/login_signin/sign_widget.dart';
import 'package:login_layout_exercise/app/components/login_signin/validators/validator_controller.dart';
import 'package:login_layout_exercise/app/styles/styles.dart';
import 'package:login_layout_exercise/app/view/home_page.dart';
import 'package:login_layout_exercise/app/view/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar - necessário manter para poder fazer navegação com a seta de volta
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,

      //Body
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Expanded(flex: 2, child: Column()),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Título
                        Text(
                          "Welcome Back",
                          style: cText1,
                        ),

                        const SizedBox(
                          height: 30,
                        ),

                        //Formulário
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              CustomFieldText(
                                // key: _formKey,
                                hintText: "E-mail",
                                validator: (value) {
                                  return validateEmail(value);
                                },
                              ),
                              CustomFieldText(
                                // key: _formKey,
                                hintText: "Password",
                                obscureText: true,
                                validator: (value) {
                                  return validatePassword(value);
                                },
                              ),
                              const CustomCheckbox(
                                textFirst: "Remember me",
                                width: 30,
                                textLink: "Forgot password?",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SignWidget(
                          textSignMain: "Sign In",
                          textSignSecond: "Sign Up",
                          onTap: () {
                            navigateSimple(context, SignUpPage());
                          },
                          onPressed: () {
                            navigateTo(_formKey, context, const HomePage());
                          },
                        ),
                      ],
                    ),
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
