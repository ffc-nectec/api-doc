## จัดการเกี่ยวกับหน่วยงาน [/org]

### แสดงหน่วยงานทั้งหมดที่ใช้งาน [GET]

+ Response 200 (application/json)

    + Attributes (array[Organization], fixed-type)

    + Body

            [
               {
                  "name":"โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านทางยางม7",
                  "displayName":"โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านทางยาง ม.7",
                  "address":"สตูล",
                  "users":[

                  ],
                  "id":"5c889fce6989229b7882eb15",
                  "type":"Organization",
                  "timestamp":"2019-03-13T13:14:13.486+07:00"
               },
               {
                  "name":"รพสตบ้านปากน้ำตฉวางอฉวาง",
                  "displayName":"รพ.สต.บ้านปากน้ำ ต.ฉวาง อ.ฉวาง ",
                  "tel":"075-466949 ",
                  "address":"นครศรีธรรมราช",
                  "users":[

                  ],
                  "id":"5c8b50fb698922768b669eb3",
                  "type":"Organization",
                  "timestamp":"2019-03-15T14:15:07.999+07:00"
               }
            ]

### ลงทะเบียนเปิดใช้งานหน่วยงานใหม่ [POST]

การลงทะเบียนหน่วยงานใหม่ ในนหน่วยงานจำเป็นต้องมี user ที่มี roles เป็น ORG ด้วยไม่งั้นระบบจะไม่ยอม

+ Request (application/json)

    + Attributes (Organization, fixed-type)

    + Body

            {
               "name":"รพสต-พรทิพา1",
               "displayName":"รพ.สต. พรทิพา 1",
               "users":[
                  {
                     "name":"pcu100214.airsync",
                     "password":"a1e6-4f63e8295160",
                     "roles":[
                        "ADMIN"
                     ],
                     "id":"5dc194a5b85b4733889247578e4bd5f0",
                     "type":"User",
                     "timestamp":"2018-06-28T14:19:29.645+07:00"
                  }
               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-06-28T17:21:29.645+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345"
                  }
               },
               "id":"1459f3933d5e4ef8b0a68463c012f26b",
               "type":"Organization",
               "timestamp":"2018-06-28T17:17:43.645+07:00"
            }

+ Response 200 (application/json)

    + Attributes (Organization, fixed-type)

    + Body

            {
               "name":"รพสต-พรทิพา1",
               "displayName":"รพ.สต. พรทิพา 1",
               "users":[
                  {
                     "name":"pcu100214.airsync",
                     "orgId":"5dbbc89c698922acf8bc5789",
                     "isActivated":true,
                     "activateTime":"2019-11-01T12:54:36.771+07:00",
                     "roles":[
                        "ADMIN"
                     ],
                     "id":"5dbbc89c698922acf8bc578a",
                     "type":"User",
                     "timestamp":"2019-11-01T12:54:36.771+07:00",
                     "bundle":{

                     }
                  }
               ],
               "link":{
                  "isSynced":true,
                  "lastSync":"2018-06-28T17:21:29.645+07:00",
                  "system":"JHICS",
                  "keys":{
                     "pcucode":"12345"
                  }
               },
               "id":"5dbbc89c698922acf8bc5789",
               "type":"Organization",
               "timestamp":"2018-06-28T17:17:43.645+07:00"
            }

### ค้นหาด้วยชื่อ หรือ รหัสหน่วยงาน [GET /org{?query}]

+ Parameters

    + query (string) ... ชื่อหน่วยงาน หรือ รหัสหน่ยงาน

+ Response 200 (application/json)

    + Attributes (array[Organization], fixed-type)

    + Body

            [
               {
                  "name":"Nectecเนคเทคฐานทดสอบ",
                  "displayName":"Nectec เนคเทค ฐานทดสอบ",
                  "address":"ราชบุรี",
                  "users":[

                  ],
                  "id":"5db0973f698922acf8b802fa",
                  "type":"Organization",
                  "timestamp":"2019-10-24T01:09:02.297+07:00"
               }
            ]

### ลบหน่วยงานทิ้ง [DELETE /org/{org_id}]
ทำการลบข้อมูลทั้งหมดของหน่วยงานที่เลือก ออกจาก Cloud

+ Request (application/json)

    + Headers

            Authorization: Bearer {org_token}

+ Response 200
