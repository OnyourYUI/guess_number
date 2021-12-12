//top-level function
import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(10);
  do {
    stdout.write('Please guess the number:');
    /*print('Hello Dart');
  //ภาษา dart จะทำการ infer type ให้เรา โดยดูจากค่าเริ่มต้น
  //ที่เรากำหนดให้กับตัวแปร
  //(กระบวนการ type inference ของภาษา Dart)
  var i = 123; //integer literal
  Random r = new Random();
  var b = true;
  var j; // Dart จะกำหนด type เป็น dynamic
  j = 123;
  j = 'hello';
   */
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      print('Correct');
      break;
    } else {
      print('Incorrect');
    }
  } while (true);
  print('Game over');
}
