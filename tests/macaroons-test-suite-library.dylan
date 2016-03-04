module: dylan-user

define library macaroons-test-suite
  use common-dylan;
  use c-ffi;
  use io;
  use testworks;
  use macaroons;

  export macaroons-test-suite;
end library;

define module macaroons-test-suite
  use common-dylan;
  use c-ffi;
  use format-out;
  use testworks;
  use macaroons;

  export macaroons-test-suite;
end module;
