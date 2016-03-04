module: macaroons-test-suite
synopsis: Test suite for the macaroons library.

define test simple-test ()
  assert-true(#t);
end test;

define suite macaroons-test-suite ()
  test simple-test;
end suite;
