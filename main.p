"""
Term One Group Project — Introduction to Python
Project: Question 1 — Number Analyzer
Authors: Kondwani Mwale & Jondy Kafusha
"""

def is_prime(number):
    """
    Check whether a number is prime.
    A prime number is greater than 1 and divisible only by 1 and itself.
    """
    if number <= 1:
        return False
    for i in range(2, int(number ** 0.5) + 1):
        if number % i == 0:
            return False
    return True


def number_analyzer():
    """
    Ask the user for a number and print:
    - Even or Odd
    - Positive or Negative (or Zero)
    - Prime or Not
    Includes input validation.
    """
    while True:
        try:
            number = int(input("Enter an integer number: "))
            break
        except ValueError:
            print("Invalid input! Please enter a valid integer.")

    # Even or Odd
    if number % 2 == 0:
        print(f"{number} is Even")
    else:
        print(f"{number} is Odd")

    # Positive or Negative
    if number > 0:
        print("It is Positive")
    elif number < 0:
        print("It is Negative")
    else:
        print("It is Zero")

    # Prime or Not
    if is_prime(number):
        print("It is a Prime number")
    else:
        print("It is Not a Prime number")


# Run the program
if __name__ == "__main__":
    number_analyzer()
