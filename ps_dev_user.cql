DROP KEYSPACE IF EXISTS ps_blob_dev;
CREATE KEYSPACE ps_blob_dev WITH replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 } AND durable_writes = true;
DROP ROLE IF EXISTS webapprw_dev;
DROP ROLE IF EXISTS webapprw_role_dev;
CREATE ROLE webapprw_dev WITH PASSWORD = 'DB1_webapprw_devL345F' AND LOGIN = true;
CREATE ROLE webapprw_role_dev;
GRANT ALL ON KEYSPACE ps_blob_dev TO webapprw_role_dev;
GRANT webapprw_role_dev TO webapprw_dev;