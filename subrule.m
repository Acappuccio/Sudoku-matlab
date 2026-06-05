function [tf,z] = subrule(mat)
grid = size(mat,1);
subRows = sqrt(grid);
tf = cell(1, grid);
z = 0;
for subsq = 1:grid
    col_sq = ceil(subsq/subRows);
    row_sq = mod(subsq-1, subRows) + 1;
    col_start = (col_sq-1)*subRows + 1;
    row_start = (row_sq-1)*subRows + 1;
    submat = mat(col_start:col_start+subRows-1, row_start:row_start+subRows-1);
    vals = submat(:)';
    filled = vals(vals ~= 0);
    if isempty(filled)
        unused = 1:grid;
    else
        unused = find(all((1:grid) ~= filled') == 1);
    end
    tf{subsq} = {unused};
    z = z + sum(vals == 0);
end
z = z / (grid^2);
end