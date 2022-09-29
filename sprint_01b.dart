import 'dart:io';
import 'dart:math';

// Function: prompt()
// Purpose: Prompts the user to input a number depending on what kind of
//    calculation they want to do.

int prompt()
{
  print("1 - Circumference of a circle");
  print("2 - Hypotenuse of a right triangle");
  print("3 - Area of a circle");
  print("4 - Area of a triangle");
  print("5 - Area of a rectangle");
  print("6 - Area of a trapezoid");

  print("Please pick a number (1-6).");
  int? choice = int.parse(stdin.readLineSync()!);

  return choice;
}

// Function: select()
// Purpose: Puts the choice from prompt() into a switch statement and calls a
//    calculation function based on that number.

void select(choice)
{
  switch(choice)
  {
    case 1:
    {
      calculateCircumference();
      break;
    }

    case 2:
    {
      calculateHypotenuse();
      break;
    }

    case 3:
    {
      calculateCircleArea();
      break;
    }

    case 4:
    {
      calculateTriangleArea();
      break;
    }

    case 5:
    {
      calculateRectangleArea();
      break;
    }
    case 6:
    {
      calculateTrapezoidArea();
      break;
    }
  }
}

// Function: calculateCircumference()
// Purpose: Calculates the circumference of a circle.

void calculateCircumference()
{
  print("What is the diameter of the circle?");
  double? diameter = double.parse(stdin.readLineSync()!);

  var answer = diameter * pi;
  print("The circumference is $answer.");
  print("");
}

// Function: calculateHypotenuse()
// Purpose: Calculates the hypotenuse of a right triangle.

void calculateHypotenuse()
{
  print("What is the length of the first side of the triangle?");
  double? sideA = double.parse(stdin.readLineSync()!);

  print("What is the length of the second side?");
  double? sideB = double.parse(stdin.readLineSync()!);

  var aSquare = pow(sideA, 2);
  var bSquare = pow(sideB, 2);

  var hypo = sqrt(aSquare + bSquare);

  print("The hypotenuse is $hypo.");
  print("");
}

// Function: calculateCircleArea()
// Purpose: Calculates the area of a circle.

void calculateCircleArea()
{
  print("What is the radius of the circle?");
  double? radius = double.parse(stdin.readLineSync()!);

  var area = (pi * pow(radius, 2));
  
  print("The area is $area");
  print("");
}

// Function: calculateTriangleArea()
// Purpose: Calculates the area of a triangle.

void calculateTriangleArea()
{
  print("What is the height of the triangle?");
  double? height = double.parse(stdin.readLineSync()!);

  print("What is the base length of the triangle?");
  double? base = double.parse(stdin.readLineSync()!);

  double area = ((height*base)/2);

  print("The area is $area");
  print("");
}

// Function: calculateRectangleArea()
// Purpose: Calculate the area of a rectangle.

void calculateRectangleArea()
{
  print("What is the length of the rectangle?");
  double? length = double.parse(stdin.readLineSync()!);

  print("What is the width of the rectangle?");
  double? width = double.parse(stdin.readLineSync()!);

  double area = (length * width);

  print("The area is $area.");
  print("");
}

// Function: calculateTrapezoidArea()
// Purpose: Calculate the area of a trapezoid.

void calculateTrapezoidArea()
{
  print("What is the length of base A (the top part)?");
  double? baseA = double.parse(stdin.readLineSync()!);

  print("What is the length of base B (the bottom part)?");
  double? baseB = double.parse(stdin.readLineSync()!);

  print("What is the height of the trapezoid?");
  double? height = double.parse(stdin.readLineSync()!);

  double area = (baseA + baseB) * height / 2;

  print("The area is $area.");
  print("");
}

// And here's main()

void main()
{
  print("Welcome to the geometry calculator.");
  print("");
  bool keepGoing = true;

  while (keepGoing)
  {
    int choice = prompt();
    select(choice);

    bool invalid = true;
    while (invalid)
    {
      print("Would you like another calculation? (y/n)");
      String? response = stdin.readLineSync()!;
      print("");
      
      if (response == "y")
      {
        invalid = false;
      }

      else if (response == "n")
      {
        invalid = false;
        keepGoing = false;
      }

      else
      {
        print("That response isn't valid.");
      }

      print("");
    }
  }
  print("Thanks for using this calculator");
}