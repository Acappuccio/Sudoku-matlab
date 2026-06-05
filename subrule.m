
function [tf,z] = subrule (mat) # z = number of zeros in matrix
  z=0;
  tf = [];
  grid = size(mat,1);
  subRows = sqrt(grid);
  corners = [1:subRows:grid]+[0:subRows-1]'.*grid.*subRows;
  TL = @(i) ([i:subRows+i-1]+[0:grid:grid*subRows-1]')(:)';
  disp(corners);
  for i= corners(:)'
    if sum(size(unique(mat(TL(i)))))~=sum(size(mat(TL(i))))
      tf(end+1) = i;
    end
    z=z+(size(find(mat(TL(i))==0),1));
  end
  tf = [mod(tf,grid)',floor(tf/grid)'+1];
  z = z/length(corners);
endfunction

%{

This function checks the subsquares within a matrix
It will return a 1xN matrix of true or false
Every part of the matrix will represent a separate subsquare
mat(TL(i)))) returns all numbers inside subsquare i where i is the top left corner of the square

%}
