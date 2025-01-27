import 'reverse_a_list.dart';
import 'balance_parentheses.dart';

void main() {
  // challenge 1: reverse a list
  List<int> numbersList = [1, 2, 3, 4, 5, 6];
  reverseAList(numbersList);

  List<String> namesList = ['Aseel', 'Amer', 'Haya', 'Lena'];
  reverseAList(namesList);

  // challenge 2: balance the parentheses
  String text = '()()((()))';
  print(isParenthesesBalanced(text));

  text = '(()))';
  print(isParenthesesBalanced(text));

  // 
 
}
