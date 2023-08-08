import 'package:bloc_app/app/imports/app_imports.dart';

class TaskCounter extends StatelessWidget {
  final int count;
  const TaskCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 7),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '$count',
              style: const TextStyle(fontSize: 12, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
