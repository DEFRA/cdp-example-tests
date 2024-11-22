/**
 * Mongodb script for inserting test data into the docker-compose mongo instance
 */

db = db.getSiblingDB("cdp-node-example-backend");

db.test.insertOne({test: 'data'});
