import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isLoading = false;

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
  Future<bool> login() async {
    if (!isFormValid) return false;

    isLoading = true;
    await Future.delayed(const Duration(seconds: 1));
    isLoading = false;

    return true;
  }
}
