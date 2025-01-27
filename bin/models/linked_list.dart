import 'node.dart';

// i created this class while reading the linked list chapter in the book
// then i added some functions to it according to the challenges

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    Node<E>? currentNode = head;
    int currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, value) {
    if (node == tail) {
      append(value);
      return tail!;
    }
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  // remove the first node
  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  // remove the last node
  E? removeLast() {
    if (head?.next == null) return pop();

    Node<E>? currentNode = head;
    while (currentNode?.next != tail) {
      currentNode = currentNode?.next;
    }

    final value = tail?.value;
    tail = currentNode;
    tail?.next = null;
    return value;
  }

  // remove a node from the middle of the list
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  ///
  /// FROM HERE
  /// functions that i added to the class:
  ///

  int get length {
    int length = 0;
    Node<E>? currentNode = head;
    while (currentNode != null) {
      length += 1;
      currentNode = currentNode.next;
    }
    return length;
  }

  void printListInReverse() {
    printInReverseFromNode(head);
  }

  void printInReverseFromNode(Node<E>? node) {
    if (node == null) return;
    printInReverseFromNode(node.next);
    print(node.value);
  }

  Node<E>? findMiddleNode() {
    int middleIndex = length ~/ 2;
    return nodeAt(middleIndex);
  }

  void reverse() {
    Node<E>? previousNode = head;
    Node<E>? currentNode = head?.next;
    Node<E>? nextNode = currentNode?.next;

    previousNode?.next = null;
    while (currentNode != null) {
      currentNode.next = previousNode;
      previousNode = currentNode;
      currentNode = nextNode;
      nextNode = nextNode?.next;
    }

    head = previousNode;
  }

  void removeAllOccurrences(E value){
  Node<E>? currentNode = head;
  Node<E>? previousNode;

  while (currentNode != null) {
    if (currentNode.value == value) {
      if (previousNode == null) {
        head = currentNode.next;
      } else {
        previousNode.next = currentNode.next;
      }
    } else {
      previousNode = currentNode;
    }
    currentNode = currentNode.next;
  }
}
}
