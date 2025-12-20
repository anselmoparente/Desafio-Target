import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool submitted = false;

  @observable
  bool isLoading = false;

  @computed
  String? get emailError {
    if (!submitted) return null;
    if (email.isEmpty) return 'Informe o email';
    if (!email.contains('@')) return 'Email inválido';
    return null;
  }

  @computed
  String? get passwordError {
    if (!submitted) return null;
    if (password.isEmpty) return 'Informe a senha';
    if (password.length < 8) return 'Senha muito curta';
    return null;
  }

  @computed
  bool get isFormValid => email.isNotEmpty && password.length >= 8;

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  @action
  void submit() => submitted = true;

  @action
  Future<bool> login() async {
    if (!isFormValid) return false;

    isLoading = true;
    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;

    return true;
  }
}
