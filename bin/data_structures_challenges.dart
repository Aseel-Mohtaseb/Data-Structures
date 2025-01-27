import 'stack/reverse_a_list.dart';
import 'stack/balance_parentheses.dart';
import 'linked_list/linked_list.dart';
import 'linked_list/print_in_reverse.dart';

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

  // challenge 3: print in reverse
  print('Original list: \n$linkedList \nReversed list:');
  printInReverse(linkedList.head);

  
}
