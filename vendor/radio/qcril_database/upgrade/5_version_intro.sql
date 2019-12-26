/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 5);
/*<Modify for qcril_emergency_source_mcc_table start*/
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '525' AND NUMBER = '995';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('202','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','191','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','192','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','199','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '100', '','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '166', '','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('202', '199', '','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '272' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_mcc_table VALUES('272','999','','');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '272' AND NUMBER = '1913';
INSERT INTO qcril_emergency_source_mcc_table VALUES('272','1913','','');

/*Modify for qcril_emergency_source_mcc_table end>*/

/*<Modify for qcril_emergency_source_voice_table start*/
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_voice_table VALUES('414','191','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','192','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','199','','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '255';
INSERT INTO qcril_emergency_source_voice_table VALUES('255','101','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','102','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','103','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','104','','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '260';
INSERT INTO qcril_emergency_source_voice_table VALUES('260','997','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('260','998','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('260','999','','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_voice_table VALUES('202','100','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('202','166','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('202','199','','full');

/*Modify for qcril_emergency_source_voice_table end>*/


/*<Modify for qcril_emergency_source_hard_mcc_table start*/
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '911';

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','911','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','100','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','166','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','199','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '272' AND NUMBER = '1913';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('272','1913','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '222' AND NUMBER = '000';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','000','','');

DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '222' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('222','110','','');

/*Modify for qcril_emergency_source_hard_mcc_table end>*/


/*<Modify for qcril_emergency_source_escv_nw_table start*/
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','111',6);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','112',0);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','113',3);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','117',18);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','118',19);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','119',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','122',8);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','125',9);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','911',4);
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','191',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','192',2);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','199',1);
/*Modify for qcril_emergency_source_escv_nw_table end>*/

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','110',1);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','112',4);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '466' AND MNC = '05' AND NUMBER = '119';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('466','05','119',2);

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '112','0');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '100';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '100','1');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '199';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '199','4');

DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '202' AND NUMBER = '166';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('202', '', '166','2');


/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '08';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '118';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '119';
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_voice_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','119','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','110','','');
/*Modify for qcril_emergency_source_voice_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '09' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','09','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '03' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','03','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '23' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','23','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_voice_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '732' AND MNC = '101' AND NUMBER = '123';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('732','101','123','','');
/*Modify for qcril_emergency_source_voice_mcc_mnc_table end>*/


DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '260' AND MNC = '03' AND NUMBER = '997';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '260' AND MNC = '03' AND NUMBER = '998';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '260' AND MNC = '03' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','997','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','998','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('260','03','999','','');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '260' AND NUMBER = '997';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '260' AND NUMBER = '998';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '260' AND NUMBER = '999';
INSERT INTO qcril_emergency_source_voice_table VALUES('260','997','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('260','998','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('260','999','','full');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '15';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '17';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '208' AND NUMBER = '18';

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '15';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '17';
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '208' AND NUMBER = '18';

/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '133';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','133','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','112','','');
INSERT INTO qcril_emergency_source_mcc_mnc_table VALUES('730','02','911','','');
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

COMMIT TRANSACTION;
