import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.newUser)));

    on<ChangeUserAge>((event, emit) => {
          if (state.existeUser)
            {emit(UserSetState(state.user!.copyWith(edad: event.age)))}
          else
            {
              print(
                  'No existe el usuario al cambiar la edad en el ChangeUserAge')
            }
        });
  }
}
