import 'package:bloc/bloc.dart';
import 'package:bloc_app/models/task.dart';
import 'package:equatable/equatable.dart';

part 'tasks_event.dart';
part 'tasks_state.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  // define the initial state of task
  TasksBloc() : super(const TasksState()) {
    // now define the logic that we have on each event
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

// add task logic
  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..add(event.task),
    ));
  }

  // update task logic
  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {}

  // delete task
  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {}
}
