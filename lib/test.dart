//top-level function
import 'dart:io';
import 'dart:math';

void main() {
  const maxRandom = 100;
  var r = Random();
  var answer = r.nextInt(maxRandom) + 1;
  int? guess;
  var i = 1;
  do {
    stdout.write('Guess the number between 1 and $maxRandom:');
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
    String? input = stdin.readLineSync();
    print('----------------------------------------');
    if (input == null) {
      return;
    }
    guess = int.tryParse(input);
    if (guess == null) {
      continue;
    }
    if (answer == guess) {
      print('     $guess is CORRECT ; Total guess: $i');
      print('========================================');
    } else if (answer < guess) {
      print('          $guess is Too HIGH!');
      print('========================================');
    } else {
      print('          $guess is Too LOW!');
      print('========================================');
    }
    i++;
  } while (guess != answer);
  print('           GAME OVER');
  print('========================================');
}
