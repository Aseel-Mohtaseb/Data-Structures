import 'linked_list.dart';

void removeAllOccurrences<T>( LinkedList<T> list ,T value){
  Node<T>? currentNode = list.head;
  Node<T>? previousNode;

  while (currentNode != null) {
    if (currentNode.value == value) {
      if (previousNode == null) {
        list.head = currentNode.next;
      } else {
        previousNode.next = currentNode.next;
      }
    } else {
      previousNode = currentNode;
    }
    currentNode = currentNode.next;
  }
}