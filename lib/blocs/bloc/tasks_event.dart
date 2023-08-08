part of 'tasks_bloc.dart';

sealed class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

//  ---------- define all the events -------------

// add
class AddTask extends TasksEvent {
  final Task task;
  const AddTask({required this.task});
  @override
  List<Object> get props => [task];
}

// update
class UpdateTask extends TasksEvent {
  final Task task;
  const UpdateTask({required this.task});
  @override
  List<Object> get props => [task];
}

//delete
class DeleteTask extends TasksEvent {
  final Task task;
  const DeleteTask({required this.task});
  @override
  List<Object> get props => [task];
}

// remove
class RemoveTask extends TasksEvent {
  final Task task;
  const RemoveTask({required this.task});
  @override
  List<Object> get props => [task];
}
