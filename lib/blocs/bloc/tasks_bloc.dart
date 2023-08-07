import 'package:bloc/bloc.dart';
import 'package:bloc_app/models/task.dart';
import 'package:equatable/equatable.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc() : super(TasksInitial()) {
    on<TasksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
