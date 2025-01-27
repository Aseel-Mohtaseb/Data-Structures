import 'stack/reverse_a_list.dart';
import 'stack/balance_parentheses.dart';
import 'linked_list/linked_list.dart';
import 'linked_list/print_in_reverse.dart';
import 'linked_list/find_middle_node.dart';
import 'linked_list/reverse_linked_list.dart';

void main() {
  // challenge 1: reverse a list
  List<int> numbersList = [1, 2, 3, 4, 5, 6];
  print('Original list: \n$numbersList \nReversed list:');
  reverseAList(numbersList);
  print('\n');

  List<String> namesList = ['Aseel', 'Amer', 'Haya', 'Lena'];
  print('Original list: \n$namesList \nReversed list:');
  reverseAList(namesList);
  print('\n \n');

  // challenge 2: balance the parentheses
  String text = '()()((()))';
  print('Balanced parentheses: $text \nis it balanced?');
  print(isParenthesesBalanced(text));
  print('\n');

  text = '(()))';
  print('Balanced parentheses: $text \nis it balanced?');
  print(isParenthesesBalanced(text));
  print('\n \n');

  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.push(1);
  linkedList.push(2);
  linkedList.push(3);
  linkedList.push(4);
  linkedList.push(5);

  // challenge 1 (Linked List): print in reverse
  print('Original list: \n$linkedList \nReversed list:');
  printInReverse(linkedList.head);


  // challenge 2 (Linked List): find the middle node
  print('\n\nMiddle node: ${findMiddleNode(linkedList)?.value}');

  // challenge 3 (Linked List): reverse the linked list
  print('The linked list before reversing: \n$linkedList');
  reverseLinkedList(linkedList);
  print('The linked list after reversing: \n$linkedList');
  
}
