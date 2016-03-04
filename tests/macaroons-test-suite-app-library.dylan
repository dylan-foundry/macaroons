module: dylan-user

define library macaroons-test-suite-app
  use testworks;
  use macaroons-test-suite;
end library;

define module macaroons-test-suite-app
  use testworks;
  use macaroons-test-suite;
end module;
