import 'linked_list.dart';

Node<T>? findMiddleNode<T>(LinkedList<T> linkedList) {
  int length = linkedList.length;
  int middleIndex = length ~/ 2;
  return linkedList.nodeAt(middleIndex);
}
