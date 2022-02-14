import 'package:flutter/material.dart';
import 'package:login_layout_exercise/app/components/background/background_widget.dart';
import 'package:login_layout_exercise/app/components/custom_checkbox/custom_checkbox.dart';
import 'package:login_layout_exercise/app/components/custom_field/custom_field.dart';
import 'package:login_layout_exercise/app/components/login_signin/controllers/sign_navigation_controller.dart';
import 'package:login_layout_exercise/app/components/login_signin/sign_widget.dart';
import 'package:login_layout_exercise/app/components/login_signin/validators/validator_controller.dart';
import 'package:login_layout_exercise/app/styles/styles.dart';
import 'package:login_layout_exercise/app/view/login_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
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
        child: BackgroundWidget(
          child: Column(
            children: [
              Expanded(flex: 2, child: Column()),
              Expanded(
                flex: 5,
                child:

                    //Container branco do fundo
                    Container(
                  padding: const EdgeInsets.all(30.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),

                  //Coluna dos elementos
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Started",
                        style: cTitleText,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            //nome do usuário
                            CustomFieldText(
                              hintText: "Name",
                              validator: (value) {
                                return validateName(value);
                              },
                            ),

                            //email para cadastro
                            CustomFieldText(
                              hintText: "E-mail",
                              validator: (value) {
                                return validateEmail(value);
                              },
                            ),

                            //senha
                            CustomFieldText(
                              hintText: "Password",
                              validator: (value) {
                                return (validatePassword(value));
                              },
                            ),

                            //checkbox Termo de compromisso
                            const CustomCheckbox(
                              textFirst: "I agree to the",
                              textTwo: " Terms of Service",
                              textTree: " and ",
                              textFour: " Privacy Policy",
                            ),
                          ],
                        ),
                      ),

                      //botão de SignUp
                      SignWidget(
                        textSignMain: "Sign Up",
                        textSignSecond: "Sign In",
                        onTap: () {
                          navigateSimple(context, LoginPage());
                        },
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            navigateSimple(context, LoginPage());
                          }
                        },
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
