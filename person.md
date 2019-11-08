# Group Person

## ข้อมูลคน [/org/{org_id}/person]

### รายการข้อมูลคน [GET /org/{org_id}/person/{?page}{?per_page}{?query}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + page: `1` (string, optional)
      ``เนื่องจากข้อมูลมีจำนวนมาก จำเป็นต้องแบ่งข้อมูลเป็นหน้า หากไม่ใส่จะเป็นหน้า 1``
    + per_page: `200` (string, optional)
      ``เนื่องจากข้อมูลมีจำนวนมาก จำเป็นต้องแบ่งข้อมูลเป็นหน้า เป็นค่าที่ระบุว่าใน 1 หน้ามีข้อมูลกี่ชุด หากไม่ใส่จะเป็น 200``
    + query: `ยากยิ่ง` (string, optional)
      + ค้นหาด้วยชื่อได้ เช่น `ยากยิ่ง`
      + สามารถค้นหาด้วยอายุได้ เช่น `อายุระหว่าง 14 - 25 ปี`
      + ค้นหากลุ่มผู้สูงอายุ `ผู้สูงอายุ`
      + ค้นหาคัดกรอง ติดบ้าน ติดเตียง เช่น `ติดบ้าน`, `ติดเตียง`
      + ค้นหาเพศ `ผู้หญิง`, `ผู้ชาย`
      + ค้นหาแบบผสมผสานได้ `ผู้สูงอายุผู้ติดบ้าน`, `ผู้หญิงอายุน้อยกว่า 24 ปี`

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[Person], fixed-type)

    + Body

            [
               {
                  "type":"Person",
                  "orgId":"5db0973f698922acf8b802fa",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[
                     {
                        "diagDate":"2019-10-25",
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:39.364+07:00",
                           "system":"JHICS",
                           "keys":{
                              "pcucodeperson":"12345",
                              "pid":"88877",
                              "hcode":"333"
                           }
                        },
                        "disease":{
                           "icd10":"J45.9",
                           "isEpimedic":false,
                           "isChronic":true,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"โรคหืด ไม่ระบุรายละเอียด"
                           },
                           "id":"9c9067926ec740e28a3860c8d61690dc",
                           "name":"Asthma, unspecified"
                        }
                     },
                     {
                        "diagDate":"2019-10-25",
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:40.014+07:00",
                           "system":"JHICS",
                           "keys":{
                              "pcucodeperson":"12345",
                              "pid":"88877",
                              "hcode":"333"
                           }
                        },
                        "disease":{
                           "icd10":"J45.9",
                           "isEpimedic":false,
                           "isChronic":true,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"โรคหืด ไม่ระบุรายละเอียด"
                           },
                           "id":"4764bebcaf344e089b2ad31931be627b",
                           "name":"Asthma, unspecified"
                        }
                     }
                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:39.125+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucodeperson":"12345",
                        "pid":"88877",
                        "hcode":"333",
                        "marystatus":"1",
                        "marystatusth":"โสด",
                        "famposname":"บุตร(ของ หน.ครอบครัว)",
                        "familyposition":"4",
                        "familyno":"1",
                        "fatherid":"1232122312321",
                        "father":"พารานอย ยอดคน",
                        "motherid":"1232122312321",
                        "mother":"สมดีสา ยอดคน",
                        "rightcode":"71",
                        "rightno":"ท7154468898",
                        "hosmain":"99988",
                        "hossub":"99988"
                     }
                  },
                  "relationships":[
                     {
                        "relate":"Mother",
                        "id":"5db315b9698922acf8b9de63",
                        "name":"น.ส.สุขสม เปลื้องทุกข์",
                        "age":22
                     },
                     {
                        "relate":"Child",
                        "id":"5db315b9698922acf8b9de5f",
                        "name":"น.ส.กุลสี เปลื้องทุกข์",
                        "age":31
                     },
                     {
                        "relate":"Child",
                        "id":"5db315b9698922acf8b9de61",
                        "name":"น.ส.น้ำดี เปลื้องทุกข์",
                        "age":23
                     },
                     {
                        "relate":"Child",
                        "id":"5db31646698922acf8b9f807",
                        "name":"น.ส.วรรณ เปลื้องทุกข์",
                        "age":18
                     },
                     {
                        "relate":"Child",
                        "id":"5db31649698922acf8b9f929",
                        "name":"น.ส.ชะม้อย เปลื้องทุกข์",
                        "age":15
                     },
                     {
                        "relate":"Child",
                        "id":"5db31685698922acf8ba04e7",
                        "name":"ด.ช.สารพัด ทองสุข",
                        "age":6
                     },
                     {
                        "relate":"Child",
                        "id":"5db316a2698922acf8ba0a0c",
                        "name":"ด.ช.มั่นคง เปลื้องทุกข์",
                        "age":4
                     },
                     {
                        "relate":"Child",
                        "id":"5db316a2698922acf8ba0a4d",
                        "name":"ด.ช.มาร ทองสุข",
                        "age":3
                     },
                     {
                        "relate":"Father",
                        "id":"5db31607698922acf8b9ecca",
                        "name":"นายสมใจ เปลื้องทุกข์",
                        "age":63
                     }
                  ],
                  "prename":"ด.ช.",
                  "firstname":"ปริศนา",
                  "lastname":"ยากยิ่ง",
                  "sex":"MALE",
                  "birthDate":"2008-06-27",
                  "houseId":"5db2a254698922acf8b989e2",
                  "id":"5db2a2a3698922acf8b99b46",
                  "timestamp":"2017-10-09T10:14:10.000+07:00"
               },
               {
                  "type":"Person",
                  "orgId":"5db0973f698922acf8b802fa",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[
                     {
                        "diagDate":"2019-10-25",
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:39.364+07:00",
                           "system":"JHICS",
                           "keys":{
                              "pcucodeperson":"12345",
                              "pid":"88877",
                              "hcode":"333"
                           }
                        },
                        "disease":{
                           "icd10":"J45.9",
                           "isEpimedic":false,
                           "isChronic":true,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"โรคหืด ไม่ระบุรายละเอียด"
                           },
                           "id":"9c9067926ec740e28a3860c8d61690dc",
                           "name":"Asthma, unspecified"
                        }
                     },
                     {
                        "diagDate":"2019-10-25",
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:40.014+07:00",
                           "system":"JHICS",
                           "keys":{
                              "pcucodeperson":"12345",
                              "pid":"88877",
                              "hcode":"333"
                           }
                        },
                        "disease":{
                           "icd10":"J45.9",
                           "isEpimedic":false,
                           "isChronic":true,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"โรคหืด ไม่ระบุรายละเอียด"
                           },
                           "id":"4764bebcaf344e089b2ad31931be627b",
                           "name":"Asthma, unspecified"
                        }
                     }
                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:39.125+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucodeperson":"12345",
                        "pid":"88877",
                        "hcode":"333",
                        "marystatus":"1",
                        "marystatusth":"โสด",
                        "famposname":"บุตร(ของ หน.ครอบครัว)",
                        "familyposition":"4",
                        "familyno":"1",
                        "fatherid":"1232122312321",
                        "father":"พารานอย ยอดคน",
                        "motherid":"1232122312321",
                        "mother":"สมดีสา ยอดคน",
                        "rightcode":"71",
                        "rightno":"ท7154468898",
                        "hosmain":"99988",
                        "hossub":"99988"
                     }
                  },
                  "relationships":[
                     {
                        "relate":"Mother",
                        "id":"5db315b9698922acf8b9de63",
                        "name":"น.ส.สุขสม เปลื้องทุกข์",
                        "age":22
                     },
                     {
                        "relate":"Child",
                        "id":"5db315b9698922acf8b9de5f",
                        "name":"น.ส.กุลสี เปลื้องทุกข์",
                        "age":31
                     },
                     {
                        "relate":"Child",
                        "id":"5db315b9698922acf8b9de61",
                        "name":"น.ส.น้ำดี เปลื้องทุกข์",
                        "age":23
                     },
                     {
                        "relate":"Child",
                        "id":"5db31646698922acf8b9f807",
                        "name":"น.ส.วรรณ เปลื้องทุกข์",
                        "age":18
                     },
                     {
                        "relate":"Child",
                        "id":"5db31649698922acf8b9f929",
                        "name":"น.ส.ชะม้อย เปลื้องทุกข์",
                        "age":15
                     },
                     {
                        "relate":"Child",
                        "id":"5db31685698922acf8ba04e7",
                        "name":"ด.ช.สารพัด ทองสุข",
                        "age":6
                     },
                     {
                        "relate":"Child",
                        "id":"5db316a2698922acf8ba0a0c",
                        "name":"ด.ช.มั่นคง เปลื้องทุกข์",
                        "age":4
                     },
                     {
                        "relate":"Child",
                        "id":"5db316a2698922acf8ba0a4d",
                        "name":"ด.ช.มาร ทองสุข",
                        "age":3
                     },
                     {
                        "relate":"Father",
                        "id":"5db31607698922acf8b9ecca",
                        "name":"นายสมใจ เปลื้องทุกข์",
                        "age":63
                     }
                  ],
                  "prename":"ด.ช.",
                  "firstname":"มั่นคง",
                  "lastname":"ยากยิ่ง",
                  "sex":"MALE",
                  "birthDate":"2008-06-27",
                  "houseId":"5db2a254698922acf8b989e2",
                  "id":"5db2a2a3698922acf8b98594",
                  "timestamp":"2017-10-09T10:14:10.000+07:00"
               }
            ]

### ดึงข้อมูลคนด้วย id [GET /org/{org_id}/person/{person_id}]

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + person_id: `5db31646698922acf8b9f807` (string, required)
      ``รหัส id คนที่ระบบสร้างให้``

+ Response 200 (application/json)

    + Attributes (Person)

    + Body

            {
               "type":"Person",
               "orgId":"5db0973f698922acf8b802fa",
               "identities":[
                  {
                     "type":"thailand-citizen-id",
                     "id":"1232122312321"
                  }
               ],
               "chronics":[
                  {
                     "diagDate":"2019-10-25",
                     "link":{
                        "isSynced":true,
                        "lastSync":"2019-10-25T14:20:39.364+07:00",
                        "system":"JHICS",
                        "keys":{
                           "pcucodeperson":"12345",
                           "pid":"88877",
                           "hcode":"333"
                        }
                     },
                     "disease":{
                        "icd10":"J45.9",
                        "isEpimedic":false,
                        "isChronic":true,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"โรคหืด ไม่ระบุรายละเอียด"
                        },
                        "id":"9c9067926ec740e28a3860c8d61690dc",
                        "name":"Asthma, unspecified"
                     }
                  },
                  {
                     "diagDate":"2019-10-25",
                     "link":{
                        "isSynced":true,
                        "lastSync":"2019-10-25T14:20:40.014+07:00",
                        "system":"JHICS",
                        "keys":{
                           "pcucodeperson":"12345",
                           "pid":"88877",
                           "hcode":"333"
                        }
                     },
                     "disease":{
                        "icd10":"J45.9",
                        "isEpimedic":false,
                        "isChronic":true,
                        "isNCD":false,
                        "type":"Icd10",
                        "translation":{
                           "th":"โรคหืด ไม่ระบุรายละเอียด"
                        },
                        "id":"4764bebcaf344e089b2ad31931be627b",
                        "name":"Asthma, unspecified"
                     }
                  }
               ],
               "disabilities":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-10-25T14:20:39.125+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucodeperson":"12345",
                     "pid":"88877",
                     "hcode":"333",
                     "marystatus":"1",
                     "marystatusth":"โสด",
                     "famposname":"บุตร(ของ หน.ครอบครัว)",
                     "familyposition":"4",
                     "familyno":"1",
                     "fatherid":"1232122312321",
                     "father":"พารานอย ยอดคน",
                     "motherid":"1232122312321",
                     "mother":"สมดีสา ยอดคน",
                     "rightcode":"71",
                     "rightno":"ท7154468898",
                     "hosmain":"99988",
                     "hossub":"99988"
                  }
               },
               "relationships":[
                  {
                     "relate":"Mother",
                     "id":"5db315b9698922acf8b9de63",
                     "name":"น.ส.สุขสม เปลื้องทุกข์",
                     "age":22
                  },
                  {
                     "relate":"Child",
                     "id":"5db315b9698922acf8b9de5f",
                     "name":"น.ส.กุลสี เปลื้องทุกข์",
                     "age":31
                  },
                  {
                     "relate":"Child",
                     "id":"5db315b9698922acf8b9de61",
                     "name":"น.ส.น้ำดี เปลื้องทุกข์",
                     "age":23
                  },
                  {
                     "relate":"Child",
                     "id":"5db31646698922acf8b9f807",
                     "name":"น.ส.วรรณ เปลื้องทุกข์",
                     "age":18
                  },
                  {
                     "relate":"Child",
                     "id":"5db31649698922acf8b9f929",
                     "name":"น.ส.ชะม้อย เปลื้องทุกข์",
                     "age":15
                  },
                  {
                     "relate":"Child",
                     "id":"5db31685698922acf8ba04e7",
                     "name":"ด.ช.สารพัด ทองสุข",
                     "age":6
                  },
                  {
                     "relate":"Child",
                     "id":"5db316a2698922acf8ba0a0c",
                     "name":"ด.ช.มั่นคง เปลื้องทุกข์",
                     "age":4
                  },
                  {
                     "relate":"Child",
                     "id":"5db316a2698922acf8ba0a4d",
                     "name":"ด.ช.มาร ทองสุข",
                     "age":3
                  },
                  {
                     "relate":"Father",
                     "id":"5db31607698922acf8b9ecca",
                     "name":"นายสมใจ เปลื้องทุกข์",
                     "age":63
                  }
               ],
               "prename":"ด.ช.",
               "firstname":"ปริศนา",
               "lastname":"ยากยิ่ง",
               "sex":"MALE",
               "birthDate":"2008-06-27",
               "houseId":"5db2a254698922acf8b989e2",
               "id":"5db2a2a3698922acf8b99b46",
               "timestamp":"2017-10-09T10:14:10.000+07:00"
            }

### การเพิ่มคน [POST]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (Person, fixed-type)

    + Body

            {
               "identities":[
                  {
                     "type":"thailand-citizen-id",
                     "id":"1232122312321"
                  }
               ],
               "prename":"นางสาว",
               "firstname":"พรทิพา",
               "lastname":"เอฟเอฟซี",
               "chronics":[

               ],
               "sex":"UNKNOWN",
               "birthDate":"1993-06-29",
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-06-25T14:09:07.815+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pid":"1234560",
                     "cid":"11014578451230"
                  }
               },
               "id":"76f5dc0db6b247ce9d5241dda6557300",
               "type":"Person",
               "timestamp":"2018-06-25T14:09:07.815+07:00",
               "houseId":"5dbbd028698922acf8bc5798"
            }

+ Response 201 (application/json)

    + Attributes (Person, fixed-type)

    + Body

            {
               "orgId":"5dbbc89c698922acf8bc5789",
               "identities":[
                  {
                     "type":"thailand-citizen-id",
                     "id":"1232122312321"
                  }
               ],
               "chronics":[

               ],
               "disabilities":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-06-25T14:09:07.815+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pid":"1234560",
                     "cid":"11014578451230"
                  }
               },
               "relationships":[

               ],
               "prename":"นางสาว",
               "firstname":"พรทิพา",
               "lastname":"เอฟเอฟซี",
               "sex":"UNKNOWN",
               "birthDate":"1993-06-29",
               "houseId":"5dbbd028698922acf8bc5798",
               "id":"5dbd37ed698922acf8bc60e6",
               "type":"Person",
               "timestamp":"2018-06-25T14:09:07.815+07:00"
            }

### เพิ่มแบบหลายคน [POST /org/{org_id}/persons]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[Person], fixed-type)

    + Body

            [
               {
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "prename":"นาย",
                  "firstname":"พิรุณ",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "id":"111a0034c55d4840b7c8470c620cf1ef",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00",
                  "houseId":"5dbbd028698922acf8bc5798"
               },
               {
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "prename":"นาย",
                  "firstname":"ธนชัย",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "id":"4c40a8712a8e4a0f99b1a86434bd0d9c",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00",
                  "houseId":"5dbbd028698922acf8bc5798"
               },
               {
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "prename":"นางสาว",
                  "firstname":"ณัฏฐณิชา",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "id":"3b241ca6662e4cbcab35ecba6fd6b25e",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00",
                  "houseId":"5dbbd028698922acf8bc5798"
               },
               {
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-02-05T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1231949",
                        "cid":"11014578451949"
                     }
                  },
                  "prename":"นาย",
                  "firstname":"วัชรากร",
                  "lastname":"หนูทอง",
                  "sex":"UNKNOWN",
                  "birthDate":"1949-06-29",
                  "id":"3b241ca6662e4cbcab35ecba6fd61949",
                  "type":"Person",
                  "timestamp":"2019-02-05T14:09:07.815+07:00",
                  "houseId":"5dbbd028698922acf8bc5798"
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[Person], fixed-type)

    + Body

            [
               {
                  "orgId":"5dbbc89c698922acf8bc5789",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "relationships":[

                  ],
                  "prename":"นาย",
                  "firstname":"พิรุณ",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "houseId":"5dbbd028698922acf8bc5798",
                  "id":"5dbd3a2b698922acf8bc60e7",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00"
               },
               {
                  "orgId":"5dbbc89c698922acf8bc5789",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "relationships":[

                  ],
                  "prename":"นาย",
                  "firstname":"ธนชัย",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "houseId":"5dbbd028698922acf8bc5798",
                  "id":"5dbd3a2b698922acf8bc60e8",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00"
               },
               {
                  "orgId":"5dbbc89c698922acf8bc5789",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-25T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1234567",
                        "cid":"11014578451234"
                     }
                  },
                  "relationships":[

                  ],
                  "prename":"นางสาว",
                  "firstname":"ณัฏฐณิชา",
                  "lastname":"เอฟเอฟซี",
                  "sex":"UNKNOWN",
                  "birthDate":"1993-06-29",
                  "houseId":"5dbbd028698922acf8bc5798",
                  "id":"5dbd3a2b698922acf8bc60e9",
                  "type":"Person",
                  "timestamp":"2018-06-25T14:09:07.815+07:00"
               },
               {
                  "orgId":"5dbbc89c698922acf8bc5789",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-02-05T14:09:07.815+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pid":"1231949",
                        "cid":"11014578451949"
                     }
                  },
                  "relationships":[

                  ],
                  "prename":"นาย",
                  "firstname":"วัชรากร",
                  "lastname":"หนูทอง",
                  "sex":"UNKNOWN",
                  "birthDate":"1949-06-29",
                  "houseId":"5dbbd028698922acf8bc5798",
                  "id":"5dbd3a2b698922acf8bc60ea",
                  "type":"Person",
                  "timestamp":"2019-02-05T14:09:07.815+07:00"
               }
            ]

### การแก้ไขข้อมูลคน [PUT /org/{org_id}/person/{person_id}]

ใช้ในการแก้ไขข้อมูลคนที่อยู่บนระบบ FFC หากแก้ไขสำเร็จ FFC Cloud จะส่งข้อมูลที่แก้ไขสำเร็จกลับคืนมาให้

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + person_id: `5dbd37ed698922acf8bc60e6` (string, required)
      ``รหัส id ของคนที่ต้องการจะแก้ไข``

+ Request (application/json)

  หากสำเร็จจะส่งข้อมูลเดิมกลับมาให้

    + Headers

            Authorization: Bearer {token}

    + Attributes (Person, fixed-type)

    + Body

            {
               "identities":[
                  {
                     "type":"thailand-citizen-id",
                     "id":"1232122312321"
                  }
               ],
               "prename":"นางสาว",
               "firstname":"พรทิพาทิพา",
               "lastname":"เอฟเอฟซี",
               "chronics":[

               ],
               "sex":"UNKNOWN",
               "birthDate":"1993-06-29",
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-06-25T14:09:07.815+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pid":"1234560",
                     "cid":"11014578451230"
                  }
               },
               "id":"5dbd37ed698922acf8bc60e6",
               "type":"Person",
               "timestamp":"2018-06-25T14:09:07.815+07:00",
               "houseId":"5dbbd028698922acf8bc5798"
            }

+ Response 201 (application/json)

    + Attributes (Person, fixed-type)

    + Body

            {
               "orgId":"5dbbc89c698922acf8bc5789",
               "identities":[
                  {
                     "type":"thailand-citizen-id",
                     "id":"1232122312321"
                  }
               ],
               "chronics":[

               ],
               "disabilities":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-11-02T15:28:52.647+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pid":"1234560",
                     "cid":"11014578451230"
                  }
               },
               "relationships":[

               ],
               "prename":"นางสาว",
               "firstname":"พรทิพาทิพา",
               "lastname":"เอฟเอฟซี",
               "sex":"UNKNOWN",
               "birthDate":"1993-06-29",
               "houseId":"5dbbd028698922acf8bc5798",
               "id":"5dbd37ed698922acf8bc60e6",
               "type":"Person",
               "timestamp":"2018-06-25T14:09:07.815+07:00"
            }

## ความสัมพันธ์ทางสายเสือด [/org/{org_id}/person/{person_id}/relationship]

### ดูความสัมพันธ์ [GET /org/{org_id}/person/{person_id}/relationship]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + person_id: `5dbd37ed698922acf8bc60e6` (string, required)
      ``รหัส id ของคนที่ต้องการจะแก้ไข``

+ Request (application/json)

  หากสำเร็จจะส่งข้อมูลเดิมกลับมาให้

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[Relationship], fixed-type)

    + Body

            [
               {
                  "relate":"Married",
                  "id":"5dc0f13b698922acf8bde5e8",
                  "name":"น.ส.เจียน แซ่เล้า",
                  "age":70
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b5",
                  "name":"นายวินัย แซ่อึ้ง",
                  "age":57
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b7",
                  "name":"น.ส.จรรยา แซ่อึ้ง",
                  "age":48
               },
               {
                  "relate":"Child",
                  "id":"5dc0f174698922acf8bdf0b8",
                  "name":"นายปรีชา แซ่อึ้ง",
                  "age":47
               }
            ]

### ใส่ความสัมพันธ์ [PUT /org/{org_id}/person/{person_id}/relationship]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + person_id: `5dbd37ed698922acf8bc60e6` (string, required)
      ``รหัส id ของคนที่ต้องการจะแก้ไข``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[Relationship], fixed-type)

    + Body

            [
               {
                  "relate":"Married",
                  "id":"5dc0f13b698922acf8bde5e8",
                  "name":"น.ส.เจียน แซ่เล้า",
                  "age":70
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b5",
                  "name":"นายวินัย แซ่อึ้ง",
                  "age":57
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b7",
                  "name":"น.ส.จรรยา แซ่อึ้ง",
                  "age":48
               },
               {
                  "relate":"Child",
                  "id":"5dc0f174698922acf8bdf0b8",
                  "name":"นายปรีชา แซ่อึ้ง",
                  "age":47
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[Relationship], fixed-type)

    + Body

            [
               {
                  "relate":"Married",
                  "id":"5dc0f13b698922acf8bde5e8",
                  "name":"น.ส.เจียน แซ่เล้า",
                  "age":70
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b5",
                  "name":"นายวินัย แซ่อึ้ง",
                  "age":57
               },
               {
                  "relate":"Child",
                  "id":"5dc0f170698922acf8bdf0b7",
                  "name":"น.ส.จรรยา แซ่อึ้ง",
                  "age":48
               },
               {
                  "relate":"Child",
                  "id":"5dc0f174698922acf8bdf0b8",
                  "name":"นายปรีชา แซ่อึ้ง",
                  "age":47
               }
            ]

### ดึงคนที่มีความสัมพันธ์กับผู้ที่เลือก [GET /org/{org_id}/person/{person_id}/genogram/collect]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + person_id: `5dbd37ed698922acf8bc60e6` (string, required)
      ``รหัส id ของคนที่ต้องการจะแก้ไข``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[Person], fixed-type)

    + Body

            [
               {
                  "orgId":"5db0973f698922acf8b802fa",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-05T12:07:50.182+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucodeperson":"12345",
                        "pid":"82",
                        "hcode":"25",
                        "marystatus":"1",
                        "marystatusth":"โสด",
                        "famposname":"หัวหน้าครอบครัว",
                        "familyposition":"1",
                        "familyno":"1",
                        "fatherid":"1232122312321",
                        "father":"สินพงศ์",
                        "motherid":"1232122312321",
                        "mother":"ปรานทิพย์  แซ่ซิ้ม",
                        "rightcode":"89",
                        "rightno":"8949205305",
                        "hosmain":"10728",
                        "hossub":"07918"
                     }
                  },
                  "relationships":[
                     {
                        "relate":"Father",
                        "id":"5dc10411698922059b7ba7c6",
                        "name":"นายสินพงศ์ ธนโชติดิลกพัฒน์",
                        "age":55
                     },
                     {
                        "relate":"Mother",
                        "id":"5dc103c5698922059b7b98fc",
                        "name":"นางปรานทิพย์ แซ่ซิ้ม",
                        "age":51
                     }
                  ],
                  "prename":"นาย",
                  "firstname":"กิตติศักดิ์",
                  "lastname":"ธนโชติดิลกพัฒน์",
                  "sex":"MALE",
                  "birthDate":"1979-07-27",
                  "houseId":"5dc103ab698922059b7b95bb",
                  "id":"5dc103c5698922059b7b98fd",
                  "type":"Person",
                  "timestamp":"2017-10-19T13:39:23.000+07:00"
               },
               {
                  "orgId":"5db0973f698922acf8b802fa",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-05T12:07:50.416+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucodeperson":"12345",
                        "pid":"4355",
                        "hcode":"1",
                        "marystatus":"2",
                        "marystatusth":"คู่ ",
                        "famposname":"อื่นๆ(บุตรบุญธรรม/คนรับใช้/...)",
                        "familyposition":"0",
                        "familyno":"1",
                        "rightcode":"89",
                        "rightno":"8940856044",
                        "hosmain":"10728",
                        "hossub":"07919"
                     }
                  },
                  "death":{
                     "date":"2007-11-30",
                     "causes":[
                        {
                           "icd10":"I50.9",
                           "isEpimedic":false,
                           "isChronic":false,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"หัวใจล้มเหลว ไม่ระบุรายละเอียด"
                           },
                           "id":"I50.9",
                           "name":"Heart failure, unspecified"
                        },
                        {
                           "icd10":"I50.9",
                           "isEpimedic":false,
                           "isChronic":false,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"หัวใจล้มเหลว ไม่ระบุรายละเอียด"
                           },
                           "id":"I50.9",
                           "name":"Heart failure, unspecified"
                        }
                     ]
                  },
                  "relationships":[
                     {
                        "relate":"Child",
                        "id":"5dc103c5698922059b7b98fd",
                        "name":"นายกิตติศักดิ์ ธนโชติดิลกพัฒน์",
                        "age":40
                     }
                  ],
                  "prename":"นาย",
                  "firstname":"สินพงศ์",
                  "lastname":"ธนโชติดิลกพัฒน์",
                  "sex":"MALE",
                  "birthDate":"1952-07-01",
                  "houseId":"5dc103ab698922059b7b95a5",
                  "id":"5dc10411698922059b7ba7c6",
                  "type":"Person",
                  "timestamp":"2013-01-26T10:27:19.000+07:00"
               },
               {
                  "orgId":"5db0973f698922acf8b802fa",
                  "identities":[
                     {
                        "type":"thailand-citizen-id",
                        "id":"1232122312321"
                     }
                  ],
                  "chronics":[

                  ],
                  "disabilities":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-05T12:07:50.182+07:00",
                     "system":"JHICS",
                     "keys":{
                        "pcucodeperson":"12345",
                        "pid":"81",
                        "hcode":"25",
                        "marystatus":"2",
                        "marystatusth":"คู่ ",
                        "famposname":"หัวหน้าครอบครัว",
                        "familyposition":"1",
                        "familyno":"1",
                        "father":"เซี้ยว",
                        "mother":"กิมเฮียง",
                        "mate":"สินพงศ์",
                        "rightcode":"89",
                        "rightno":"8949612502",
                        "hosmain":"10728",
                        "hossub":"07918"
                     }
                  },
                  "death":{
                     "date":"2014-07-08",
                     "causes":[
                        {
                           "icd10":"W34.12",
                           "isEpimedic":false,
                           "isChronic":false,
                           "isNCD":false,
                           "type":"Icd10",
                           "translation":{
                              "th":"กระสุนปืนอื่นและที่ไม่ระบุรายละเอียด ที่พักอาศัยรวมขณะทำงานเพื่อรายได้"
                           },
                           "id":"W34.12",
                           "name":"Discharge from other and unspecified firearms at residential institution While worki"
                        }
                     ]
                  },
                  "relationships":[
                     {
                        "relate":"Child",
                        "id":"5dc103c5698922059b7b98fd",
                        "name":"นายกิตติศักดิ์ ธนโชติดิลกพัฒน์",
                        "age":40
                     }
                  ],
                  "prename":"นาง",
                  "firstname":"ปรานทิพย์",
                  "lastname":"แซ่ซิ้ม",
                  "sex":"FEMALE",
                  "birthDate":"1963-05-19",
                  "houseId":"5dc103ab698922059b7b95bb",
                  "id":"5dc103c5698922059b7b98fc",
                  "type":"Person",
                  "timestamp":"2014-07-09T09:17:29.000+07:00"
               }
            ]
