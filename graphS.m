function[] = graphS(mat,solve)
    try
      solve;
    catch e
      solve = true;
    end_try_catch

    solved = solve_sudoku(mat)';
    mat = mat';
    N = size(solved,1);
    sudokuGrid = zeros(N);
    figure;
    hold('off');

    % Draw the outer box
    rectangle('Position', [0.5, 0.5, N, N], 'LineWidth', 2, 'EdgeColor', 'k');

    hold('on');
    % Draw the inner boxes
    for i = 1:N
        for j = 1:N
            rectangle('Position', [i-0.5, j-0.5, 1, 1], 'EdgeColor', 'k');
        end
    end

    % Draw the thicker lines for sqrt(N)xsqrt(N) boxes
    if mod(sqrt(N), 1) == 0
        for i = 0:sqrt(N):N
            line([0.5, N+0.5], [i+0.5, i+0.5], 'LineWidth', 2, 'Color', 'k');
            line([i+0.5, i+0.5], [0.5, N+0.5], 'LineWidth', 2, 'Color', 'k');
        end
    end

    % Fill in the numbers
        for x = 1:N
            for y = 1:N
                if solved(x,y) == mat(x,y) || ~solve
                    text(x,N-y+1, strrep(num2str(mat(x,y)),"0",""),"fontsize",245/N,"horizontalalignment","center", "Color","black");
                else
                    text(x,N-y+1, strrep(num2str(solved(x,y)),"0",""),"fontsize",245/N,"horizontalalignment","center", "Color","blue")
            end
        end
    axis off;
end
