function [mat] = solve_sudoku(puzzle) # output solutions not mat
  mat = puzzle;
  grid = size(mat,1); # get the grid size
  i=0; # counting index zero by default
  P=grid; # the number of possibilities to check for
  perc = -1;
  while length(find(mat==0))>0 # while the matrix still has zeros
    i=i+1; # increase i by 1
    P = max(P,grid);

#{..
    a = floor(100*(sum(sum(mat~=0))/grid^2)); # find the percentage of non-zero numbers
    if a~=perc # check if percentage changed
      perc = a; # update percentage
      clc; # clear terminal
      disp(["\n" num2str(a) "% ... " repelem("#-",[a,100-a])]); # display percent and loading bar
      disp(mat); # display matrix
    end
#}
    cond1 = true;
    while cond1
      # find column and row number based on i
      col = floor((i-1)/grid)+1;
      row = mod(i,grid)+1;
      a = sqrt(grid); # subsquare size
      subsq = ((ceil(col/a)-1)*a)+ceil(row/a); # subsquare index (#)
      if col<=grid && mat(col,row)==0 # check i is valid index for sudoku board and isn't for a solved square
        cond1=false; # end condition
      else
        i=i+1; # else, change index
      end
      if i>grid^2 # if index is outside the grid
        i=1; # reset index to first square
        P=P+1; # change priority to squares with P+1 possibilities
      endif

    end

    a = possibS(mat,col,row);

    try # try to fill in square with one of the possibilities
      if mat(col,row)==0 && length(a)<=P # if unsolved and a possibility priority
        mat(col,row) = a(randperm(length(a),1)); # try plugging in random possibility
        P=1; # reset the possibility priority to 1
      end
    catch e
        i=0; # reset i
        mat = puzzle;
      end
    end
    solved = mat; # output solved
    clc; # clear terminal
    #disp(mat); # display in terminal
end
