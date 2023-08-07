import 'package:bloc_app/blocs/exports/bloc_exports.dart';
import 'package:bloc_app/models/task.dart';
import 'package:flutter/material.dart';

class TaskModal extends StatefulWidget {
  final TextEditingController titleController;
  const TaskModal({super.key, required this.titleController});

  @override
  State<TaskModal> createState() => _TaskModalState();
}

class _TaskModalState extends State<TaskModal> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final keyboardOffset = MediaQuery.of(context).viewInsets.bottom;
    return StatefulBuilder(builder: (context, setState) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (keyboardOffset > 0) {
          setState(() {
            _scrollController.animateTo(
              _scrollController.position.minScrollExtent,
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOut,
            );
          });
        }
      });
      return SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.only(
          bottom: keyboardOffset + MediaQuery.of(context).padding.bottom,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('افزودن فعالیت', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              const SizedBox(height: 40),
              TextField(
                autofocus: true,
                decoration: const InputDecoration(
                  label: Text('عنوان'),
                  border: OutlineInputBorder(),
                ),
                controller: widget.titleController,
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('انصراف')),
                  ElevatedButton(
                    onPressed: () {
                      var task = Task(title: widget.titleController.text);
                      context.read<TasksBloc>().add(AddTask(task: task));
                      Navigator.of(context).pop();
                    },
                    child: const Text('ذخیره'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
