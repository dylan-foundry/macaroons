module: macaroons
synopsis: Simple implementation of macaroons
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define abstract class <macaroon-error> (<error>)
end class;

define class <signature-not-valid-error> (<macaroon-error>)
end class;

define class <caveat-not-satisfied-error> (<macaroon-error>)
end class;
