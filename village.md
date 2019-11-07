## ข้อมูลหมู่บ้าน [/org/{org_id}/village]

### เพิ่มหมู่บ้านใน FFC Cloud [POST /org/{org_id}/village]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (Village,fixed-type)

    + Body

            {
               "name":"บ้าน Nectec",
               "places":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-10-24T01:09:05.417+07:00",
                  "system":"JHICS",
                  "keys":{
                     "villcode":"70041206",
                     "pcucode":"12345"
                  }
               },
               "id":"999999999db09741698922acf8b80324",
               "type":"Village",
               "timestamp":"2019-10-24T01:09:05.412+07:00"
            }

+ Response 201 (application/json)

    + Attributes (Village,fixed-type)

    + Body

            {
               "name":"บ้าน Nectec",
               "places":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-10-24T01:09:05.417+07:00",
                  "system":"JHICS",
                  "keys":{
                     "villcode":"70041206",
                     "pcucode":"12345"
                  }
               },
               "id":"5dc13336698922059b7bbfad",
               "type":"Village",
               "timestamp":"2019-10-24T01:09:05.412+07:00"
            }

### เพิ่มหมู่บ้านใน FFC Cloud แบบ array [POST /org/{org_id}/villages]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[Village],fixed-type)

    + Body

            [
               {
                  "type":"Village",
                  "name":"บ้าน Nectec 3",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.417+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041206",
                        "pcucode":"12345"
                     }
                  },
                  "id":"999999999db09741698922acf8b80324",
                  "timestamp":"2019-10-24T01:09:05.412+07:00"
               },
               {
                  "type":"Village",
                  "name":"บ้าน Nectec 2",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.417+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041206",
                        "pcucode":"12345"
                     }
                  },
                  "id":"999999999db09741698922acf8b80324",
                  "timestamp":"2019-10-24T01:09:05.412+07:00"
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[Village],fixed-type)

    + Body

            [
               {
                  "name":"บ้าน Nectec 3",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.417+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041206",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5dc1361a698922059b7bbfae",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.412+07:00"
               },
               {
                  "name":"บ้าน Nectec 2",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.417+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041206",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5dc1361a698922059b7bbfaf",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.412+07:00"
               }
            ]

### ดูข้อมูลหมู่บ้านที่หน่วยงานดูแลอยู่ [GET /org/{org_id}/village]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[Village],fixed-type)

    + Body

            [
               {
                  "name":"นอกเขต(ใช้บันทึกคนนอกเขตฯ)",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.409+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041200",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09741698922acf8b80323",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.409+07:00"
               },
               {
                  "name":"บ้านศาลไต้เซี่ย",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.417+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041206",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09741698922acf8b80324",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.412+07:00"
               },
               {
                  "name":"บ้านรางห้าตำลึง",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.418+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041207",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09741698922acf8b80325",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.418+07:00"
               },
               {
                  "name":"บ้านคลองพันเละ",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.419+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09741698922acf8b80326",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.419+07:00"
               },
               {
                  "name":"บ้านดอนฟักทอง",
                  "places":[

                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:05.419+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041209",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09741698922acf8b80327",
                  "type":"Village",
                  "timestamp":"2019-10-24T01:09:05.419+07:00"
               }
            ]


### ดึงข้อมูลหมู่บ้านด้วย id ของระบบ [GET /org/{org_id}/village/{village_id}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``
    + village_id: `5db31646698922acf8b9f807` (string, required)
      ``รหัสหมู่บ้านที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (Village)

    + Body

            {
               "name":"บ้านคลองพันเละ",
               "places":[

               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-10-24T01:09:05.419+07:00",
                  "system":"JHICS",
                  "keys":{
                     "villcode":"70041208",
                     "pcucode":"12345"
                  }
               },
               "id":"5db09741698922acf8b80326",
               "type":"Village",
               "timestamp":"2019-10-24T01:09:05.419+07:00"
            }
