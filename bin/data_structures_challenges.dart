import 'utils/reverse_a_list.dart';
import 'utils/balance_parentheses.dart';
import 'models/linked_list.dart';

void main() {
  // challenge 1: reverse a list
  List<int> numbersList = [1, 2, 3, 4, 5, 6];
  print('Challenge 1: Reverse a List');
  print('Original list: $numbersList');
  print('Reversed list:');
  reverseAList(numbersList);
  print('\n');

  List<String> namesList = ['Aseel', 'Amer', 'Haya', 'Lena'];
  print('Original list: $namesList');
  print('Reversed list:');
  reverseAList(namesList);
  print('\n');

  // challenge 2: balance the parentheses
  String text = '()()((()))';
  print('Challenge 2: Balance Parentheses');
  print('Text: $text');
  print('Is it balanced? ${isParenthesesBalanced(text)} \n');

  text = '(()))';
  print('Text: $text');
  print('Is it balanced? ${isParenthesesBalanced(text)}');
  print('\n ');

  // Linked List

  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.push(1);
  linkedList.push(2);
  linkedList.push(3);
  linkedList.push(4);
  linkedList.push(5);

  // challenge 3: print in reverse
  print('Challenge 3: Print in Reverse');
  print('Original Linked List: $linkedList');
  print('Printed in reverse:');
  linkedList.printListInReverse();
  print('\n');

  // challenge 4: find the middle node
  print('Challenge 4: Find the Middle Node');
  print('Middle node: ${linkedList.findMiddleNode()?.value}');
  print('\n');

  // challenge 5: reverse the linked list
  print('Challenge 5: Reverse the Linked List');
  print('The linked list before reversing: \n$linkedList');
  linkedList.reverse();
  print('The linked list after reversing: \n$linkedList');
  print('\n');

  // challenge 6: remove all occurrences
  linkedList.push(1);
  linkedList.push(3);
  linkedList.push(3);
  linkedList.push(4);
  linkedList.push(3);
  print('Challenge 6: Remove All Occurrences');
  print('The linked list before removing all occurrences 3: \n$linkedList');
  linkedList.removeAllOccurrences(3);
  print('The linked list after removing all occurrences 3: \n$linkedList');
}
