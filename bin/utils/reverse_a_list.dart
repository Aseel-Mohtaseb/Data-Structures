import '../models/stack.dart';

void reverseAList<E>(List<E> list) {
  // call the named constructor to create a stack from the list
  var stack = Stack.of(list);

  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}
