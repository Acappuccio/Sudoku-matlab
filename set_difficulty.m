function [mat] = set_difficulty(diff, mat)
grid = size(mat,1);
cells_to_remove = floor(diff * grid^2);
cells = randperm(grid^2, cells_to_remove);
for k = 1:length(cells)
    row = floor((cells(k)-1)/grid) + 1;
    col = mod(cells(k)-1, grid) + 1;
    mat(row,col) = 0;
end
end