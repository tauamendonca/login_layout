import 'package:flutter/material.dart';
import 'package:login_layout_exercise/app/styles/styles.dart';

class SignWidget extends StatelessWidget {
  final String textSignMain;
  final String textSignSecond;
  final Function()? onPressed;
  final Function()? onTap;

  const SignWidget({
    Key? key,
    this.textSignMain = "",
    this.textSignSecond = "",
    this.onPressed,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),

              //Sign In/Out principal (primeira palavra)
              Text(
                textSignMain,
                style: cTitleText,
              ),

              const SizedBox(
                height: 30,
              ),

              //Sign In/Out secundário (segunda palavra + navegação para próxima tela)
              GestureDetector(
                onTap: onTap,
                child: Text(
                  textSignSecond,
                  style: cTextLink,
                ),
              ),
            ],
          ),

          //Botão de Login/Sign Up
          FloatingActionButton(
            onPressed: onPressed,
            elevation: 0.0,
            backgroundColor: cColorPrimary,
            child: const Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
    );
  }
}
