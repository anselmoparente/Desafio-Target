// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on AuthStoreBase, Store {
  Computed<String?>? _$emailErrorComputed;

  @override
  String? get emailError => (_$emailErrorComputed ??= Computed<String?>(
    () => super.emailError,
    name: 'AuthStoreBase.emailError',
  )).value;
  Computed<String?>? _$passwordErrorComputed;

  @override
  String? get passwordError => (_$passwordErrorComputed ??= Computed<String?>(
    () => super.passwordError,
    name: 'AuthStoreBase.passwordError',
  )).value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid => (_$isFormValidComputed ??= Computed<bool>(
    () => super.isFormValid,
    name: 'AuthStoreBase.isFormValid',
  )).value;

  late final _$emailAtom = Atom(name: 'AuthStoreBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom = Atom(
    name: 'AuthStoreBase.password',
    context: context,
  );

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$submittedAtom = Atom(
    name: 'AuthStoreBase.submitted',
    context: context,
  );

  @override
  bool get submitted {
    _$submittedAtom.reportRead();
    return super.submitted;
  }

  @override
  set submitted(bool value) {
    _$submittedAtom.reportWrite(value, super.submitted, () {
      super.submitted = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: 'AuthStoreBase.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$loginAsyncAction = AsyncAction(
    'AuthStoreBase.login',
    context: context,
  );

  @override
  Future<bool> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$AuthStoreBaseActionController = ActionController(
    name: 'AuthStoreBase',
    context: context,
  );

  @override
  void setEmail(String value) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.setEmail',
    );
    try {
      return super.setEmail(value);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.setPassword',
    );
    try {
      return super.setPassword(value);
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submit() {
    final _$actionInfo = _$AuthStoreBaseActionController.startAction(
      name: 'AuthStoreBase.submit',
    );
    try {
      return super.submit();
    } finally {
      _$AuthStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
submitted: ${submitted},
isLoading: ${isLoading},
emailError: ${emailError},
passwordError: ${passwordError},
isFormValid: ${isFormValid}
    ''';
  }
}
