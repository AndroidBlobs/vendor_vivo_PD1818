/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 7);

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '470' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '470' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '470' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '470' AND NUMBER = '108';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '470' AND NUMBER = '112';

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '102';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '108';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '112';
COMMIT TRANSACTION;