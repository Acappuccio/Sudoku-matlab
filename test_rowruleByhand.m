function [] = test_rowruleByhand ()
  r_ = [1,6,2,0,0,0,0,0,0];
  [tf,unused] = rowrule(r_);
  expect = [3,4,5,7,8,9];
  assert(tf & isequal(size(expect),size(unused)) & all(expect==unused),...
  ["\n\nFailed Row Rule BY HAND TEST!\n"...
  "Expected: %s\nActual: %s\ntf:%s\n\n"],...
  mat2str(expect),mat2str(unused),num2str(tf));

endfunction
