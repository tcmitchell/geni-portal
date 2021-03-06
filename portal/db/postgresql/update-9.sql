
-- ----------------------------------------------------------------------
-- lead request
--
-- Record project lead requests that users create
-- ----------------------------------------------------------------------

DROP TABLE IF EXISTS lead_request;

DROP TYPE IF EXISTS request_status;

CREATE TYPE request_status AS ENUM ('open', 'approved', 'denied');

CREATE TABLE lead_request (
  id SERIAL,
  requester_urn   VARCHAR NOT NULL,
  requester_uuid  UUID NOT NULL,
  requester_eppn  VARCHAR NOT NULL,
  request_ts timestamp NOT NULL default CURRENT_TIMESTAMP,
  approver VARCHAR default '',
  notes VARCHAR default '',
  reason VARCHAR default '',
  status request_status NOT NULL default 'open',
  PRIMARY KEY (id)
);
CREATE INDEX lead_request_index_requester_urn ON lead_request (requester_urn);
