function [] = test_genS()
  [b,a] = genS(9);
  disp((check_range(a)));

% column rule test

% row rule test

% sub-square test


    %expect = ...;
    %actual = ...;

    %assert()

end

%{

Notes:
- no numbers in any row or column can repeat
- no numbers inside subsquares can repeat
- the size of each subsquare is the square-root of the grid count

%}

% first test, check all values are between correct range
function [ans] = check_range(a)
    ans = (sqrt(size(a(a>0&a<(size(a,1)+1)),1))==size(a,1));
end



