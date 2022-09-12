class Task {
  final int id;
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false, required this.id});

  void toggleDone() {
    isDone = !isDone;
  }

  @override
  String toString() => 'Task(name: $name, isDone: $isDone, id: $id)';
}
