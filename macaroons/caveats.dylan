module: macaroons
synopsis: Simple implementation of macaroons
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define abstract class <caveat> (<object>)
  constant slot caveat-id :: <byte-vector>,
    required-init-keyword: id:;
  constant slot caveat-location :: <string>,
    required-init-keyword: location:;
end class;

define abstract class <first-party-caveat> (<caveat>)
end class;

define abstract class <third-party-caveat> (<caveat>)
  constant slot caveat-verification-id :: <byte-vector>,
    required-init-keyword: verification-id:;
end class;

define constant <caveat-vector> = limited(<vector>, of: <caveat>);
