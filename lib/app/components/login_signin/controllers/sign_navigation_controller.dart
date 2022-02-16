// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

//fazer login
login(formKey) async {
  if (formKey.currentState!.validate()) {
    print("Login realizado com sucesso");
    return formKey;
  } else {
    print("Falha no Login, verifique com o desenvolvedor");
    return formKey;
  }
}

//registrar usuário
signUp(formKey) async {
  if (formKey.currentState!.validate()) {
    print("Cadastro realizado com sucesso");
    return formKey;
  } else {
    print("Falha no Cadastro, verifique com o desenvolvedor");
    return formKey;
  }
}

//navegação após entrar com os dados
navigateTo(formKey, context, whereTo) {
  login(formKey);
  if (formKey.currentState!.validate()) {
    //na teoria se fosse um login deveria ser o push replacement e ter um botão específico para voltar
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => whereTo),
    );
  }
}

navigateSimple(context, whereTo) {
  return Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => whereTo),
  );
}
