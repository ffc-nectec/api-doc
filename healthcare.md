# HealthCareService

## การให้บริการ [/org/{org_id}/healthcareservice]

### เพิ่มบริการใหม่ [POST /org/{org_id}/healthcareservice]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (HealthCareService, fixed-type)

    + Body

            {
               "id":"73008541152448718e204a104a8d1a34",
               "providerId":"5c07f94a6eabfa0004258b77",
               "patientId":"5dbd37ed698922acf8bc60e6",
               "syntom":" ติดตามเยี่ยมมารดาหลังคลอดครั้งที่3",
               "weight":64.5,
               "height":158,
               "pulseRate":96,
               "bodyTemperature":36.5,
               "diagnosises":[
                  {
                     "disease":{
                        "icd10":"Z39.2",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การดูแลและการตรวจหลังคลอด"
                        },
                        "id":"Z39.2",
                        "name":"Routine postpartum follow-up"
                     },
                     "dxType":"PRINCIPLE_DX",
                     "isContinued":false
                  },
                  {
                     "disease":{
                        "icd10":"Z71.8",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การให้คำปรึกษาอื่นที่ระบุรายละเอียด"
                        },
                        "id":"Z71.8",
                        "name":"Other specified counselling"
                     },
                     "dxType":"OTHER",
                     "isContinued":false
                  }
               ],
               "photosUrl":[

               ],
               "communityServices":[
                  {
                     "detail":"แนะนำกระตุ้นพัฒนาการเด็กให้เหมาะสมกับวัย",
                     "result":"มารดามีความรู้และจะพาบุตรไปฉีดวัคซีน DTP+HB 1 อายุ 2 เดือน และตรวจพัฒนาการ",
                     "serviceType":{
                        "type":"ServiceType",
                        "translation":{
                           "th":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2018-11-22T16:27:43.127+07:00",
                           "system":"JHICS",
                           "keys":{
                              "code":"1A213",
                              "map":"1A213"
                           }
                        },
                        "id":"1A213",
                        "name":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                     },
                     "id":"7e7cb35e3c33445f9c791bfc2c3946a0",
                     "type":"HomeVisit",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "specialPPs":[
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B52",
                        "name":"ผู้มารับบริการมีพฤติกรรมไม่เคยสูบบุหรี่"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  },
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B600",
                        "name":"ผู้มารับบริการไม่เคยดื่มเครื่องดื่มแอลกอฮอล์ ตลอดชีวิตที่ผ่านมา"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "time":"2018-11-12T12:49:11.000+07:00",
               "endTime":"2018-11-12T12:55:33.000+07:00",
               "type":"HealthCareService",
               "timestamp":"2018-11-19T12:55:34.000+07:00",
               "suggestion":" แนะนำการดูแลมารดาหลังคลอด การเลียงดูบุตร ด้วยนมแม่ ให้คำแนะนำเรื่องวัคซีน และแรื่องสมุนไพรไพรการทับหม้อเกลือ",
               "waist":78,
               "note":"เยี่ยมมารดาครั้งที่3",
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-12-05T23:37:12.885+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345",
                     "visitno":"289706",
                     "pid":"9462",
                     "rightcode":"89",
                     "rightno":"R89130038321975",
                     "hosmain":"10761",
                     "hossub":"01092"
                  }
               },
               "nextAppoint":"2019-01-09",
               "bloodPressure":{
                  "systolic":110,
                  "diastolic":62
               },
               "bloodPressure2nd":{
                  "systolic":116,
                  "diastolic":66
               }
            }

+ Response 201 (application/json)

    + Attributes (HealthCareService, fixed-type)

    + Body

            {
               "nextAppoint":"2019-01-09",
               "syntom":" ติดตามเยี่ยมมารดาหลังคลอดครั้งที่3",
               "suggestion":" แนะนำการดูแลมารดาหลังคลอด การเลียงดูบุตร ด้วยนมแม่ ให้คำแนะนำเรื่องวัคซีน และแรื่องสมุนไพรไพรการทับหม้อเกลือ",
               "weight":64.5,
               "height":158.0,
               "waist":78.0,
               "bloodPressure":{
                  "systolic":110.0,
                  "diastolic":62.0
               },
               "bloodPressure2nd":{
                  "systolic":116.0,
                  "diastolic":66.0
               },
               "pulseRate":96.0,
               "bodyTemperature":36.5,
               "diagnosises":[
                  {
                     "disease":{
                        "icd10":"Z39.2",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การดูแลและการตรวจหลังคลอด"
                        },
                        "id":"Z39.2",
                        "name":"Routine postpartum follow-up"
                     },
                     "dxType":"PRINCIPLE_DX",
                     "isContinued":false
                  },
                  {
                     "disease":{
                        "icd10":"Z71.8",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การให้คำปรึกษาอื่นที่ระบุรายละเอียด"
                        },
                        "id":"Z71.8",
                        "name":"Other specified counselling"
                     },
                     "dxType":"OTHER",
                     "isContinued":false
                  }
               ],
               "note":"เยี่ยมมารดาครั้งที่3",
               "photosUrl":[

               ],
               "communityServices":[
                  {
                     "detail":"แนะนำกระตุ้นพัฒนาการเด็กให้เหมาะสมกับวัย",
                     "result":"มารดามีความรู้และจะพาบุตรไปฉีดวัคซีน DTP+HB 1 อายุ 2 เดือน และตรวจพัฒนาการ",
                     "serviceType":{
                        "type":"ServiceType",
                        "translation":{
                           "th":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2018-11-22T16:27:43.127+07:00",
                           "system":"JHICS",
                           "keys":{
                              "code":"1A213",
                              "map":"1A213"
                           }
                        },
                        "id":"1A213",
                        "name":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                     },
                     "id":"7e7cb35e3c33445f9c791bfc2c3946a0",
                     "type":"HomeVisit",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "specialPPs":[
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B52",
                        "name":"ผู้มารับบริการมีพฤติกรรมไม่เคยสูบบุหรี่"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  },
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B600",
                        "name":"ผู้มารับบริการไม่เคยดื่มเครื่องดื่มแอลกอฮอล์ ตลอดชีวิตที่ผ่านมา"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "time":"2018-11-12T12:49:11.000+07:00",
               "endTime":"2018-11-12T12:55:33.000+07:00",
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-11-04T10:21:35.457+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345",
                     "visitno":"289706",
                     "pid":"9462",
                     "rightcode":"89",
                     "rightno":"R89130038321975",
                     "hosmain":"10761",
                     "hossub":"01092"
                  }
               },
               "providerId":"5c07f94a6eabfa0004258b77",
               "patientId":"5dbd37ed698922acf8bc60e6",
               "id":"5dbf993f698922acf8bdd8b2",
               "type":"HealthCareService",
               "timestamp":"2018-11-19T12:55:34.000+07:00"
            }

### แก้ไขบริการ ที่เคยบันทึกไปแล้ว [PUT /org/{org_id}/healthcareservice/{visit_id}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``
    + visit_id: `5dbf993f698922acf8bdd8b2` (string, required)
      ``visit id ที่ต้องการจะแก้ ระบบจะสร้างให้เมื่อมีการเพิ่มบริการใหม่``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (HealthCareService, fixed-type)

    + Body

            {
               "id":"5dbf993f698922acf8bdd8b2",
               "providerId":"5c07f94a6eabfa0004258b77",
               "patientId":"5dbd37ed698922acf8bc60e6",
               "syntom":" ติดตามเยี่ยมมารดาหลังคลอดครั้งที่3",
               "weight":64.5,
               "height":165,
               "pulseRate":96,
               "bodyTemperature":36.5,
               "diagnosises":[
                  {
                     "disease":{
                        "icd10":"Z39.2",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การดูแลและการตรวจหลังคลอด"
                        },
                        "id":"Z39.2",
                        "name":"Routine postpartum follow-up"
                     },
                     "dxType":"PRINCIPLE_DX",
                     "isContinued":false
                  },
                  {
                     "disease":{
                        "icd10":"Z71.8",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การให้คำปรึกษาอื่นที่ระบุรายละเอียด"
                        },
                        "id":"Z71.8",
                        "name":"Other specified counselling"
                     },
                     "dxType":"OTHER",
                     "isContinued":false
                  }
               ],
               "photosUrl":[

               ],
               "communityServices":[
                  {
                     "detail":"แนะนำกระตุ้นพัฒนาการเด็กให้เหมาะสมกับวัย",
                     "result":"มารดามีความรู้และจะพาบุตรไปฉีดวัคซีน DTP+HB 1 อายุ 2 เดือน และตรวจพัฒนาการ",
                     "serviceType":{
                        "type":"ServiceType",
                        "translation":{
                           "th":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2018-11-22T16:27:43.127+07:00",
                           "system":"JHICS",
                           "keys":{
                              "code":"1A213",
                              "map":"1A213"
                           }
                        },
                        "id":"1A213",
                        "name":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                     },
                     "id":"7e7cb35e3c33445f9c791bfc2c3946a0",
                     "type":"HomeVisit",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "specialPPs":[
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B52",
                        "name":"ผู้มารับบริการมีพฤติกรรมไม่เคยสูบบุหรี่"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  },
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B600",
                        "name":"ผู้มารับบริการไม่เคยดื่มเครื่องดื่มแอลกอฮอล์ ตลอดชีวิตที่ผ่านมา"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "time":"2018-11-12T12:49:11.000+07:00",
               "endTime":"2018-11-12T12:55:33.000+07:00",
               "type":"HealthCareService",
               "timestamp":"2018-11-19T12:55:34.000+07:00",
               "suggestion":" แนะนำการดูแลมารดาหลังคลอด การเลียงดูบุตร ด้วยนมแม่ ให้คำแนะนำเรื่องวัคซีน และแรื่องสมุนไพรไพรการทับหม้อเกลือ",
               "waist":78,
               "note":"เยี่ยมมารดาครั้งที่3",
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-12-05T23:37:12.885+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345",
                     "visitno":"289706",
                     "pid":"9462",
                     "rightcode":"89",
                     "rightno":"R89130038321975",
                     "hosmain":"10761",
                     "hossub":"01092"
                  }
               },
               "nextAppoint":"2019-01-09",
               "bloodPressure":{
                  "systolic":110,
                  "diastolic":62
               },
               "bloodPressure2nd":{
                  "systolic":116,
                  "diastolic":66
               }
            }

+ Response 200 (application/json)

    + Attributes (HealthCareService, fixed-type)

    + Body

            {
               "nextAppoint":"2019-01-09",
               "syntom":" ติดตามเยี่ยมมารดาหลังคลอดครั้งที่3",
               "suggestion":" แนะนำการดูแลมารดาหลังคลอด การเลียงดูบุตร ด้วยนมแม่ ให้คำแนะนำเรื่องวัคซีน และแรื่องสมุนไพรไพรการทับหม้อเกลือ",
               "weight":64.5,
               "height":165.0,
               "waist":78.0,
               "bloodPressure":{
                  "systolic":110.0,
                  "diastolic":62.0
               },
               "bloodPressure2nd":{
                  "systolic":116.0,
                  "diastolic":66.0
               },
               "pulseRate":96.0,
               "bodyTemperature":36.5,
               "diagnosises":[
                  {
                     "disease":{
                        "icd10":"Z39.2",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การดูแลและการตรวจหลังคลอด"
                        },
                        "id":"Z39.2",
                        "name":"Routine postpartum follow-up"
                     },
                     "dxType":"PRINCIPLE_DX",
                     "isContinued":false
                  },
                  {
                     "disease":{
                        "icd10":"Z71.8",
                        "isEpimedic":false,
                        "isChronic":false,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"การให้คำปรึกษาอื่นที่ระบุรายละเอียด"
                        },
                        "id":"Z71.8",
                        "name":"Other specified counselling"
                     },
                     "dxType":"OTHER",
                     "isContinued":false
                  }
               ],
               "note":"เยี่ยมมารดาครั้งที่3",
               "photosUrl":[

               ],
               "communityServices":[
                  {
                     "detail":"แนะนำกระตุ้นพัฒนาการเด็กให้เหมาะสมกับวัย",
                     "result":"มารดามีความรู้และจะพาบุตรไปฉีดวัคซีน DTP+HB 1 อายุ 2 เดือน และตรวจพัฒนาการ",
                     "serviceType":{
                        "type":"ServiceType",
                        "translation":{
                           "th":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2018-11-22T16:27:43.127+07:00",
                           "system":"JHICS",
                           "keys":{
                              "code":"1A213",
                              "map":"1A213"
                           }
                        },
                        "id":"1A213",
                        "name":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                     },
                     "id":"7e7cb35e3c33445f9c791bfc2c3946a0",
                     "type":"HomeVisit",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "specialPPs":[
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B52",
                        "name":"ผู้มารับบริการมีพฤติกรรมไม่เคยสูบบุหรี่"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  },
                  {
                     "ppType":{
                        "type":"PPType",
                        "translation":{

                        },
                        "id":"1B600",
                        "name":"ผู้มารับบริการไม่เคยดื่มเครื่องดื่มแอลกอฮอล์ ตลอดชีวิตที่ผ่านมา"
                     },
                     "time":"2018-11-12T12:49:11.000+07:00",
                     "endTime":"2018-11-12T12:55:33.000+07:00",
                     "providerId":"5c07f94a6eabfa0004258b77",
                     "patientId":"5dbd37ed698922acf8bc60e6",
                     "id":"b3b610916d0b4198a488f7b24db16438",
                     "type":"SpecialPP",
                     "timestamp":"2018-12-06T00:00:21.739+07:00"
                  }
               ],
               "time":"2018-11-12T12:49:11.000+07:00",
               "endTime":"2018-11-12T12:55:33.000+07:00",
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-11-04T14:29:05.831+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345",
                     "visitno":"289706",
                     "pid":"9462",
                     "rightcode":"89",
                     "rightno":"R89130038321975",
                     "hosmain":"10761",
                     "hossub":"01092"
                  }
               },
               "providerId":"5c07f94a6eabfa0004258b77",
               "patientId":"5dbd37ed698922acf8bc60e6",
               "id":"5dbf993f698922acf8bdd8b2",
               "type":"HealthCareService",
               "timestamp":"2018-11-19T12:55:34.000+07:00"
            }

### ดึงข้อมูลการให้บริการของคน [GET /org/{org_id}/person/{person_id}/healthcareservice]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``
    + person_id: `5dbd37ed698922acf8bc60e6` (string, required)
      ``รหัส id ของคนในระบบ FFC``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[HealthCareService], fixed-type)

    + Body

            [
               {
                  "nextAppoint":"2019-01-09",
                  "syntom":" ติดตามเยี่ยมมารดาหลังคลอดครั้งที่3",
                  "suggestion":" แนะนำการดูแลมารดาหลังคลอด การเลียงดูบุตร ด้วยนมแม่ ให้คำแนะนำเรื่องวัคซีน และแรื่องสมุนไพรไพรการทับหม้อเกลือ",
                  "weight":64.5,
                  "height":165.0,
                  "waist":78.0,
                  "bloodPressure":{
                     "systolic":110.0,
                     "diastolic":62.0
                  },
                  "bloodPressure2nd":{
                     "systolic":116.0,
                     "diastolic":66.0
                  },
                  "pulseRate":96.0,
                  "bodyTemperature":36.5,
                  "diagnosises":[
                     {
                        "disease":{
                           "icd10":"Z39.2",
                           "isEpimedic":false,
                           "isChronic":false,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"การดูแลและการตรวจหลังคลอด"
                           },
                           "id":"Z39.2",
                           "name":"Routine postpartum follow-up"
                        },
                        "dxType":"PRINCIPLE_DX",
                        "isContinued":false
                     },
                     {
                        "disease":{
                           "icd10":"Z71.8",
                           "isEpimedic":false,
                           "isChronic":false,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"การให้คำปรึกษาอื่นที่ระบุรายละเอียด"
                           },
                           "id":"Z71.8",
                           "name":"Other specified counselling"
                        },
                        "dxType":"OTHER",
                        "isContinued":false
                     }
                  ],
                  "note":"เยี่ยมมารดาครั้งที่3",
                  "photosUrl":[

                  ],
                  "communityServices":[
                     {
                        "detail":"แนะนำกระตุ้นพัฒนาการเด็กให้เหมาะสมกับวัย",
                        "result":"มารดามีความรู้และจะพาบุตรไปฉีดวัคซีน DTP+HB 1 อายุ 2 เดือน และตรวจพัฒนาการ",
                        "serviceType":{
                           "type":"ServiceType",
                           "translation":{
                              "th":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                           },
                           "link":{
                              "isSynced":true,
                              "lastSync":"2018-11-22T16:27:43.127+07:00",
                              "system":"JHICS",
                              "keys":{
                                 "code":"1A213",
                                 "map":"1A213"
                              }
                           },
                           "id":"1A213",
                           "name":"เยี่ยมหญิงหลังคลอด ครั้งที่ 2 (4-6 สัปดาห์) ที่ไม่มีภาวะผิดปกติ"
                        },
                        "id":"7e7cb35e3c33445f9c791bfc2c3946a0",
                        "type":"HomeVisit",
                        "timestamp":"2018-12-06T00:00:21.739+07:00"
                     }
                  ],
                  "specialPPs":[
                     {
                        "ppType":{
                           "type":"PPType",
                           "translation":{

                           },
                           "id":"1B52",
                           "name":"ผู้มารับบริการมีพฤติกรรมไม่เคยสูบบุหรี่"
                        },
                        "time":"2018-11-12T12:49:11.000+07:00",
                        "endTime":"2018-11-12T12:55:33.000+07:00",
                        "providerId":"5c07f94a6eabfa0004258b77",
                        "patientId":"5dbd37ed698922acf8bc60e6",
                        "id":"b3b610916d0b4198a488f7b24db16438",
                        "type":"SpecialPP",
                        "timestamp":"2018-12-06T00:00:21.739+07:00"
                     },
                     {
                        "ppType":{
                           "type":"PPType",
                           "translation":{

                           },
                           "id":"1B600",
                           "name":"ผู้มารับบริการไม่เคยดื่มเครื่องดื่มแอลกอฮอล์ ตลอดชีวิตที่ผ่านมา"
                        },
                        "time":"2018-11-12T12:49:11.000+07:00",
                        "endTime":"2018-11-12T12:55:33.000+07:00",
                        "providerId":"5c07f94a6eabfa0004258b77",
                        "patientId":"5dbd37ed698922acf8bc60e6",
                        "id":"b3b610916d0b4198a488f7b24db16438",
                        "type":"SpecialPP",
                        "timestamp":"2018-12-06T00:00:21.739+07:00"
                     }
                  ],
                  "time":"2018-11-12T12:49:11.000+07:00",
                  "endTime":"2018-11-12T12:55:33.000+07:00",
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-04T14:29:05.831+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucode":"12345",
                        "visitno":"289706",
                        "pid":"9462",
                        "rightcode":"89",
                        "rightno":"R89130038321975",
                        "hosmain":"10761",
                        "hossub":"01092"
                     }
                  },
                  "providerId":"5c07f94a6eabfa0004258b77",
                  "patientId":"5dbd37ed698922acf8bc60e6",
                  "id":"5dbf993f698922acf8bdd8b2",
                  "type":"HealthCareService",
                  "timestamp":"2018-11-19T12:55:34.000+07:00"
               }
            ]
