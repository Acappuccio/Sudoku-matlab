CODE: 

Checks that all niumbers are between 1 and grid
```matlab
all(size(a(a>0 & a<grid+1)) == size(a))
```
 Use 
 ```matlab
 unique(a(1,:))
```
function 

___
# 11/29


What are the values that can go into that location according to the row rule? 
What are the possibilities per square?
Might refer to the possibilities as a function based on the "row rule."
- Column rule (row rule will be the same as this, but with transversed)
- Subsquares (ex: 9x9 puzzle, upper right, left, etc. square system)
- 

Can use recursive function when trying out possibilities...
Also possible to have multiple answers 
How to display puzzle as well?


___ 
# 11/27
- Talking about project 3, group project 
- Today we'll work with branches in GIT, and how to deal with overbranching and stuff issues that may arise with multiple folks working on the same project. 

**Sudoku Solver/ Generator**
- 2x2, 4x4, 9x9, squared number 
- Easy game to learn, already know it

**Postfix notation calculator and translators**
- Put math operator after numbers involved
- Parenthesis not required
- More terminal-based, less "graphy"
- Optional: Translator between post-fix & in-fix (could make more tests with this)
- Postfix is usually a string btw 
- Order of Operations doesn't matter (PEMDAS doesn't matter)

**Recursive Tree (Graphical)**
- Calculating points you want to plot
- Takes sort of pattern as base and repeat it as it branches out 
- A lotta animating options here 
- Could program 3D objects similary (start with 2D)
- Recommended to use complex numbers, or coordinates vectors if you wish to do so instead
- Coordinates are easier to expand into 3D

We decided on the Sudoko options

- Coding functions 
- Documentation x3-ish
- Testing x5 
      - Symmetry 
      - Limittng test
      - Trivial test 
      - Crosscheck 
      - Prescision 
- 2 demos (1 animated)
      - Display lines in graph 

...

More:
- Learned `git checkout` with `-b` at the end to create a new branch 
- `git branch` will give you the branches you're using and are there 
- `git push origin` with branch name
<sup>^look-up these once again</sup> 
___ 
