% H.Alani
function [solved,b] = genS (grid) # d = 1:3... easy, medium, hard
  mat = zeros(grid);
  mat(1,:) = randperm(grid);

  i=grid;
  P=grid;
  # rng(seed);
  perc = -1;
  while length(find(mat==0))>0
    i=i+1;

  #{.
   # Display loading bar & percentage
    a = floor(100*(sum(sum(mat~=0))/grid^2));
    if a>perc
      perc = a;
      clc;
      disp(["\n" num2str(a) "% ... " repelem("#-",[a,100-a])]);
      disp(mat);
    end
  #}
    cond1 = true;
    while cond1
      # find column and row number based on i (square index)
      col = floor((i-1)/grid)+1;
      row = mod(i,grid)+1;
      a = sqrt(grid); # subsquare size
      subsq = ((ceil(col/a)-1)*a)+ceil(row/a); # subsquare index (#)
      #disp(i);

      if col<=grid && mat(col,row)==0 # make sure i is within the matrix & unsolved
        cond1=false;
      else
        i=i+1;
      end

      if i>grid^2 # if i goes outside matrix, reset
        i=1;
        P=P+1;
      endif

    end

    a = possibS(mat,col,row);

    try
      if mat(col,row)==0 && length(a)<=P # if unsolved
        mat(col,row) = a(randperm(length(a),1)); # try plugging in random possibility
        #i=0;
        P=1;
      end
    catch e # if error
        mat(col,:)=zeros(1,grid); # reset row
        i=0; # reset i
#        seed=seed+1; # change seed
#        rng(seed);
      end
    end
    solved = mat;
    clc;
    disp("\n");
    disp(mat);
    disp("\n");
end
