function [solved, b] = genS(grid)
b = 0;
subSize = sqrt(grid);
fprintf('\nGenerating board...\n');
mat = zeros(grid);
mat = backtrack(mat, grid, subSize, 1);
solved = mat;
clc;
disp(solved);
end

function mat = backtrack(mat, grid, subSize, pos)
if pos > grid^2
    return;
end
row = floor((pos-1)/grid) + 1;
col = mod(pos-1, grid) + 1;
if mat(row, col) ~= 0
    mat = backtrack(mat, grid, subSize, pos+1);
    return;
end
nums = randperm(grid);
for k = 1:grid
    n = nums(k);
    if isValid(mat, grid, subSize, row, col, n)
        mat(row, col) = n;
        result = backtrack(mat, grid, subSize, pos+1);
        if ~any(any(result == 0))
            mat = result;
            return;
        end
        mat(row, col) = 0;
    end
end
end

function v = isValid(mat, grid, subSize, row, col, n)
if any(mat(row,:) == n) || any(mat(:,col) == n)
    v = false; return;
end
r0 = floor((row-1)/subSize)*subSize+1;
c0 = floor((col-1)/subSize)*subSize+1;
if any(any(mat(r0:r0+subSize-1, c0:c0+subSize-1) == n))
    v = false; return;
end
v = true;
end