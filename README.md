# COMP 3350: Lab 2

## Task A
Write a MIPS assembly program that prompts the user to enter a string less than 40 characters (no need to test with invalid inputs). The program should then print the entered string back to the console.

## Task B
Write a complete MIPS program that translates and calculates the equation in C shown below.

```
int main()
{
  int A = 15;
  int B = 10;
  int C = 7;
  int D = 2;
  int E = 18;
  int F = -3;
  int Z = 0;

  Z = (A + B) + (C - D) + (E + F) - (A - C)
}
```
A-F can be stored in temporary registers. However, the final result Z must be an integer word stored in memory when your program finishes executing. Additionally, when testing the submitted files, we should be able to change the values of A, B, C, D, E, F, and still get the correct results.

## Task C
Write a complete MIPS program that implements the same algorithm (in C) shown below.

```
int main()
{
  int A = 10;
  int B = 15;
  int C = 6;
  int Z = 0;

  if (A > B || C < 5)
    Z = 1;
  else if ((A > B) && ((C + 1) == 7))
    Z = 2;
  else
    Z=3;

  switch (Z)
  {
    case 1:
      Z = -1;
      break;
    case 2:
      Z = -2;
      break;
    default:
      Z = 0;
      break;
  }
}
```

**Note**: A-C and Z must be integer words in memory, both when the program begins and
when the program ends. In between, they can be stored in registers. Additionally, when
testing the submitted files, we should be able to change the values of A, B, C and still get
the correct results.
