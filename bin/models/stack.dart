class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  // named constructor to create a stack from iterable
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  // add element to the top of the stack
  void push(E element) => _storage.add(element);

  // remove and return the top element of the stack
  E pop() => _storage.removeLast();

  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => _storage.isNotEmpty;
}
