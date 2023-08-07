part of 'tasks_bloc.dart';

sealed class TasksState extends Equatable {
  final List<Task> allTasks;
  const TasksState({this.allTasks = const <Task>[]});

  @override
  List<Object> get props => [allTasks];
}

final class TasksInitial extends TasksState {}
