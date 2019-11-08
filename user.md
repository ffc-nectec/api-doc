# Group User

## ระบบ login [/org/{org_id}/authorize]

### login เพื่อขอ token [POST /org/{org_id}/authorize]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Body

                {
                    "username":"pcu100214.airsync",
                    "password":"a1e6-4f63e8295160"
                }

+ Response 201 (application/json)

    + Attributes (Token , fixed-type)

    + Body

            {
               "createDate":"2019-11-01T12:59:14.669+07:00",
               "expireDate":"2019-11-02T12:59:14.669+07:00",
               "user":{
                  "name":"pcu100214.airsync",
                  "orgId":"5dbbc89c698922acf8bc5789",
                  "isActivated":true,
                  "activateTime":"2019-11-01T12:54:36.771+07:00",
                  "roles":[
                     "ADMIN",
                     "SYNC_AGENT" // ถ้ามี token จะไม่หมดอายุ ถ้าไม่มีจะหมดอายุ
                  ],
                  "id":"5dbbc89c698922acf8bc578a",
                  "type":"User",
                  "timestamp":"2019-11-01T12:54:36.771+07:00",
                  "bundle":{

                  }
               },
               "token":"b1CfPvPRODzxOtvbXNNUUf6jMZiPLuZBvUQ6968slHsTtNvOHhxkmT66fOo5n3Ld"
            }

### การเปิดใช้งานผู้ใช้ [PUT /org/{org_id}/user/activadte]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Body

                {
                    "username":"pcu100214.airsync",
                    "password":"a1e6-4f63e8295160",
                    "otp":"222111"
                }

+ Response 200 (application/json)

    + Attributes (Token)

    + Body

            {
                "role": "USER",
                "name": "",
                "timestamp": "2019-10-29T14:18:19.775+07:00",
                "createDate": "2019-10-29T14:18:19.775+07:00",
                "expireDate": "2044-06-19T14:18:19.775+07:00",
                "user": {
                    "name": "pcu100214.airsync",
                    "orgId": "5db7e77d0d8ba70004eea371",
                    "role": "ORG",
                    "roles": [
                        "ORG"
                    ],
                    "id": "5db7e77d0d8ba70004eea370",
                    "type": "User",
                    "timestamp": "2018-06-28T14:19:29.645+07:00",
                    "bundle": {}
                },
                "token": "7l3Ln8fgKvCEwGvC33OMm"
            }

### ขอเลข OTP สำหรับยืนยันผู้ใช้ในครั้งแรก [GET /org/{org_id}/otp]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (OTP , fixed-type)

    + Body

            {
               "otp":"366868"
            }

## ข้อตกลงการใช้งาน [/org/{org_id}/user/{user_id}/agreement]

### ดูข้อตกลงของผู้ใช้ [GET /org/{org_id}/user/{user_id}/agreement/terms/latest]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + user_id: `5db09741698922acf8b80322` (string, required)
      ``รหัส id ของ User ในระบบ FFC Cloud``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (Agreement , fixed-type)

    + Body

            {
               "version":"de664cdd3df4bda583db27a51c1e95cc",
               "agreeTime":"2019-10-24T01:18:18.850+07:00"
            }

### ดูนโยบายความเป็นส่วนตัวของผู้ใช้ [GET /org/{org_id}/user/{user_id}/agreement/privacy/latest]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (Agreement , fixed-type)

    + Body

            {
               "version":"de664cdd3df4bda583db27a51c1e95cc",
               "agreeTime":"2019-10-24T01:18:18.850+07:00"
            }

### เพิ่มการยอมรับนโยบายความเป็นส่วนตัว [POST /org/{org_id}/user/{user_id}/agreement/privacy/{version}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``
    + user_id: `5db09741698922acf8b80322` (string, required)
      ``รหัส id ของ User ในระบบ FFC Cloud``
    + version: `de664cdd3df4bda583db27a51c1e95cc` (string, required)
      ``เลข version ของเอกสารที่ยอมรับ``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 201

    + Body


## ข้อมูลผู้ใช้ [/org/{org_id}/user]

### ดูรายการผู้ใช้ [GET /org/{org_id}/user]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[User] , fixed-type)

    + Body

            [
               {
                  "name":"จิรกิตต์",
                  "orgId":"5db0973f698922acf8b802fa",
                  "isActivated":false,
                  "roles":[
                     "PROVIDER"
                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:03.862+07:00",
                     "system":"JHICS",
                     "keys":{
                        "username":"จิรกิตต์",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09740698922acf8b8031d",
                  "type":"User",
                  "timestamp":"2019-10-24T01:09:03.862+07:00",
                  "bundle":{

                  }
               },
               {
                  "name":"ธนชัยด",
                  "orgId":"5db0973f698922acf8b802fa",
                  "isActivated":false,
                  "roles":[
                     "PROVIDER"
                  ],
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-24T01:09:03.862+07:00",
                     "system":"JHICS",
                     "keys":{
                        "username":"ธนชัยด",
                        "pcucode":"12345"
                     }
                  },
                  "id":"5db09740698922acf8b8031e",
                  "type":"User",
                  "timestamp":"2019-10-24T01:09:03.862+07:00",
                  "bundle":{

                  }
               }
            ]

### เพิ่มผู้ใช้ [POST /org/{org_id}/user]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ของหน่วยงาน``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[User] , fixed-type)

    + Body

            [
               {
                  "name":"blast",
                  "password":"theblast",
                  "role":"USER",
                  "id":"1238c14b3feb47dba0311cf6dd8233a6",
                  "type":"User",
                  "timestamp":"2018-06-28T14:14:43.645+07:00"
               },
               {
                  "name":"max",
                  "password":"maxmax",
                  "role":"USER",
                  "id":"456194a5b85b4733889247578e4bd5f0",
                  "type":"User",
                  "timestamp":"2018-06-28T14:19:29.645+07:00"
               },
               {
                  "name":"Yuzu",
                  "password":"Yuzu",
                  "role":"USER",
                  "id":"789194a5b85b4733889247578e4bd5f0",
                  "type":"User",
                  "timestamp":"2018-06-28T14:30:29.645+07:00"
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[User] , fixed-type)

    + Body

            [
               {
                  "name":"blast",
                  "orgId":"5db0973f698922acf8b802fa",
                  "isActivated":false,
                  "roles":[

                  ],
                  "id":"5dc11b97698922059b7bbfaa",
                  "type":"User",
                  "timestamp":"2018-06-28T14:14:43.645+07:00",
                  "bundle":{

                  }
               },
               {
                  "name":"max",
                  "orgId":"5db0973f698922acf8b802fa",
                  "isActivated":false,
                  "roles":[

                  ],
                  "id":"5dc11b98698922059b7bbfab",
                  "type":"User",
                  "timestamp":"2018-06-28T14:19:29.645+07:00",
                  "bundle":{

                  }
               },
               {
                  "name":"Yuzu",
                  "orgId":"5db0973f698922acf8b802fa",
                  "isActivated":false,
                  "roles":[

                  ],
                  "id":"5dc11b98698922059b7bbfac",
                  "type":"User",
                  "timestamp":"2018-06-28T14:30:29.645+07:00",
                  "bundle":{

                  }
               }
            ]
