
import '../core.dart';

class SignInControllerNotifier extends StateNotifier<SignInState> {
  SignInControllerNotifier(this._authenticationService)
      : super(const SignInState());

  final AuthService _authenticationService;

  void fetchSignIn(BuildContext context) async {
    EasyLoading.show(status: "Memuat");
    state = state.copyWith(value: const AsyncLoading());

    final result = await _authenticationService.googleSignIn();

    result.when(
      success: (data) {
        state = state.copyWith(
          value: const AsyncData(true),
        );
        EasyLoading.showSuccess("Berhasil");
      },
      failure: (error, stackTrace) {
        EasyLoading.showError("Ada yang salah");
        error.whenOrNull(
          notFound: (reason) {
            log(reason.isEmpty ? "kosong" : reason, name: "failure");
            EasyLoading.showError(reason);
          },
          defaultError: (error) => EasyLoading.showError(error),
        );
        state = state.copyWith(
          value: AsyncValue.error(error, stackTrace),
        );
      },
    );

    if (state.value.hasValue == true) {
      // ignore: use_build_context_synchronously
      context.goLogin();
    }

    state = state.copyWith(
      value: const AsyncData(null),
    );
    EasyLoading.dismiss();
  }

  void logout() => _authenticationService.logout();
}

class SignInState {
  final AsyncValue<bool?> value;

  const SignInState({
    this.value = const AsyncData(null),
  });

  SignInState copyWith({
    AsyncValue<bool?>? value,
  }) {
    return SignInState(
      value: value ?? this.value,
    );
  }

  bool get isLoading => value.isLoading;
}

final SignInControllerProvider =
    StateNotifierProvider<SignInControllerNotifier, SignInState>((ref) {
  return SignInControllerNotifier(
    ref.read(authServiceProvider),
  );
});
