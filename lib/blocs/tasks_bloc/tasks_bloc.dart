import 'package:bloc_app/app/imports/app_imports.dart';
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
    on<RemoveTask>(_onRemoveTask);
  }
// add task logic
  void _onAddTask(AddTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..add(event.task),
      removedTasks: state.removedTasks,
    ));
  }

  // update task logic
  void _onUpdateTask(UpdateTask event, Emitter<TasksState> emit) {
    final state = this.state;
    final task = event.task;
    final int index = state.allTasks.indexOf(task);
    List<Task> allTasks = List.from(state.allTasks)..remove(task);
    allTasks.insert(index, task.copywith(isDone: task.isDone == false ? true : false));
    emit(TasksState(allTasks: allTasks, removedTasks: state.removedTasks));
  }

  // delete task
  void _onDeleteTask(DeleteTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: state.allTasks,
      removedTasks: List.from(state.removedTasks)..remove(event.task),
    ));
  }

// remove task
  void _onRemoveTask(RemoveTask event, Emitter<TasksState> emit) {
    final state = this.state;
    emit(TasksState(
      allTasks: List.from(state.allTasks)..remove(event.task),
      removedTasks: List.from(state.removedTasks)..add(event.task.copywith(isDeleted: true)),
    ));
  }
}
