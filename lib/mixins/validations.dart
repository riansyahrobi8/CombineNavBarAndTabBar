class Validations {
  String validatePassword(String value) {
    if (value.length < 4) {
      return "Password minimal 4 character";
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains('@')) {
      return "Email tidak valid";
    }
    return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      return "Nama lengkap harus diisi";
    }
    return null;
  }
}
