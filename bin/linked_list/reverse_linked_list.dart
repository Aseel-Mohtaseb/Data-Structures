import 'linked_list.dart';

void reverseLinkedList<T>(LinkedList<T> linkedList) {
  Node<T>? previousNode = linkedList.head;
  Node<T>? currentNode = linkedList.head?.next;
  Node<T>? nextNode = currentNode?.next;

  previousNode?.next = null;
  while (currentNode != null) {
    currentNode.next = previousNode;

    previousNode = currentNode;
    currentNode = nextNode;
    nextNode = nextNode?.next;
  }

  linkedList.head = previousNode;
}