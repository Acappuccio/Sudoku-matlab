function [mat] = set_difficulty (diff, mat)

  grid = size(mat,1);
  subRows = sqrt(grid);
  corners = [1:subRows:grid]+[0:subRows-1]'.*grid.*subRows;
  TL = @(i) ([i:subRows+i-1]+[0:grid:grid*subRows-1]')(:)';

    for i= corners(:)'
      b=mat(TL(i));
      b(randperm(length(b),1))=0;
      mat(TL(i))=b;
      if diff<= sudoku_difficulty(mat)
        return;
      endif
    end

  mat = set_difficulty(diff, mat);
endfunction
