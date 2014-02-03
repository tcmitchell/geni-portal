-- -----------------------------------------------------------------
-- Create the entry for the Cornell InstaGENI aggregate:
--
-- Execute as:
--
--    psql -U portal -h localhost -f add-cornell-ig.sql portal
--
-- -----------------------------------------------------------------

insert into service_registry
    (service_type, service_url, service_cert, service_name,
     service_description, service_urn)
  values
    ( -- TYPE: zero = aggregate
      0,
      -- URL
      'https://geni.it.cornell.edu:12369/protogeni/xmlrpc/am/2.0',
      -- CERT
     '/usr/share/geni-ch/sr/certs/cornell-ig-cm.pem',
      -- NAME
     'Cornell InstaGENI',
      -- DESCRIPTION
     'Cornell InstaGENI Rack',
      -- URN
     'urn:publicid:IDN+geni.it.cornell.edu+authority+cm'
    );

insert into service_registry
    (service_type, service_url, service_cert, service_name,
     service_description, service_urn)
  values
    ( -- TYPE: 7 = CA
      7,
      -- URL
     '',
      -- CERT (self signed)
     '/usr/share/geni-ch/sr/certs/cornell-ig-boss.pem',
      -- NAME
     '',
      -- DESCRIPTION
     'Cornell InstaGENI CA',
      -- URN
     ''
    );
