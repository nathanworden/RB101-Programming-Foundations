# Assignment: RPS Bonus Features
# Here are a couple of bonus features for the Rock Paper Scissors program.

# Lizard Spock

# This game is a variation on the Rock Paper Scissors game that adds two more options - Lizard and Spock. The full explanation and rules are here. There's also a hilarious Big Bang Theory video about it here.

# The goal of this bonus is to add Lizard and Spock into your code.

# Typing the full word "rock" or "lizard" is tiring. Update the program so the user can type "r" for "rock," "p" for "paper," etc. Note that if you do bonus #1, you'll have two words that start with "s." How do you resolve that?

# Keep score of the player's and computer's wins. When either the player or computer reaches five wins, the match is over, and the winning player becomes the grand winner. Don't add your incrementing logic to display_results. Keep your methods simple; they should perform one logical task — no more, no less.

# You will probably see a Rubocop complaint about the "Assignment Branch Condition size" or "AbcSize" while working on the method that determines whether the human's move beats the computer's move. We'll discuss the details of the AbcSize COP later on in the OOP course; for now, the main point is that it's a complaint about complexity. You should almost always examine methods that trip a complexity COP, and, in most cases, simplify it. It pays to listen to Rubocop when it complains about complexity; it's almost certainly right, and you can probably write simpler code.

# In the method that compares the human and computer moves, most students initially try to expand the original code from a set of three comparisons to 15 or even 20 comparisons; that's a lot. It also has the advantage of being straightforward and easy to understand, but the dense code block is hard to maintain and easy to break. It also triggers the AbcSize COP. Simplifying the method is straightforward, but not evident to most new developers.

# The approach that we recommend takes the logic out of the method and puts it into a collection. Instead of testing a long series of conditions, you can look up the player's move as a key in a hash. The value of that hash element would be a list of moves that the player's move beats. For instance, if you look up "rock," you should be able to determine that "rock" defeats either "scissors" or "lizard." This technique is an everyday coding "pattern" that will serve you well. Moving repetitive logic into hashes and arrays comes up in all kinds of programs, so it's worth trying to learn the technique now.

# If that approach proves too hard, don't worry too much. We don't discuss the nested structures that you need until later. As an alternative, think about eliminating repetitive code from the winning combinations method by DRYing your code. Write the "natural" version of the method using a bunch of conditions, then identify the repetitive code in that method. Once you have it, write a method that you can call with different arguments.