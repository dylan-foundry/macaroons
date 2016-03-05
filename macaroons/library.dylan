Module: dylan-user

define library macaroons
  use common-dylan;
  use c-ffi;

  export macaroons;
end library macaroons;

define module macaroons
  use common-dylan;

  export <macaroon>,
         macaroon-key,
         macaroon-identifier,
         macaroon-location,
         macaroon-caveats,
         macaroon-signature,
         macaroon-signature-valid?,
         macaroon-add-caveat;

  export <caveat>,
         <caveat-vector>,
         <first-party-caveat>,
         <third-party-caveat>,
         caveat-id,
         caveat-location,
         caveat-verification-id;

  export <macaroon-error>,
         <signature-not-valid-error>,
         <caveat-not-satisfied-error>;
end module macaroons;
