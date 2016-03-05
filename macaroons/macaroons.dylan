module: macaroons
synopsis: Simple implementation of macaroons
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define sealed class <macaroon> (<object>)
  constant slot macaroon-key :: <byte-vector>,
    required-init-keyword: key:;
  constant slot macaroon-identifier,
    required-init-keyword: identifier:;
  constant slot macaroon-location :: <string>,
    required-init-keyword: location:;
  slot macaroon-caveats :: <caveat-vector> = make(<caveat-vector>),
    init-keyword: caveats:;
  slot macaroon-signature :: <byte-vector>;
end class;

ignore(macaroon-signature-setter);

define function macaroon-signature-valid?
    (macaroon :: <macaroon>)
 => (valid? :: <boolean>)
  #f
end function;

define function macaroon-add-caveat
    (macaroon :: <macaroon>, caveat :: <caveat>)
 => ()
  macaroon-caveats(macaroon) := add!(macaroon-caveats(macaroon), caveat);
end function;
