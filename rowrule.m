# H.Alani
function[t,unused,z] = rowrule(mr)
    mr = mr(:)';
    #unused = [1:length(mr)];
    filled = mr(mr~=0);
    t = all(size(unique(filled)) == size(filled));
    #a = sum(unused==filled');
    #unused = unused(~a);
    unused = find(all([1:length(mr)]~=mr')==1);#find(~sum(mr==mr')==0);#find(sum([1:length(mr)]==mr(mr~=0)')==1);
    z = length(find(mr==0));
end
