/**! \file main.dart
  *
  *  Author:  Javier Montenegro (https://javiermontenegro.github.io/)
  *  Details: program file for methods implementation.
  */

import "dart:io";
import 'lib/calculator.dart';

int choice1;
int choice2;
double firstVal;
double secondVal;
double result;

final calculator = Calculator();

void init(){
    do {
        menuA();
        switch(choice1) {
            case 1:
            options();
            break;

            case 2:
            break;
        }//End switch
    } while(choice1 != 0);
}//End init

void options() {
    do {
        stdout.write("Enter first number: ");
        firstVal = double.parse(stdin.readLineSync());
                
        stdout.write("Enter second number: ");
        secondVal = double.parse(stdin.readLineSync());

        menuB();
        switch(choice2){
            case 1:
            result = calculator.sum(firstVal, secondVal);
            break;
            
            case 2:
            result = calculator.substract(firstVal, secondVal);
            break;
      
            case 3:
            result = calculator.multiply(firstVal, secondVal);
            break;
      
            case 4:
            result = calculator.divide(firstVal, secondVal);
            break;
            
            default:
            break;
        }//End switch
        menuC();   
    } while(choice2 != 0);
}//End options
 
void menuA() {
    stdout.write("\x1B[2J\x1B[0;0H");
    stdout.write("Calculator:\n");
    stdout.write("1 - Start operation\n");
    stdout.write("0 - Quit\n");
    stdout.write("Please choose: ");
    choice1 = int.parse(stdin.readLineSync());
}//End menuA

void menuB() {
    stdout.write("\x1B[2J\x1B[0;0H"); 
    stdout.write("Choice operation:\n");
    stdout.write("1 - Sum\n");
    stdout.write("2 - Substract\n");
    stdout.write("3 - Multiply\n");
    stdout.write("4 - Divide\n");
    stdout.write("0 - Back\n");
    stdout.write("Please choose: ");
    choice2 = int.parse(stdin.readLineSync()); 
}//End menuB

void menuC() {
    stdout.write("\x1B[2J\x1B[0;0H"); 
    stdout.write("Operation result: " + result.toString() + "\n");
    stdout.write("1 - New operation\n");
    stdout.write("0 - Back\n");
    stdout.write("Please choose: ");
    choice2 = int.parse(stdin.readLineSync());      
}//End menuC

int main() {   
    init();
    return 0;
}//End main
