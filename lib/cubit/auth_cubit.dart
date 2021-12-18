import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vgenesia/models/user_model.dart';
import 'package:vgenesia/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({required String email, required String password}) async {
    try {
      emit(AuthLoading());

      UserModel user =
          await AuthService().signUp(email: email, password: password);
      emit(AuthSuccess(user: user));
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }

  void logout() async {
    try {
      await AuthService().logout();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(error: e.toString()));
    }
  }
}
