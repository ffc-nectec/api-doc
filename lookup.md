## Lookup ประเภทการเยี่ยม homehealth [/homehealth]

### ดูรายการเยี่ยม [GET /homehealth{?query}]

+ Parameters
    + query: `เบาหวาน` (string)
      ``ข้อความการเยี่ยม เช่น ไข้หวัด``

+ Response 200 (application/json)

    + Attributes (array[ServiceType], fixed-type)

    + Body

            [
                {
                    "type": "ServiceType",
                    "translation": {},
                    "id": "1A000",
                    "name": "เยี่ยมผู้ป่วยโรคความดันโลหิตสูง"
                },
                {
                    "type": "ServiceType",
                    "translation": {},
                    "id": "1A001",
                    "name": "เยี่ยมผู้ป่วยโรคเบาหวาน "
                },
                {
                    "type": "ServiceType",
                    "translation": {},
                    "id": "1A002",
                    "name": "เยี่ยมผู้ป่วยโรคมะเร็ง"
                }
            ]

### ดูด้วย id การเยี่ยม [GET /homehealth/{homehealthid}]

+ Parameters
    + homehealthid: `1A01106` (string)
      ``id ของ home health``

+ Response 200 (application/json)

    + Attributes (ServiceType, fixed-type)

    + Body

            {
                "type": "ServiceType",
                "translation": {
                    "th": "เยี่ยมผู้ป่วยโรคหลอดเลือดสมอง"
                },
                "link": {
                    "isSynced": true,
                    "lastSync": "2018-11-22T16:27:43.118+07:00",
                    "system": "JHICS",
                    "keys": {
                        "code": "1A01106",
                        "map": "1A005"
                    }
                },
                "id": "1A01106",
                "name": "เยี่ยมผู้ป่วยโรคหลอดเลือดสมอง"
            }

## Lookup รายการโรค [/disease]

### ดูรายการโรค [GET /disease{?query}]

+ Parameters
    + query: `fever` (string)
      ``ข้อความโรคที่ต้องการค้นหา``

+ Response 200 (application/json)

    + Attributes (array[Disease], fixed-type)

    + Body

            [
                {
                    "icd10": "A00",
                    "isEpimedic": false,
                    "isChronic": false,
                    "isNCD": false,
                    "type": "Icd10",
                    "translation": {
                        "en": "Cholera"
                    },
                    "id": "A00",
                    "name": "อหิวาตกโรค"
                },
                {
                    "icd10": "A00.0",
                    "isEpimedic": false,
                    "isChronic": false,
                    "isNCD": false,
                    "type": "Icd10",
                    "translation": {
                        "en": "Cholera due to Vibrio cholerae 01, biovar cholerae"
                    },
                    "id": "A00.0",
                    "name": "อหิวาตกโรคจากเชื้อ วิบริโอ คอเลเรโอ 1 ไบอาวาร์ คอเลเร"
                }
            ]

### ดูด้วยรหัส ICD10 [GET /disease/icd10/{icd10id}]

+ Parameters
    + icd10id: `A00.1` (string)
      ``รหัส ICD10``

+ Response 200 (application/json)

    + Attributes (Disease, fixed-type)

    + Body

            {
                "icd10": "A00",
                "isEpimedic": false,
                "isChronic": false,
                "isNCD": false,
                "type": "Icd10",
                "translation": {
                    "th": "อหิวาตกโรค"
                },
                "id": "A00",
                "name": "Cholera"
            }

## specialPP [/specialPP]

### ดูรายการ SpecialPP [GET /specialPP{?query}]

+ Parameters
    + query: `ซึมเศร้าในหญิง` (string)
      ``เนื้อหา special pp ที่ต้องการค้นหา``

+ Response 200 (application/json)

    + Attributes (array[PPType], fixed-type)

    + Body

            [
               {
                  "type":"PPType",
                  "translation":{

                  },
                  "id":"1B140",
                  "name":"การตรวจคัดกรองโรคซึมเศร้าในหญิงตั้งครรภ์/หลังคลอดด้วยแบบคัดกรอง 2Q พบว่าผลปกติ"
               },
               {
                  "type":"PPType",
                  "translation":{

                  },
                  "id":"1B141",
                  "name":"การตรวจคัดกรองโรคซึมเศร้าในหญิงตั้งครรภ์/หลังคลอดด้วยแบบคัดกรอง 2Q พบว่าผลผิดปกติ"
               }
            ]

### ดูด้วยรหัส SpecialPP [GET /specialPP/{pp_id}]

+ Parameters
    + pp_id: `1B140` (string)
      ``รหัส special pp``

+ Response 200 (application/json)

    + Attributes (PPType, fixed-type)

    + Body

            {
               "type":"PPType",
               "translation":{

               },
               "id":"1B140",
               "name":"การตรวจคัดกรองโรคซึมเศร้าในหญิงตั้งครรภ์/หลังคลอดด้วยแบบคัดกรอง 2Q พบว่าผลปกติ"
            }

## Template ข้อความ [/org/{org_id}/template]

### ดูรายการ Template [GET /org/{org_id}/template{?query}]

+ Parameters
    + query: `แข็งแรง` (string)
      ``ข้อความที่ต้องการค้นหา``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[Template], fixed-type)

    + Body

            [
               {
                  "value":"สุขภาพแข็งแรง",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรง รับประทานอาหารได้ปกติ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรงสมบูรณ์มาก",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กมีสุขภาพแข็งแรงดี แนะนำการดูแลสุขภาพให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กสุขภาพแข็งแรง แนะนำการให้นมบุตรให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               }
            ]

### ใส่รายการ Template ใหม่ [POST /org/{org_id}/template]

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[Template], fixed-type)

    + Body

            [
               {
                  "value":"สุขภาพแข็งแรง",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรง รับประทานอาหารได้ปกติ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรงสมบูรณ์มาก",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กมีสุขภาพแข็งแรงดี แนะนำการดูแลสุขภาพให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กสุขภาพแข็งแรง แนะนำการให้นมบุตรให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[Template], fixed-type)

    + Body

            [
               {
                  "value":"สุขภาพแข็งแรง",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรง รับประทานอาหารได้ปกติ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"สุขภาพแข็งแรงสมบูรณ์มาก",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กมีสุขภาพแข็งแรงดี แนะนำการดูแลสุขภาพให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               },
               {
                  "value":"เด็กสุขภาพแข็งแรง แนะนำการให้นมบุตรให้แม่เด็กรับทราบ",
                  "field":"HealthCareService.syntom"
               }
            ]
