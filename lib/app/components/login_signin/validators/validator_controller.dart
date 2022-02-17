String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'O campo está vazio';
  } else if (!value.contains('@')) {
    return 'Esse e-mail está incorreto';
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'O campo está vazio';
  } else if (value.length < 6) {
    return 'A senha deve ter pelo menos 6 caracteres';
  }
  return null;
}

String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'O campo está vazio';
  } else if (value.length < 5) {
    return 'Esse nome é invalido';
  }
  return null;
}
