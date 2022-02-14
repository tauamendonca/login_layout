validateEmail(value) {
  if (!value!.contains("@")) {
    return "Esse e-mail está incorreto";
  }
}

validatePassword(value) {
  if (value!.length < 6) {
    return "A senha deve ter pelo menos 6 caracteres";
  }
}

validateName(value) {
  if (value!.length < 5) {
    return "Esse nome é invalido";
  }
}
