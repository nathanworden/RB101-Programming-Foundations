# Tic Tac Toe Problem Decomposition
# You've probably played Tic Tac Toe before. If you haven't, you can read more about it on its Wikipedia page (note: just get a general idea; you don't have to read the whole thing).

# We want to build a single player Tic Tac Toe game where a user can play against the computer.

# Decomposing the problem
# Before we can start coding, we need to come up with an approach to mentally map the solution. But before even starting to think about a solution, we have to first understand the problem better and decompose it more. For complex problems, a good starting point is describing the problem, and building a high level flowchart.

# Let's try to write out a description of the game.



# Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and marks a
# square on the board. First player to reach 3 squares in a row, including diagnals,
# wins. If all 9 squares are marked and no payer has 3 squares in a row, then the 
# game is a tie.

# That's a generic description, but in order to build a flow chart, we need to outline the sequence of the gameplay a little more.

# 1. Display the initial empty 3x3 board.
# 2. Ak the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!


# You can see from the above sequence that there are two main loops -- one at step #7, after either the winner is found or the board is full, and another at step #9, after we ask if the user wants to play again. You can also notice that we are using higher level pseudo-code, and it's not formal pseudo-code. The reason is because we are staying at a zoomed out higher level for now, and all the imperative code -- the step by step directions -- is encapsulated into sub-processes. For example, the "display the board" doesn't go into exactly how we should display the board. We'll just trust that a sub-process, or function, can take care of it. In other words, we trust we can figure that part out, but we need to focus on higher level thinking right now.

# Flowchart
# Take the sequence above, and let's try to draw a flowchart out of it.


