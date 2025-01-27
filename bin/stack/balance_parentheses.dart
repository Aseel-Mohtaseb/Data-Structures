import 'stack.dart';

bool isParenthesesBalanced(String text) {
  Stack stack = Stack<String>();

  for (int i = 0; i < text.length; i++) {
    if (text[i] == '(') {
      stack.push(text[i]);
    } else if (text[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.pop();
    }
  }

  return true;
}
