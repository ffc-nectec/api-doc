## ข้อมูลบ้าน [/org/{org_id}/house]

### เพิ่มข้อมูลบ้านไปยัง FFC [POST /org/{org_id}/house]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (House , fixed-type)

    + Body

            {
               "identity":{
                  "type":"thailand-household-id",
                  "id":"54520015001"
               },
               "people":[

               ],
               "haveChronic":false,
               "no":"510/32",
               "road":"รังสิต-นครนายก",
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-11-01T13:39:39.569+07:00",
                  "system":"JHICS",
                  "keys":{
                     "hid":"22"
                  }
               },
               "imagesUrl":[

               ],
               "id":"5dbbd32b698922acf8bc5799",
               "type":"House",
               "timestamp":"2019-11-01T13:39:39.569+07:00"
            }

+ Response 201 (application/json)

    + Attributes (House , fixed-type)

    + Body

               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"54520015001"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "no":"8/12",
                  "road":"รังสิต-นครนายก",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        100.6027899,
                        14.0782897
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-01T13:26:48.626+07:00",
                     "system":"JHICS",
                     "keys":{
                        "hid":"22"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5dbbd028698922acf8bc5798",
                  "type":"House",
                  "timestamp":"2019-11-01T13:26:48.626+07:00"
               }


### เพิ่มข้อมูลบ้านไปยัง FFC (แบบ array) [POST /org/{org_id}/houses]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

    + Attributes (array[House] , fixed-type)

    + Body

            [
               {
                  "id":"af1df31674204307b6db328974051c46",
                  "link":{
                     "isSynced":true,
                     "lastSync":"2018-06-28T17:21:29.645+07:00",
                     "system":"JHICS",
                     "keys":{
                        "hid":"22"
                     }
                  },
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"54520015001"
                  },
                  "haveChronics":true,
                  "type":"House",
                  "no":"8/12",
                  "road":"รังสิต-นครนายก",
                  "tambon":"คลองหนึ่ง",
                  "ampur":"คลองหลวง",
                  "changwat":"ปุทมธานี",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        100.6027899,
                        14.0782897
                     ]
                  }
               }
            ]

+ Response 201 (application/json)

    + Attributes (array[House] , fixed-type)

    + Body

            [
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"54520015001"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "no":"8/12",
                  "road":"รังสิต-นครนายก",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        100.6027899,
                        14.0782897
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-11-01T13:26:48.626+07:00",
                     "system":"JHICS",
                     "keys":{
                        "hid":"22"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5dbbd028698922acf8bc5798",
                  "type":"House",
                  "timestamp":"2019-11-01T13:26:48.626+07:00"
               }
            ]

### ดูข้อมูลบ้านที่หน่วยงานดูแลอยู่ [GET /org/{org_id}/house.json/{?page}{?per_page}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``
    + page: `2` (string, optional)
      ``เนื่องจากข้อมูลมีจำนวนมาก จำเป็นต้องแบ่งข้อมูลเป็นหน้า หากไม่ใส่จะเป็นหน้า 1``
    + per_page: `5` (string, optional)
      ``เนื่องจากข้อมูลมีจำนวนมาก จำเป็นต้องแบ่งข้อมูลเป็นหน้า เป็นค่าที่ระบุว่าใน 1 หน้ามีข้อมูลกี่ชุด หากไม่ใส่จะเป็น 100``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (array[House],fixed-type)

    + Body

            [
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"70040048543"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "villageId":"5db09741698922acf8b80326",
                  "villageName":"บ้านคลองพันเละ",
                  "orgId":"5db0973f698922acf8b802fa",
                  "no":"12",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        99.99524921178818,
                        13.516997928225631
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:50.009+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345",
                        "hcode":"501"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5db2a252698922acf8b988e1",
                  "type":"House",
                  "timestamp":"2017-11-29T14:11:59.000+07:00"
               },
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"70040048551"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "villageId":"5db09741698922acf8b80326",
                  "villageName":"บ้านคลองพันเละ",
                  "orgId":"5db0973f698922acf8b802fa",
                  "no":"13",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        99.99178916215897,
                        13.518706105441401
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:50.009+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345",
                        "hcode":"502"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5db2a252698922acf8b988e2",
                  "type":"House",
                  "timestamp":"2017-11-29T13:55:42.000+07:00"
               },
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"70040048560"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "villageId":"5db09741698922acf8b80326",
                  "villageName":"บ้านคลองพันเละ",
                  "orgId":"5db0973f698922acf8b802fa",
                  "no":"14",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        99.99172747135162,
                        13.518880834328966
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:50.009+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345",
                        "hcode":"503"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5db2a252698922acf8b988e3",
                  "type":"House",
                  "timestamp":"2017-11-29T13:55:49.000+07:00"
               },
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"70040048578"
                  },
                  "people":[

                  ],
                  "haveChronic":true,
                  "villageId":"5db09741698922acf8b80326",
                  "villageName":"บ้านคลองพันเละ",
                  "orgId":"5db0973f698922acf8b802fa",
                  "no":"15",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        99.99520897865295,
                        13.517376075381975
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:50.009+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345",
                        "hcode":"504"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5db2a252698922acf8b988e4",
                  "type":"House",
                  "timestamp":"2017-11-29T14:12:32.000+07:00"
               },
               {
                  "identity":{
                     "type":"thailand-household-id",
                     "id":"70040282589"
                  },
                  "people":[

                  ],
                  "haveChronic":false,
                  "villageId":"5db09741698922acf8b80326",
                  "villageName":"บ้านคลองพันเละ",
                  "orgId":"5db0973f698922acf8b802fa",
                  "no":"15/1",
                  "location":{
                     "type":"Point",
                     "coordinates":[
                        99.99523043632507,
                        13.517271758984984
                     ]
                  },
                  "link":{
                     "isSynced":true,
                     "lastSync":"2019-10-25T14:20:50.009+07:00",
                     "system":"JHICS",
                     "keys":{
                        "villcode":"70041208",
                        "pcucode":"12345",
                        "hcode":"505"
                     }
                  },
                  "imagesUrl":[

                  ],
                  "id":"5db2a252698922acf8b988e5",
                  "type":"House",
                  "timestamp":"2017-11-29T14:12:24.000+07:00"
               }
            ]

### ดึงข้อมูลบ้านด้วย id ของระบบ [GET /org/{org_id}/house/{house_id}]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``
    + house_id: `5db31646698922acf8b9f807` (string, required)
      ``รหัสบ้านที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Attributes (House)

    + Body

            {
               "identity":{
                  "type":"thailand-household-id",
                  "id":"70040239874"
               },
               "people":[

               ],
               "haveChronic":true,
               "villageId":"5db09741698922acf8b80326",
               "villageName":"บ้านคลองพันเละ",
               "orgId":"5db0973f698922acf8b802fa",
               "no":"133",
               "location":{
                  "type":"Point",
                  "coordinates":[
                     99.99909549951553,
                     13.520111756593
                  ]
               },
               "link":{
                  "isSynced":true,
                  "lastSync":"2019-10-25T14:20:51.213+07:00",
                  "system":"JHICS",
                  "keys":{
                     "villcode":"70041208",
                     "pcucode":"12345",
                     "hcode":"582"
                  }
               },
               "imagesUrl":[

               ],
               "id":"5db2a253698922acf8b98926",
               "type":"House",
               "timestamp":"2017-11-29T14:21:26.000+07:00"
            }

### พิกัดบ้านที่หน่วยงานดูแล ในรูปแบบแบบ Geo json [GET /org/{org_id}/house]

+ Parameters
    + org_id: `5db0973f698922acf8b802fa` (string, required)
      ``รหัส id ขององค์หน่วยงานที่ระบบสร้างให้``

+ Request (application/json)

    + Headers

            Authorization: Bearer {token}

+ Response 200 (application/json)

    + Body

            {
               "type":"FeatureCollection",
               "crs":{
                  "type":"EPSG",
                  "properties":{
                     "code":4326,
                     "coordinate_order":[
                        1,
                        0
                     ]
                  }
               },
               "features":[
                  {
                     "type":"Feature",
                     "geometry":{
                        "type":"Point",
                        "coordinates":[
                           100.02203643321991,
                           13.515633985566833
                        ]
                     },
                     "properties":{
                        "identity":{
                           "type":"thailand-household-id",
                           "id":"70040061230"
                        },
                        "people":[

                        ],
                        "haveChronic":true,
                        "villageId":"5db09741698922acf8b80325",
                        "villageName":"บ้านรางห้าตำลึง",
                        "orgId":"5db0973f698922acf8b802fa",
                        "no":"1",
                        "location":{
                           "type":"Point",
                           "coordinates":[
                              100.02203643321991,
                              13.515633985566833
                           ]
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:45.820+07:00",
                           "system":"JHICS",
                           "keys":{
                              "villcode":"70041207",
                              "pcucode":"12345",
                              "hcode":"2"
                           }
                        },
                        "imagesUrl":[

                        ],
                        "id":"5db2a24d698922acf8b9872b",
                        "type":"House",
                        "timestamp":"2018-08-20T14:53:00.000+07:00"
                     }
                  },
                  {
                     "type":"Feature",
                     "geometry":{
                        "type":"Point",
                        "coordinates":[
                           99.99445259571075,
                           13.520422094041523
                        ]
                     },
                     "properties":{
                        "identity":{
                           "type":"thailand-household-id",
                           "id":"70040048438"
                        },
                        "people":[

                        ],
                        "haveChronic":true,
                        "villageId":"5db09741698922acf8b80326",
                        "villageName":"บ้านคลองพันเละ",
                        "orgId":"5db0973f698922acf8b802fa",
                        "no":"1",
                        "location":{
                           "type":"Point",
                           "coordinates":[
                              99.99445259571075,
                              13.520422094041523
                           ]
                        },
                        "link":{
                           "isSynced":true,
                           "lastSync":"2019-10-25T14:20:45.820+07:00",
                           "system":"JHICS",
                           "keys":{
                              "villcode":"70041208",
                              "pcucode":"12345",
                              "hcode":"3"
                           }
                        },
                        "imagesUrl":[

                        ],
                        "id":"5db2a24d698922acf8b9872c",
                        "type":"House",
                        "timestamp":"2018-07-03T10:59:53.000+07:00"
                     }
                  }
               ]
            }

    + Schema

              {
                 "$schema":"http://json-schema.org/draft-07/schema#",
                 "$id":"https://geojson.org/schema/FeatureCollection.json",
                 "title":"GeoJSON FeatureCollection",
                 "type":"object",
                 "required":[
                    "type",
                    "features"
                 ],
                 "properties":{
                    "type":{
                       "type":"string",
                       "enum":[
                          "FeatureCollection"
                       ]
                    },
                    "features":{
                       "type":"array",
                       "items":{
                          "title":"GeoJSON Feature",
                          "type":"object",
                          "required":[
                             "type",
                             "properties",
                             "geometry"
                          ],
                          "properties":{
                             "type":{
                                "type":"string",
                                "enum":[
                                   "Feature"
                                ]
                             },
                             "properties":{
                                "oneOf":[
                                   {
                                      "type":"null"
                                   },
                                   {
                                      "type":"object"
                                   }
                                ]
                             },
                             "geometry":{
                                "oneOf":[
                                   {
                                      "type":"null"
                                   },
                                   {
                                      "title":"GeoJSON Point",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "Point"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "minItems":2,
                                            "items":{
                                               "type":"number"
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON LineString",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "LineString"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "minItems":2,
                                            "items":{
                                               "type":"array",
                                               "minItems":2,
                                               "items":{
                                                  "type":"number"
                                               }
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON Polygon",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "Polygon"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "items":{
                                               "type":"array",
                                               "minItems":4,
                                               "items":{
                                                  "type":"array",
                                                  "minItems":2,
                                                  "items":{
                                                     "type":"number"
                                                  }
                                               }
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON MultiPoint",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "MultiPoint"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "items":{
                                               "type":"array",
                                               "minItems":2,
                                               "items":{
                                                  "type":"number"
                                               }
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON MultiLineString",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "MultiLineString"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "items":{
                                               "type":"array",
                                               "minItems":2,
                                               "items":{
                                                  "type":"array",
                                                  "minItems":2,
                                                  "items":{
                                                     "type":"number"
                                                  }
                                               }
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON MultiPolygon",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "coordinates"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "MultiPolygon"
                                            ]
                                         },
                                         "coordinates":{
                                            "type":"array",
                                            "items":{
                                               "type":"array",
                                               "items":{
                                                  "type":"array",
                                                  "minItems":4,
                                                  "items":{
                                                     "type":"array",
                                                     "minItems":2,
                                                     "items":{
                                                        "type":"number"
                                                     }
                                                  }
                                               }
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   },
                                   {
                                      "title":"GeoJSON GeometryCollection",
                                      "type":"object",
                                      "required":[
                                         "type",
                                         "geometries"
                                      ],
                                      "properties":{
                                         "type":{
                                            "type":"string",
                                            "enum":[
                                               "GeometryCollection"
                                            ]
                                         },
                                         "geometries":{
                                            "type":"array",
                                            "items":{
                                               "oneOf":[
                                                  {
                                                     "title":"GeoJSON Point",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "Point"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "minItems":2,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  },
                                                  {
                                                     "title":"GeoJSON LineString",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "LineString"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "minItems":2,
                                                           "items":{
                                                              "type":"array",
                                                              "minItems":2,
                                                              "items":{
                                                                 "type":"number"
                                                              }
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  },
                                                  {
                                                     "title":"GeoJSON Polygon",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "Polygon"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "items":{
                                                              "type":"array",
                                                              "minItems":4,
                                                              "items":{
                                                                 "type":"array",
                                                                 "minItems":2,
                                                                 "items":{
                                                                    "type":"number"
                                                                 }
                                                              }
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  },
                                                  {
                                                     "title":"GeoJSON MultiPoint",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "MultiPoint"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "items":{
                                                              "type":"array",
                                                              "minItems":2,
                                                              "items":{
                                                                 "type":"number"
                                                              }
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  },
                                                  {
                                                     "title":"GeoJSON MultiLineString",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "MultiLineString"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "items":{
                                                              "type":"array",
                                                              "minItems":2,
                                                              "items":{
                                                                 "type":"array",
                                                                 "minItems":2,
                                                                 "items":{
                                                                    "type":"number"
                                                                 }
                                                              }
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  },
                                                  {
                                                     "title":"GeoJSON MultiPolygon",
                                                     "type":"object",
                                                     "required":[
                                                        "type",
                                                        "coordinates"
                                                     ],
                                                     "properties":{
                                                        "type":{
                                                           "type":"string",
                                                           "enum":[
                                                              "MultiPolygon"
                                                           ]
                                                        },
                                                        "coordinates":{
                                                           "type":"array",
                                                           "items":{
                                                              "type":"array",
                                                              "items":{
                                                                 "type":"array",
                                                                 "minItems":4,
                                                                 "items":{
                                                                    "type":"array",
                                                                    "minItems":2,
                                                                    "items":{
                                                                       "type":"number"
                                                                    }
                                                                 }
                                                              }
                                                           }
                                                        },
                                                        "bbox":{
                                                           "type":"array",
                                                           "minItems":4,
                                                           "items":{
                                                              "type":"number"
                                                           }
                                                        }
                                                     }
                                                  }
                                               ]
                                            }
                                         },
                                         "bbox":{
                                            "type":"array",
                                            "minItems":4,
                                            "items":{
                                               "type":"number"
                                            }
                                         }
                                      }
                                   }
                                ]
                             },
                             "bbox":{
                                "type":"array",
                                "minItems":4,
                                "items":{
                                   "type":"number"
                                }
                             }
                          }
                       }
                    },
                    "bbox":{
                       "type":"array",
                       "minItems":4,
                       "items":{
                          "type":"number"
                       }
                    }
                 }
              }
