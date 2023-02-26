import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("###### Escape School ######");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You are sitting on your desk,");
  print("and the teacher left the class,");
  print("with on of your class mates.");
  levelOne();
}

levelOne() {
  print("do your want to 1#(escape), 2#(fight), 3#(cheet):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      win();
      levelTwo();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}
levelTwotitel(){
  print("level 2");
  printToday();
  print("................k,");
  print("..................,");
  print(".....................");
  levelTwo();

}
levelTwo() {
  print("level 2");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      lose();
      break;
    case "fight":
    case "2":
      win();
      levelThree();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }
}
levelThreetitle(){
 printToday();
  print("................k,");
  print("..................,");
  print(".....................");
  levelThree();
}

levelThree() {
  print("level 3");
  String option1 = stdin.readLineSync()!;
   switch (option1) {
    case "escape":
    case "1":
      lose();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
     win();
     print(" congratulations");
      quitGame();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelThree();
      break;
  }
  makeSpace(2);
  endGame();
}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}

lose() {
  makeSpace(1);
  print("🏴‍☠🏴‍☠🏴‍☠🏴‍☠🏴‍☠🏴‍☠🏴‍☠");
  makeSpace(1);
  endGame();
}

quitGame() {
  endGame();
exit(0);
}