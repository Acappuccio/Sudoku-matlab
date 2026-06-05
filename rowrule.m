function [t] = rowrule(mr)
mr = mr(:)';
filled = mr(mr ~= 0);
n = length(mr);
if isempty(filled)
    unused = 1:n;
else
    unused = find(all((1:n) ~= filled') == 1);
end
t = {unused};
end