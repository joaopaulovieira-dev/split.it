import 'package:flutter_test/flutter_test.dart';
import 'package:splitit/modules/login/login_controller.dart';
import 'package:splitit/modules/login/login_state.dart';

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(onUpdate: () {});
  });

  test('Testando o Google SingIn retornando sucesso.', () {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    controller.googleSignIn();
    expect(controller.state, isInstanceOf<LoginStateLoading>());
    expect(controller.state, isInstanceOf<LoginStateSuccess>());
  });
}
