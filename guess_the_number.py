import random

def guess_the_number():
    number_to_guess = random.randint(1, 100)
    attempts = 0
    print("Welcome to the Guess the Number Game!")
    print("I've picked a number between 1 and 100.")
    
    while True:
        try:
            guess = int(input("Take a guess: "))
            attempts += 1
            if guess < number_to_guess:
                print("Too low!")
            elif guess > number_to_guess:
                print("Too high!")
            else:
                print(f"Congratulations! You guessed the number in {attempts} attempts.")
                break
        except ValueError:
            print("Please enter a valid number.")
            
if __name__ == "__main__":
    guess_the_number()