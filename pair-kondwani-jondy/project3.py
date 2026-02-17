project3 — WORD COUNTER
Authors: Kondwani Mwale & Jondy Kafusha

This program:
- Accepts a sentence from the user
- Prints:
    * Number of words
    * Number of characters (excluding spaces)
    * Longest word
"""

def word_counter():
    """Analyze a sentence and display word statistics."""

    # Input validation
    while True:
        sentence = input("Enter a sentence: ").strip()
        if sentence == "":
            print("Input cannot be empty. Please try again.")
        else:
            break

    # Count words
    words = sentence.split()
    word_count = len(words)

    # Count characters (excluding spaces)
    char_count = len(sentence.replace(" ", ""))

    # Find longest word
    longest_word = max(words, key=len)

    # Display results
    print("\n--- Results ---")
    print(f"Number of words: {word_count}")
    print(f"Number of characters (no spaces): {char_count}")
    print(f"Longest word: {longest_word}")
    print("\n✅ Word Counter Complete.")


def main():
    word_counter()


if __name__ == "__main__":
    main()
