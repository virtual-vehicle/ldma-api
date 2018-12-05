# API Documentation

  * [AegisApiWeb.EventController](#aegisapiweb-eventcontroller)
    * [show](#aegisapiweb-eventcontroller-show)
  * [AegisApiWeb.TripController](#aegisapiweb-tripcontroller)
    * [show](#aegisapiweb-tripcontroller-show)

## AegisApiWeb.EventController
### <a id=aegisapiweb-eventcontroller-show></a>show
#### List all events for existing driver
##### Request
* __Method:__ GET
* __Path:__ /api/v1/events
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU0NjM0NDM0MCwiaWF0IjoxNTQzOTI1MTQwLCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6IjBlNTc0OTllLWM0YmYtNGI1OS05NDI1LTg1ZjNkNDUwZmJkZSIsIm5iZiI6MTU0MzkyNTEzOSwic3ViIjoiMTQiLCJ0eXAiOiJhY2Nlc3MifQ.Ia825W0wSMy_q-SiaGckJN87r3eEBmuoJo1FVtMc44gWbmG8DPaPd1288_dZhNSjY6bxfODHInjqTObNz6Ueyg
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2lmhvf274s1o0hkk50000561
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464904834907,
        "lat": 47.0578531860603
      }
    },
    "start_at": "2018-09-24T10:15:15",
    "start_altitude": "362.599005685689",
    "start_after": 18.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464904834907,
        "lat": 47.0578531860603
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2886,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4649331849985,
        "lat": 47.0578369140636
      }
    },
    "end_at": "2018-09-24T10:15:25",
    "end_altitude": "362.499996345373",
    "end_after": 28.3,
    "duration": 9.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4600966450565,
        "lat": 47.0149864388989
      }
    },
    "start_at": "2018-09-24T10:23:52",
    "start_altitude": "312.801852802438",
    "start_after": 535.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4600386900129,
        "lat": 47.0149818532263
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2885,
    "event_details": {
      "start_speed": 77.2507,
      "length": 46.1989,
      "end_speed": 76.9284
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4599244886765,
        "lat": 47.0149700019948
      }
    },
    "end_at": "2018-09-24T10:23:53",
    "end_altitude": "312.300678792246",
    "end_after": 536.1,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4774329805364,
        "lat": 47.0335919129251
      }
    },
    "start_at": "2018-09-24T10:21:12",
    "start_altitude": "313.503633308624",
    "start_after": 375.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4775294909412,
        "lat": 47.0334905629248
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2884,
    "event_details": {
      "start_speed": 96.0379,
      "length": 105.5999,
      "end_speed": 96.0022
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4776399725433,
        "lat": 47.0333639461702
      }
    },
    "end_at": "2018-09-24T10:21:14",
    "end_altitude": "314.313591229838",
    "end_after": 376.7,
    "duration": 1.09999999999997,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4676993060475,
        "lat": 47.0425023447227
      }
    },
    "start_at": "2018-09-24T10:18:52",
    "start_altitude": "317.826538376555",
    "start_after": 234.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4677081849661,
        "lat": 47.0424950734073
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2883,
    "event_details": {
      "start_speed": 39.4186,
      "length": 15.6456,
      "end_speed": 39.0459
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4677334340196,
        "lat": 47.0424705665197
      }
    },
    "end_at": "2018-09-24T10:18:52",
    "end_altitude": "317.573415271467",
    "end_after": 235.1,
    "duration": 0.400000000000006,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4672936807515,
        "lat": 47.0429018512778
      }
    },
    "start_at": "2018-09-24T10:18:47",
    "start_altitude": "319.984601701934",
    "start_after": 230.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673161824706,
        "lat": 47.0428854562267
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2882,
    "event_details": {
      "start_speed": 46.0109,
      "length": 27.591,
      "end_speed": 45.7272
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673568179593,
        "lat": 47.0428531931926
      }
    },
    "end_at": "2018-09-24T10:18:48",
    "end_altitude": "319.681577278013",
    "end_after": 231.0,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4671432273143,
        "lat": 47.0430233281589
      }
    },
    "start_at": "2018-09-24T10:18:46",
    "start_altitude": "321.467483041332",
    "start_after": 229.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4671637556403,
        "lat": 47.0430076034428
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2881,
    "event_details": {
      "start_speed": 46.9169,
      "length": 23.4854,
      "end_speed": 46.9988
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4671982092861,
        "lat": 47.0429839493842
      }
    },
    "end_at": "2018-09-24T10:18:46",
    "end_altitude": "320.878776075684",
    "end_after": 229.5,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4658779930956,
        "lat": 47.0439516816046
      }
    },
    "start_at": "2018-09-24T10:18:35",
    "start_altitude": "328.416440968071",
    "start_after": 218.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4659307253321,
        "lat": 47.0439192059266
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2880,
    "event_details": {
      "start_speed": 47.6711,
      "length": 47.7129,
      "end_speed": 47.9592
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4660083331142,
        "lat": 47.0438703112673
      }
    },
    "end_at": "2018-09-24T10:18:36",
    "end_altitude": "328.018252860427",
    "end_after": 219.6,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4695139157943,
        "lat": 47.0534638974958
      }
    },
    "start_at": "2018-09-24T10:16:25",
    "start_altitude": "362.687002761167",
    "start_after": 88.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4695528748126,
        "lat": 47.0534402948937
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2879,
    "event_details": {
      "start_speed": 39.0685,
      "length": 38.6701,
      "end_speed": 37.4372
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.469607679759,
        "lat": 47.0533909548254
      }
    },
    "end_at": "2018-09-24T10:16:26",
    "end_altitude": "362.492398879457",
    "end_after": 89.4,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4684802565325,
        "lat": 47.0542198007042
      }
    },
    "start_at": "2018-09-24T10:16:15",
    "start_altitude": "363.506314342469",
    "start_after": 78.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4685043729186,
        "lat": 47.0542103629416
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2878,
    "event_details": {
      "start_speed": 41,
      "length": 24.5999,
      "end_speed": 40.9997
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4685507909305,
        "lat": 47.0541859432845
      }
    },
    "end_at": "2018-09-24T10:16:16",
    "end_altitude": "363.499919591068",
    "end_after": 79.1,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4683092414819,
        "lat": 47.0542866796034
      }
    },
    "start_at": "2018-09-24T10:16:14",
    "start_altitude": "363.308797005255",
    "start_after": 77.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4683355398996,
        "lat": 47.0542792254138
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2877,
    "event_details": {
      "start_speed": 41,
      "length": 20.5,
      "end_speed": 41
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4683768597718,
        "lat": 47.054267776309
      }
    },
    "end_at": "2018-09-24T10:16:15",
    "end_altitude": "363.371160203958",
    "end_after": 77.7,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4647676371401,
        "lat": 47.0579582608083
      }
    },
    "start_at": "2018-09-24T10:15:10",
    "start_altitude": "362.900014379201",
    "start_after": 13.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4647766644248,
        "lat": 47.0579441388416
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2876,
    "event_details": {
      "start_speed": 14.0361,
      "length": 9.0506,
      "end_speed": 11.6356
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4647913365042,
        "lat": 47.0579375449659
      }
    },
    "end_at": "2018-09-24T10:15:11",
    "end_altitude": "362.897237779649",
    "end_after": 13.9,
    "duration": 0.700000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648882639588,
        "lat": 47.0426586321556
      }
    },
    "start_at": "2018-09-24T10:20:15",
    "start_altitude": "325.400272827488",
    "start_after": 318.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648882639588,
        "lat": 47.0426586321556
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2875,
    "event_details": {
      "start_speed": 44.291,
      "mean_speed_change": 4.2822,
      "max_acc": 1.7619,
      "length": 345.8073,
      "end_speed": 69.9844,
      "altitude_diff": 0.8051
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4658102306178,
        "lat": 47.042096315334
      }
    },
    "end_at": "2018-09-24T10:20:21",
    "end_altitude": "326.205397812359",
    "end_after": 324.0,
    "duration": 6.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4663601197078,
        "lat": 47.0403238916095
      }
    },
    "start_at": "2018-09-24T10:19:28",
    "start_altitude": "318.011176132176",
    "start_after": 271.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4663601197078,
        "lat": 47.0403238916095
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2874,
    "event_details": {
      "start_speed": 28.7935,
      "mean_speed_change": 4.1411,
      "max_acc": 1.3486,
      "length": 62.2573,
      "end_speed": 36.6616,
      "altitude_diff": -1.0222
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4661724528635,
        "lat": 47.0403413250433
      }
    },
    "end_at": "2018-09-24T10:19:30",
    "end_altitude": "316.98897152533",
    "end_after": 273.3,
    "duration": 1.90000000000003,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4681564008864,
        "lat": 47.0421474387173
      }
    },
    "start_at": "2018-09-24T10:19:00",
    "start_altitude": "316.969903657108",
    "start_after": 242.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4681564008864,
        "lat": 47.0421474387173
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2873,
    "event_details": {
      "start_speed": 14.5973,
      "mean_speed_change": 4.7946,
      "max_acc": 1.127,
      "length": 156.9578,
      "end_speed": 41.4468,
      "altitude_diff": 0.6147
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.467813351046,
        "lat": 47.0418600641865
      }
    },
    "end_at": "2018-09-24T10:19:05",
    "end_altitude": "317.58460766716",
    "end_after": 248.5,
    "duration": 5.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464332670584,
        "lat": 47.0449209549311
      }
    },
    "start_at": "2018-09-24T10:18:22",
    "start_altitude": "332.399844077628",
    "start_after": 204.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464332670584,
        "lat": 47.0449209549311
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2872,
    "event_details": {
      "start_speed": 28.3695,
      "mean_speed_change": 3.4705,
      "max_acc": 1.392,
      "length": 49.7758,
      "end_speed": 33.9223,
      "altitude_diff": 0.3355
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644652251841,
        "lat": 47.0448388678962
      }
    },
    "end_at": "2018-09-24T10:18:23",
    "end_altitude": "332.735325705168",
    "end_after": 206.4,
    "duration": 1.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4705526976724,
        "lat": 47.0526368131223
      }
    },
    "start_at": "2018-09-24T10:16:40",
    "start_altitude": "357.976433561965",
    "start_after": 103.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4705526976724,
        "lat": 47.0526368131223
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2871,
    "event_details": {
      "start_speed": 7.1187,
      "mean_speed_change": 5.6433,
      "max_acc": 2.3242,
      "length": 146.1853,
      "end_speed": 39.8499,
      "altitude_diff": -1.4892
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.470379567471,
        "lat": 47.052340005317
      }
    },
    "end_at": "2018-09-24T10:16:46",
    "end_altitude": "356.487235820978",
    "end_after": 109.2,
    "duration": 5.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4658361489401,
        "lat": 47.0569784932794
      }
    },
    "start_at": "2018-09-24T10:15:41",
    "start_altitude": "363.896109008785",
    "start_after": 44.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4658361489401,
        "lat": 47.0569784932794
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2870,
    "event_details": {
      "start_speed": 28.9911,
      "mean_speed_change": 3.5451,
      "max_acc": 1.1023,
      "length": 37.3338,
      "end_speed": 33.2452,
      "altitude_diff": 0.1912
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4658970208826,
        "lat": 47.0569065496735
      }
    },
    "end_at": "2018-09-24T10:15:43",
    "end_altitude": "364.08728570701",
    "end_after": 45.7,
    "duration": 1.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4649328013171,
        "lat": 47.0578369140622
      }
    },
    "start_at": "2018-09-24T10:15:25",
    "start_altitude": "362.500000930873",
    "start_after": 28.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4649328013171,
        "lat": 47.0578369140622
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2869,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 5.5196,
      "max_acc": 2.731,
      "length": 75.6062,
      "end_speed": 27.598,
      "altitude_diff": 0.0002
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4650904210392,
        "lat": 47.0577359358186
      }
    },
    "end_at": "2018-09-24T10:15:30",
    "end_altitude": "362.50020227872",
    "end_after": 33.1,
    "duration": 5.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645869019957,
        "lat": 47.0580728183294
      }
    },
    "start_at": "2018-09-24T10:15:05",
    "start_altitude": "363.212506659677",
    "start_after": 8.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645869019957,
        "lat": 47.0580728183294
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2868,
    "event_details": {
      "start_speed": 9.1369,
      "mean_speed_change": 3.5217,
      "max_acc": 1.4972,
      "length": 30.9298,
      "end_speed": 17.237,
      "altitude_diff": -0.2743
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4646603755736,
        "lat": 47.058022052075
      }
    },
    "end_at": "2018-09-24T10:15:08",
    "end_altitude": "362.938216219772",
    "end_after": 10.8,
    "duration": 2.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4640672260924,
        "lat": 47.0412119402719
      }
    },
    "start_at": "2018-09-24T10:19:47",
    "start_altitude": "316.212741818603",
    "start_after": 290.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4640672260924,
        "lat": 47.0412119402719
      }
    },
    "event_type": "BRAKE",
    "event_id": 2867,
    "event_details": {
      "start_speed": 26.7057,
      "mean_speed_change": -4.1063,
      "max_acc": -0.3293,
      "length": 53.9124,
      "end_speed": 16.0294,
      "altitude_diff": 1.2833
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4639216649867,
        "lat": 47.0413579890914
      }
    },
    "end_at": "2018-09-24T10:19:50",
    "end_altitude": "317.49608697183",
    "end_after": 293.0,
    "duration": 2.60000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4668412486045,
        "lat": 47.0408431642421
      }
    },
    "start_at": "2018-09-24T10:19:17",
    "start_altitude": "318.51616445259",
    "start_after": 260.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4668412486045,
        "lat": 47.0408431642421
      }
    },
    "event_type": "BRAKE",
    "event_id": 2866,
    "event_details": {
      "start_speed": 36.4976,
      "mean_speed_change": -4.4446,
      "max_acc": -0.4671,
      "length": 76.9874,
      "end_speed": 25.3859,
      "altitude_diff": 0.3822
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4667788233608,
        "lat": 47.0406397690757
      }
    },
    "end_at": "2018-09-24T10:19:20",
    "end_altitude": "318.898402121406",
    "end_after": 262.9,
    "duration": 2.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4678790024809,
        "lat": 47.0423408546587
      }
    },
    "start_at": "2018-09-24T10:18:54",
    "start_altitude": "316.280626651532",
    "start_after": 236.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4678790024809,
        "lat": 47.0423408546587
      }
    },
    "event_type": "BRAKE",
    "event_id": 2865,
    "event_details": {
      "start_speed": 35.0399,
      "mean_speed_change": -6.6407,
      "max_acc": -0.162,
      "length": 76.2302,
      "end_speed": 13.1257,
      "altitude_diff": 0.0463
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4680602788213,
        "lat": 47.0421715945254
      }
    },
    "end_at": "2018-09-24T10:18:57",
    "end_altitude": "316.326955133321",
    "end_after": 240.1,
    "duration": 3.29999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645267731311,
        "lat": 47.045408257265
      }
    },
    "start_at": "2018-09-24T10:18:11",
    "start_altitude": "333.790795868225",
    "start_after": 193.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645267731311,
        "lat": 47.045408257265
      }
    },
    "event_type": "BRAKE",
    "event_id": 2864,
    "event_details": {
      "start_speed": 36.865,
      "mean_speed_change": -4.6122,
      "max_acc": -0.4444,
      "length": 130.5664,
      "end_speed": 11.9589,
      "altitude_diff": -0.9231
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642187123399,
        "lat": 47.0451576368548
      }
    },
    "end_at": "2018-09-24T10:18:16",
    "end_altitude": "332.86766856708",
    "end_after": 199.2,
    "duration": 5.39999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4703374873646,
        "lat": 47.052829259531
      }
    },
    "start_at": "2018-09-24T10:16:36",
    "start_altitude": "360.075719231181",
    "start_after": 98.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4703374873646,
        "lat": 47.052829259531
      }
    },
    "event_type": "BRAKE",
    "event_id": 2863,
    "event_details": {
      "start_speed": 30.0418,
      "mean_speed_change": -5.7512,
      "max_acc": -0.2757,
      "length": 77.4696,
      "end_speed": 5.8866,
      "altitude_diff": -1.7864
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.470548945394,
        "lat": 47.0526439405455
      }
    },
    "end_at": "2018-09-24T10:16:40",
    "end_altitude": "358.28927890034",
    "end_after": 103.0,
    "duration": 4.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.469653669409,
        "lat": 47.0533556843239
      }
    },
    "start_at": "2018-09-24T10:16:27",
    "start_altitude": "362.499483745806",
    "start_after": 89.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.469653669409,
        "lat": 47.0533556843239
      }
    },
    "event_type": "BRAKE",
    "event_id": 2862,
    "event_details": {
      "start_speed": 36.8415,
      "mean_speed_change": -3.5844,
      "max_acc": -0.5376,
      "length": 66.1991,
      "end_speed": 29.6727,
      "altitude_diff": -0.0867
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4698170083148,
        "lat": 47.0532254797493
      }
    },
    "end_at": "2018-09-24T10:16:29",
    "end_altitude": "362.412831205056",
    "end_after": 91.9,
    "duration": 2.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4656220937394,
        "lat": 47.0572308457144
      }
    },
    "start_at": "2018-09-24T10:15:37",
    "start_altitude": "363.095598128353",
    "start_after": 40.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4656220937394,
        "lat": 47.0572308457144
      }
    },
    "event_type": "BRAKE",
    "event_id": 2861,
    "event_details": {
      "start_speed": 29.2257,
      "mean_speed_change": -3.5196,
      "max_acc": -0.8654,
      "length": 29.9991,
      "end_speed": 25.3541,
      "altitude_diff": 0.2013
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4656961354075,
        "lat": 47.0571596061662
      }
    },
    "end_at": "2018-09-24T10:15:38",
    "end_altitude": "363.296893678752",
    "end_after": 41.6,
    "duration": 1.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648685172383,
        "lat": 47.0578716540565
      }
    },
    "start_at": "2018-09-24T10:15:13",
    "start_altitude": "362.701838666512",
    "start_after": 16.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648685172383,
        "lat": 47.0578716540565
      }
    },
    "event_type": "BRAKE",
    "event_id": 2860,
    "event_details": {
      "start_speed": 8.4794,
      "mean_speed_change": -4.037,
      "max_acc": -0.9232,
      "length": 8.6644,
      "end_speed": 0.0016,
      "altitude_diff": -0.0987
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4649048287634,
        "lat": 47.0578531925688
      }
    },
    "end_at": "2018-09-24T10:15:15",
    "end_altitude": "362.603171959425",
    "end_after": 18.6,
    "duration": 2.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8443920665066,
        "lat": 46.6181393110717
      }
    },
    "start_at": "2018-09-24T12:11:24",
    "start_altitude": "439.145636728048",
    "start_after": 393.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8443920665066,
        "lat": 46.6181393110717
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2923,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8430498684246,
        "lat": 46.6181391351874
      }
    },
    "end_at": "2018-09-24T12:11:59",
    "end_altitude": "415.291785901438",
    "end_after": 428.0,
    "duration": 34.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8459199288744,
        "lat": 46.6181395112858
      }
    },
    "start_at": "2018-09-24T12:10:45",
    "start_altitude": "466.299155643215",
    "start_after": 353.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8459199288744,
        "lat": 46.6181395112858
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2922,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8456801125009,
        "lat": 46.6181394798598
      }
    },
    "end_at": "2018-09-24T12:10:51",
    "end_altitude": "462.037084287043",
    "end_after": 360.0,
    "duration": 6.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8472989117467,
        "lat": 46.6181234107431
      }
    },
    "start_at": "2018-09-24T12:10:10",
    "start_altitude": "486.903971595977",
    "start_after": 319.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8472989117467,
        "lat": 46.6181234107431
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2921,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8468675903431,
        "lat": 46.6181396354693
      }
    },
    "end_at": "2018-09-24T12:10:20",
    "end_altitude": "483.141211679205",
    "end_after": 329.3,
    "duration": 9.80000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491007054066,
        "lat": 46.6180699714768
      }
    },
    "start_at": "2018-09-24T12:09:26",
    "start_altitude": "492.597866859597",
    "start_after": 275.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491007054066,
        "lat": 46.6180699714768
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2920,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491181564508,
        "lat": 46.6180256836213
      }
    },
    "end_at": "2018-09-24T12:09:33",
    "end_altitude": "492.108294116443",
    "end_after": 281.7,
    "duration": 6.39999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8493753220102,
        "lat": 46.6181152411612
      }
    },
    "start_at": "2018-09-24T12:09:04",
    "start_altitude": "493.298871109691",
    "start_after": 252.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8493753220102,
        "lat": 46.6181152411612
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2919,
    "event_details": {
      "event_id": 2896
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8493876063219,
        "lat": 46.6181071268533
      }
    },
    "end_at": "2018-09-24T12:09:09",
    "end_altitude": "494.00457612704",
    "end_after": 258.0,
    "duration": 5.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526054024523,
        "lat": 46.6184577382362
      }
    },
    "start_at": "2018-09-24T12:08:06",
    "start_altitude": "494.177692889347",
    "start_after": 194.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526054024523,
        "lat": 46.6184577382362
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2918,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852618420438,
        "lat": 46.6184537376023
      }
    },
    "end_at": "2018-09-24T12:08:18",
    "end_altitude": "496.100006101123",
    "end_after": 206.7,
    "duration": 12.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8510441200597,
        "lat": 46.6182619695864
      }
    },
    "start_at": "2018-09-24T12:08:34",
    "start_altitude": "493.382043926274",
    "start_after": 223.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8510076058231,
        "lat": 46.6182531490968
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2917,
    "event_details": {
      "start_speed": 23.9996,
      "length": 24.0603,
      "end_speed": 24.61
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8509546093744,
        "lat": 46.618244981782
      }
    },
    "end_at": "2018-09-24T12:08:35",
    "end_altitude": "492.484940949189",
    "end_after": 224.6,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526336164051,
        "lat": 46.6180796605236
      }
    },
    "start_at": "2018-09-24T12:07:57",
    "start_altitude": "491.814156653514",
    "start_after": 185.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852645141631,
        "lat": 46.6180995748079
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2916,
    "event_details": {
      "start_speed": 19.0007,
      "length": 21.9484,
      "end_speed": 21.0638
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526512590143,
        "lat": 46.6181322561616
      }
    },
    "end_at": "2018-09-24T12:07:58",
    "end_altitude": "491.800514967664",
    "end_after": 186.8,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8520260632967,
        "lat": 46.6178394224173
      }
    },
    "start_at": "2018-09-24T12:07:49",
    "start_altitude": "493.684436250208",
    "start_after": 178.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8520793267855,
        "lat": 46.6178595590487
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2915,
    "event_details": {
      "start_speed": 31.1456,
      "length": 37.6886,
      "end_speed": 30.5336
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8521587702728,
        "lat": 46.6178881542643
      }
    },
    "end_at": "2018-09-24T12:07:51",
    "end_altitude": "492.890456954654",
    "end_after": 179.8,
    "duration": 1.20000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517659506687,
        "lat": 46.6174497815203
      }
    },
    "start_at": "2018-09-24T12:07:39",
    "start_altitude": "495.405983317053",
    "start_after": 167.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517659502958,
        "lat": 46.6174734583099
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2914,
    "event_details": {
      "start_speed": 24.9807,
      "length": 16.9398,
      "end_speed": 22.9908
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517659471268,
        "lat": 46.6174980273782
      }
    },
    "end_at": "2018-09-24T12:07:39",
    "end_altitude": "495.60318578621",
    "end_after": 168.4,
    "duration": 0.700000000000017,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517840958427,
        "lat": 46.6171158845212
      }
    },
    "start_at": "2018-09-24T12:07:34",
    "start_altitude": "494.310064802481",
    "start_after": 163.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517746335559,
        "lat": 46.6171970167367
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2913,
    "event_details": {
      "start_speed": 28.0003,
      "length": 65.1996,
      "end_speed": 27.9672
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517687634078,
        "lat": 46.6172870397656
      }
    },
    "end_at": "2018-09-24T12:07:36",
    "end_altitude": "495.086202352843",
    "end_after": 165.5,
    "duration": 2.30000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8516056140436,
        "lat": 46.6161230038827
      }
    },
    "start_at": "2018-09-24T12:07:18",
    "start_altitude": "489.494629504985",
    "start_after": 147.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.851609496518,
        "lat": 46.616142432741
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2912,
    "event_details": {
      "start_speed": 22.9604,
      "length": 16.769,
      "end_speed": 25.2237
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8516138269597,
        "lat": 46.6161668190957
      }
    },
    "end_at": "2018-09-24T12:07:19",
    "end_altitude": "489.443273406981",
    "end_after": 147.9,
    "duration": 0.700000000000017,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8515629276599,
        "lat": 46.6159767852096
      }
    },
    "start_at": "2018-09-24T12:07:15",
    "start_altitude": "490.197124844142",
    "start_after": 144.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.851566930347,
        "lat": 46.6159877898274
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2911,
    "event_details": {
      "start_speed": 23.9788,
      "length": 13.9438,
      "end_speed": 21.5517
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8515738608846,
        "lat": 46.6160122667617
      }
    },
    "end_at": "2018-09-24T12:07:16",
    "end_altitude": "490.092305207252",
    "end_after": 145.1,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.851425169594,
        "lat": 46.6154305510396
      }
    },
    "start_at": "2018-09-24T12:07:05",
    "start_altitude": "492.200550806376",
    "start_after": 133.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8514309515418,
        "lat": 46.615440013773
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2910,
    "event_details": {
      "start_speed": 22.8612,
      "length": 13.0889,
      "end_speed": 20.7833
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8514387787587,
        "lat": 46.6154635699382
      }
    },
    "end_at": "2018-09-24T12:07:05",
    "end_altitude": "492.200001590144",
    "end_after": 134.4,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.854408624349,
        "lat": 46.6112233360832
      }
    },
    "start_at": "2018-09-24T12:05:35",
    "start_altitude": "470.727687681819",
    "start_after": 44.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.854390261791,
        "lat": 46.6112315011308
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2909,
    "event_details": {
      "start_speed": 29.9486,
      "length": 18.4039,
      "end_speed": 31.0291
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8543536557108,
        "lat": 46.6112484630641
      }
    },
    "end_at": "2018-09-24T12:05:36",
    "end_altitude": "471.226053552459",
    "end_after": 44.8,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545751542053,
        "lat": 46.6111136075503
      }
    },
    "start_at": "2018-09-24T12:05:33",
    "start_altitude": "468.53555693833",
    "start_after": 41.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545688649416,
        "lat": 46.611121613414
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2908,
    "event_details": {
      "start_speed": 24.0211,
      "length": 15.2537,
      "end_speed": 27.1551
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545477167366,
        "lat": 46.611137091048
      }
    },
    "end_at": "2018-09-24T12:05:33",
    "end_altitude": "468.91788065072",
    "end_after": 42.3,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8452855758876,
        "lat": 46.6181394281589
      }
    },
    "start_at": "2018-09-24T12:11:01",
    "start_altitude": "455.025289496423",
    "start_after": 370.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8452855758876,
        "lat": 46.6181394281589
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2907,
    "event_details": {
      "start_speed": 3.8211,
      "mean_speed_change": 4.173,
      "max_acc": 1.1639,
      "length": 9.5539,
      "end_speed": 9.6633,
      "altitude_diff": -0.9624
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8452314238092,
        "lat": 46.6181394210627
      }
    },
    "end_at": "2018-09-24T12:11:02",
    "end_altitude": "454.062886392704",
    "end_after": 371.6,
    "duration": 1.40000000000003,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491161083771,
        "lat": 46.6180246217749
      }
    },
    "start_at": "2018-09-24T12:09:33",
    "start_altitude": "492.157346652598",
    "start_after": 282.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491161083771,
        "lat": 46.6180246217749
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2906,
    "event_details": {
      "start_speed": 2.5084,
      "mean_speed_change": 4.5039,
      "max_acc": 1.2709,
      "length": 5.9939,
      "end_speed": 7.9131,
      "altitude_diff": 0.0371
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8490996461554,
        "lat": 46.6180295400664
      }
    },
    "end_at": "2018-09-24T12:09:34",
    "end_altitude": "492.194417576448",
    "end_after": 283.5,
    "duration": 1.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491963176029,
        "lat": 46.618114909462
      }
    },
    "start_at": "2018-09-24T12:09:21",
    "start_altitude": "493.299954816071",
    "start_after": 270.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491963176029,
        "lat": 46.618114909462
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2905,
    "event_details": {
      "start_speed": 2.8424,
      "mean_speed_change": 3.5119,
      "max_acc": 1.4218,
      "length": 3.4121,
      "end_speed": 5.6519,
      "altitude_diff": -0.0059
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8491919920255,
        "lat": 46.6181152300337
      }
    },
    "end_at": "2018-09-24T12:09:22",
    "end_altitude": "493.29402438645",
    "end_after": 270.8,
    "duration": 0.800000000000011,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.849497524125,
        "lat": 46.6181233723987
      }
    },
    "start_at": "2018-09-24T12:08:57",
    "start_altitude": "492.204495469503",
    "start_after": 246.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.849497524125,
        "lat": 46.6181233723987
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2904,
    "event_details": {
      "start_speed": 3.0477,
      "mean_speed_change": 3.5116,
      "max_acc": 1.2956,
      "length": 6.9448,
      "end_speed": 7.6128,
      "altitude_diff": 0.1954
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8494897961613,
        "lat": 46.6181234354296
      }
    },
    "end_at": "2018-09-24T12:08:59",
    "end_altitude": "492.399857532004",
    "end_after": 247.7,
    "duration": 1.29999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526183634073,
        "lat": 46.6184480415732
      }
    },
    "start_at": "2018-09-24T12:08:17",
    "start_altitude": "496.100006105308",
    "start_after": 206.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526183634073,
        "lat": 46.6184480415732
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2903,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.8791,
      "max_acc": 2.6959,
      "length": 143.0417,
      "end_speed": 34.6416,
      "altitude_diff": 0.9984
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8521970144956,
        "lat": 46.6184483597772
      }
    },
    "end_at": "2018-09-24T12:08:24",
    "end_altitude": "497.098408223601",
    "end_after": 213.6,
    "duration": 7.09999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517733190824,
        "lat": 46.6177134354735
      }
    },
    "start_at": "2018-09-24T12:07:45",
    "start_altitude": "494.823177979435",
    "start_after": 174.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517733190824,
        "lat": 46.6177134354735
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2902,
    "event_details": {
      "start_speed": 11.2538,
      "mean_speed_change": 5.0374,
      "max_acc": 2.2952,
      "length": 79.9269,
      "end_speed": 29.8921,
      "altitude_diff": -0.6399
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.851944756975,
        "lat": 46.6178148691133
      }
    },
    "end_at": "2018-09-24T12:07:49",
    "end_altitude": "494.18326354333",
    "end_after": 177.8,
    "duration": 3.70000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8513549573278,
        "lat": 46.6150955723426
      }
    },
    "start_at": "2018-09-24T12:06:56",
    "start_altitude": "489.807842402953",
    "start_after": 125.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8513549573278,
        "lat": 46.6150955723426
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2901,
    "event_details": {
      "start_speed": 3.2926,
      "mean_speed_change": 3.9282,
      "max_acc": 1.636,
      "length": 75.7263,
      "end_speed": 24.1123,
      "altitude_diff": 1.3502
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8513388295053,
        "lat": 46.6152402919976
      }
    },
    "end_at": "2018-09-24T12:07:02",
    "end_altitude": "491.158042835374",
    "end_after": 130.7,
    "duration": 5.29999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8520528467992,
        "lat": 46.6149088600408
      }
    },
    "start_at": "2018-09-24T12:06:38",
    "start_altitude": "481.699528975091",
    "start_after": 106.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8520528467992,
        "lat": 46.6149088600408
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2900,
    "event_details": {
      "start_speed": 1.0111,
      "mean_speed_change": 3.9973,
      "max_acc": 1.814,
      "length": 58.8726,
      "end_speed": 20.9975,
      "altitude_diff": 1.213
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8519433254866,
        "lat": 46.6149826519912
      }
    },
    "end_at": "2018-09-24T12:06:43",
    "end_altitude": "482.912565276983",
    "end_after": 111.8,
    "duration": 5.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.853774024136,
        "lat": 46.6117757158264
      }
    },
    "start_at": "2018-09-24T12:05:49",
    "start_altitude": "474.492988576117",
    "start_after": 58.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.853774024136,
        "lat": 46.6117757158264
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2899,
    "event_details": {
      "start_speed": 2.9967,
      "mean_speed_change": 5.9706,
      "max_acc": 2.7602,
      "length": 92.2067,
      "end_speed": 32.2528,
      "altitude_diff": 1.3117
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8536914633381,
        "lat": 46.6119239585424
      }
    },
    "end_at": "2018-09-24T12:05:54",
    "end_altitude": "475.80465600993",
    "end_after": 63.2,
    "duration": 4.90000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545737927531,
        "lat": 46.611051431314
      }
    },
    "start_at": "2018-09-24T12:05:29",
    "start_altitude": "465.82555056241",
    "start_after": 38.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545737927531,
        "lat": 46.611051431314
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2898,
    "event_details": {
      "start_speed": 3.1727,
      "mean_speed_change": 5.5051,
      "max_acc": 1.9856,
      "length": 69.3442,
      "end_speed": 26.8444,
      "altitude_diff": 3.4354
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545245177964,
        "lat": 46.6111630486988
      }
    },
    "end_at": "2018-09-24T12:05:34",
    "end_altitude": "469.260972113983",
    "end_after": 42.7,
    "duration": 4.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8477208231022,
        "lat": 46.6181126171146
      }
    },
    "start_at": "2018-09-24T12:10:02",
    "start_altitude": "488.996714489046",
    "start_after": 310.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8477208231022,
        "lat": 46.6181126171146
      }
    },
    "event_type": "BRAKE",
    "event_id": 2897,
    "event_details": {
      "start_speed": 17.0634,
      "mean_speed_change": -2.1275,
      "max_acc": -1.2412,
      "length": 27.6884,
      "end_speed": 13.0211,
      "altitude_diff": -0.3008
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8476343714481,
        "lat": 46.618123706457
      }
    },
    "end_at": "2018-09-24T12:10:03",
    "end_altitude": "488.695941414754",
    "end_after": 312.6,
    "duration": 1.90000000000003,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8494366890381,
        "lat": 46.6181231797152
      }
    },
    "start_at": "2018-09-24T12:09:00",
    "start_altitude": "492.586122295681",
    "start_after": 249.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8494366890381,
        "lat": 46.6181231797152
      }
    },
    "event_type": "BRAKE",
    "event_id": 2896,
    "event_details": {
      "start_speed": 6.9801,
      "mean_speed_change": -4.423,
      "max_acc": -0.9939,
      "length": 4.3537,
      "end_speed": 2.9994,
      "altitude_diff": 0.2181
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8494054222144,
        "lat": 46.6181233387858
      }
    },
    "end_at": "2018-09-24T12:09:01",
    "end_altitude": "492.804225837111",
    "end_after": 250.4,
    "duration": 0.900000000000006,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8495760214925,
        "lat": 46.6181396278784
      }
    },
    "start_at": "2018-09-24T12:08:52",
    "start_altitude": "490.898824079495",
    "start_after": 240.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8495760214925,
        "lat": 46.6181396278784
      }
    },
    "event_type": "BRAKE",
    "event_id": 2895,
    "event_details": {
      "start_speed": 9.5146,
      "mean_speed_change": -3.5468,
      "max_acc": -0.6726,
      "length": 9.3585,
      "end_speed": 4.9039,
      "altitude_diff": 0.2066
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.849535870608,
        "lat": 46.6181315934041
      }
    },
    "end_at": "2018-09-24T12:08:53",
    "end_altitude": "491.105407333431",
    "end_after": 242.2,
    "duration": 1.29999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526122814447,
        "lat": 46.6183893628104
      }
    },
    "start_at": "2018-09-24T12:08:03",
    "start_altitude": "492.489455728238",
    "start_after": 191.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526122814447,
        "lat": 46.6183893628104
      }
    },
    "event_type": "BRAKE",
    "event_id": 2894,
    "event_details": {
      "start_speed": 14.4725,
      "mean_speed_change": -4.8242,
      "max_acc": -0.4506,
      "length": 21.6247,
      "end_speed": 0,
      "altitude_diff": 1.8908
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852606379479,
        "lat": 46.6184568416777
      }
    },
    "end_at": "2018-09-24T12:08:06",
    "end_altitude": "494.380234840756",
    "end_after": 194.9,
    "duration": 3.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526186671481,
        "lat": 46.6182919124178
      }
    },
    "start_at": "2018-09-24T12:08:01",
    "start_altitude": "491.863536539074",
    "start_after": 189.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526186671481,
        "lat": 46.6182919124178
      }
    },
    "event_type": "BRAKE",
    "event_id": 2893,
    "event_details": {
      "start_speed": 22.1601,
      "mean_speed_change": -4.0939,
      "max_acc": -0.2222,
      "length": 27.7472,
      "end_speed": 16.0193,
      "altitude_diff": 0.5395
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8526143240152,
        "lat": 46.6183514026005
      }
    },
    "end_at": "2018-09-24T12:08:02",
    "end_altitude": "492.403014189517",
    "end_after": 191.2,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8524693859964,
        "lat": 46.6180096320598
      }
    },
    "start_at": "2018-09-24T12:07:54",
    "start_altitude": "491.690871286348",
    "start_after": 183.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8524693859964,
        "lat": 46.6180096320598
      }
    },
    "event_type": "BRAKE",
    "event_id": 2892,
    "event_details": {
      "start_speed": 23.1385,
      "mean_speed_change": -3.5009,
      "max_acc": -0.7251,
      "length": 15.3411,
      "end_speed": 20.6879,
      "altitude_diff": 0.0175
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852523219769,
        "lat": 46.6180255939566
      }
    },
    "end_at": "2018-09-24T12:07:55",
    "end_altitude": "491.708326251846",
    "end_after": 183.7,
    "duration": 0.699999999999989,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.85176595142,
        "lat": 46.6174821004228
      }
    },
    "start_at": "2018-09-24T12:07:39",
    "start_altitude": "495.610408431825",
    "start_after": 168.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.85176595142,
        "lat": 46.6174821004228
      }
    },
    "event_type": "BRAKE",
    "event_id": 2891,
    "event_details": {
      "start_speed": 23.7401,
      "mean_speed_change": -3.7554,
      "max_acc": -0.3054,
      "length": 42.4477,
      "end_speed": 15.1028,
      "altitude_diff": 0.1369
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8517709959636,
        "lat": 46.6176071519868
      }
    },
    "end_at": "2018-09-24T12:07:41",
    "end_altitude": "495.747297650896",
    "end_after": 170.5,
    "duration": 2.30000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8514083952398,
        "lat": 46.6151292563918
      }
    },
    "start_at": "2018-09-24T12:06:51",
    "start_altitude": "485.402096796926",
    "start_after": 119.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8514083952398,
        "lat": 46.6151292563918
      }
    },
    "event_type": "BRAKE",
    "event_id": 2890,
    "event_details": {
      "start_speed": 8.2269,
      "mean_speed_change": -3.4924,
      "max_acc": -0.5824,
      "length": 7.4579,
      "end_speed": 3.6867,
      "altitude_diff": 0.2973
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.851377015677,
        "lat": 46.6151278866603
      }
    },
    "end_at": "2018-09-24T12:06:52",
    "end_altitude": "485.699352301436",
    "end_after": 121.2,
    "duration": 1.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852034605692,
        "lat": 46.6147726803097
      }
    },
    "start_at": "2018-09-24T12:06:31",
    "start_altitude": "482.200970596358",
    "start_after": 100.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.852034605692,
        "lat": 46.6147726803097
      }
    },
    "event_type": "BRAKE",
    "event_id": 2889,
    "event_details": {
      "start_speed": 19.0299,
      "mean_speed_change": -4.8418,
      "max_acc": -0.8451,
      "length": 37.7872,
      "end_speed": 0.631,
      "altitude_diff": -0.0864
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8520601312357,
        "lat": 46.6148917011726
      }
    },
    "end_at": "2018-09-24T12:06:35",
    "end_altitude": "482.114608054425",
    "end_after": 104.3,
    "duration": 3.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.853890232405,
        "lat": 46.6115735749929
      }
    },
    "start_at": "2018-09-24T12:05:41",
    "start_altitude": "472.590686329975",
    "start_after": 50.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.853890232405,
        "lat": 46.6115735749929
      }
    },
    "event_type": "BRAKE",
    "event_id": 2888,
    "event_details": {
      "start_speed": 31.876,
      "mean_speed_change": -6.5443,
      "max_acc": -0.3955,
      "length": 74.4271,
      "end_speed": 3.0812,
      "altitude_diff": -0.5888
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8537556984071,
        "lat": 46.6117755724417
      }
    },
    "end_at": "2018-09-24T12:05:45",
    "end_altitude": "472.001898086356",
    "end_after": 54.6,
    "duration": 4.4,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8541446285087,
        "lat": 46.6108134921395
      }
    },
    "start_at": "2018-09-24T12:05:18",
    "start_altitude": "453.269988868243",
    "start_after": 26.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8541446285087,
        "lat": 46.6108134921395
      }
    },
    "event_type": "BRAKE",
    "event_id": 2887,
    "event_details": {
      "start_speed": 39.5647,
      "mean_speed_change": -5.8796,
      "max_acc": -0.6332,
      "length": 120.1251,
      "end_speed": 1.935,
      "altitude_diff": 6.5819
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8545084930448,
        "lat": 46.6110432820045
      }
    },
    "end_at": "2018-09-24T12:05:24",
    "end_altitude": "459.85191291106",
    "end_after": 33.3,
    "duration": 6.4,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8588504515303,
        "lat": 46.6350997205147
      }
    },
    "start_at": "2018-09-30T01:35:35",
    "start_altitude": "527.09733810632",
    "start_after": 202.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8588504515303,
        "lat": 46.6350997205147
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2947,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8588318173842,
        "lat": 46.6350992838542
      }
    },
    "end_at": "2018-09-30T01:35:52",
    "end_altitude": "529.5",
    "end_after": 219.4,
    "duration": 17.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8423162964258,
        "lat": 46.6219482914249
      }
    },
    "start_at": "2018-09-30T01:32:55",
    "start_altitude": "507.248524312598",
    "start_after": 42.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8423162964258,
        "lat": 46.6219482914249
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2946,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8423075357109,
        "lat": 46.6219156898574
      }
    },
    "end_at": "2018-09-30T01:33:00",
    "end_altitude": "506.500000206727",
    "end_after": 47.6,
    "duration": 5.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8863571892504,
        "lat": 46.6421544703015
      }
    },
    "start_at": "2018-09-30T01:38:35",
    "start_altitude": "499.199289618362",
    "start_after": 382.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8864836802697,
        "lat": 46.642050796671
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2945,
    "event_details": {
      "start_speed": 102.9957,
      "length": 110.7253,
      "end_speed": 98.0626
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8866308591584,
        "lat": 46.6419420572947
      }
    },
    "end_at": "2018-09-30T01:38:36",
    "end_altitude": "499.046100508977",
    "end_after": 383.5,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8788050755299,
        "lat": 46.6475053569062
      }
    },
    "start_at": "2018-09-30T01:38:06",
    "start_altitude": "508.803141467046",
    "start_after": 353.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8788619515287,
        "lat": 46.6474679427049
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2944,
    "event_details": {
      "start_speed": 102.9902,
      "length": 51.4991,
      "end_speed": 102.9995
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8789476051127,
        "lat": 46.6474198463477
      }
    },
    "end_at": "2018-09-30T01:38:07",
    "end_altitude": "508.800142804968",
    "end_after": 354.0,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8570768280055,
        "lat": 46.6334731038871
      }
    },
    "start_at": "2018-09-30T01:35:16",
    "start_altitude": "525.086534671558",
    "start_after": 183.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8570849505244,
        "lat": 46.6334905171699
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2943,
    "event_details": {
      "start_speed": 43.2835,
      "length": 22.0906,
      "end_speed": 45.0775
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8570935661925,
        "lat": 46.6335215881829
      }
    },
    "end_at": "2018-09-30T01:35:17",
    "end_altitude": "524.697619319118",
    "end_after": 183.9,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8468446252282,
        "lat": 46.6283799550494
      }
    },
    "start_at": "2018-09-30T01:34:06",
    "start_altitude": "538.50266263999",
    "start_after": 113.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8468769872433,
        "lat": 46.6283951770919
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2942,
    "event_details": {
      "start_speed": 60.0583,
      "length": 29.8446,
      "end_speed": 58.9923
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.846929048058,
        "lat": 46.6284243356881
      }
    },
    "end_at": "2018-09-30T01:34:06",
    "end_altitude": "538.608951373686",
    "end_after": 113.5,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8463860915649,
        "lat": 46.6280926199229
      }
    },
    "start_at": "2018-09-30T01:34:03",
    "start_altitude": "537.063391981229",
    "start_after": 110.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8464147321621,
        "lat": 46.6281102857018
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2941,
    "event_details": {
      "start_speed": 57.0055,
      "length": 34.3751,
      "end_speed": 58.03
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8464714664122,
        "lat": 46.6281512736879
      }
    },
    "end_at": "2018-09-30T01:34:04",
    "end_altitude": "537.568139115838",
    "end_after": 110.7,
    "duration": 0.600000000000009,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8453619026802,
        "lat": 46.6265967521201
      }
    },
    "start_at": "2018-09-30T01:33:50",
    "start_altitude": "531.092286080057",
    "start_after": 97.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8453734044889,
        "lat": 46.6266349429875
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2940,
    "event_details": {
      "start_speed": 43.995,
      "length": 30.79,
      "end_speed": 43.9654
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.845386984495,
        "lat": 46.626674759626
      }
    },
    "end_at": "2018-09-30T01:33:51",
    "end_altitude": "530.790074818952",
    "end_after": 97.7,
    "duration": 0.700000000000003,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8453131554993,
        "lat": 46.6264582636654
      }
    },
    "start_at": "2018-09-30T01:33:48",
    "start_altitude": "531.989874745685",
    "start_after": 95.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8453190930312,
        "lat": 46.6264748185484
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2939,
    "event_details": {
      "start_speed": 44.0007,
      "length": 26.4001,
      "end_speed": 44.0001
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8453314461249,
        "lat": 46.6265155777818
      }
    },
    "end_at": "2018-09-30T01:33:49",
    "end_altitude": "531.585774653134",
    "end_after": 96.2,
    "duration": 0.600000000000009,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8422737349985,
        "lat": 46.6225895868326
      }
    },
    "start_at": "2018-09-30T01:33:11",
    "start_altitude": "508.926527324564",
    "start_after": 57.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8422836628046,
        "lat": 46.6226200765359
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2938,
    "event_details": {
      "start_speed": 50.5627,
      "length": 25.471,
      "end_speed": 50.9507
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8422940968195,
        "lat": 46.6226597381371
      }
    },
    "end_at": "2018-09-30T01:33:11",
    "end_altitude": "509.212716050029",
    "end_after": 58.4,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8430835849262,
        "lat": 46.6194574528563
      }
    },
    "start_at": "2018-09-30T01:32:24",
    "start_altitude": "518.390947054875",
    "start_after": 11.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8430886807429,
        "lat": 46.6195517177161
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2937,
    "event_details": {
      "start_speed": 46.9821,
      "length": 72.0799,
      "end_speed": 43.0303
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8430922656419,
        "lat": 46.6196609653703
      }
    },
    "end_at": "2018-09-30T01:32:26",
    "end_altitude": "514.69040961348",
    "end_after": 12.9,
    "duration": 1.6,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8738663629592,
        "lat": 46.6497960349744
      }
    },
    "start_at": "2018-09-30T01:37:49",
    "start_altitude": "515.618359117272",
    "start_after": 336.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8738663629592,
        "lat": 46.6497960349744
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2936,
    "event_details": {
      "start_speed": 67.0027,
      "mean_speed_change": 4.4991,
      "max_acc": 2.0499,
      "length": 727.4202,
      "end_speed": 104.7948,
      "altitude_diff": -6.1758
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8761325021032,
        "lat": 46.6489055714493
      }
    },
    "end_at": "2018-09-30T01:37:58",
    "end_altitude": "509.442577233362",
    "end_after": 344.9,
    "duration": 8.39999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8713739261509,
        "lat": 46.6501635615841
      }
    },
    "start_at": "2018-09-30T01:37:37",
    "start_altitude": "509.191216308386",
    "start_after": 324.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8713739261509,
        "lat": 46.6501635615841
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2935,
    "event_details": {
      "start_speed": 34.9708,
      "mean_speed_change": 5.3423,
      "max_acc": 2.4747,
      "length": 285.9217,
      "end_speed": 64.8874,
      "altitude_diff": 1.1072
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8723244474182,
        "lat": 46.6500326482064
      }
    },
    "end_at": "2018-09-30T01:37:43",
    "end_altitude": "510.298405936878",
    "end_after": 329.7,
    "duration": 5.59999999999997,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.858829752728,
        "lat": 46.6350992838542
      }
    },
    "start_at": "2018-09-30T01:35:53",
    "start_altitude": "529.499999999999",
    "start_after": 220.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.858829752728,
        "lat": 46.6350992838542
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2934,
    "event_details": {
      "start_speed": 4.0401,
      "mean_speed_change": 6.7456,
      "max_acc": 2.8254,
      "length": 513.4628,
      "end_speed": 80.9399,
      "altitude_diff": 3.407
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8601491504598,
        "lat": 46.6358657891441
      }
    },
    "end_at": "2018-09-30T01:36:05",
    "end_altitude": "532.90696348438",
    "end_after": 232.0,
    "duration": 11.4,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8570849505244,
        "lat": 46.6334905171699
      }
    },
    "start_at": "2018-09-30T01:35:16",
    "start_altitude": "524.883016560144",
    "start_after": 183.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8570849505244,
        "lat": 46.6334905171699
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2933,
    "event_details": {
      "start_speed": 44.0047,
      "mean_speed_change": 3.5051,
      "max_acc": 1.3854,
      "length": 31.6749,
      "end_speed": 46.4583,
      "altitude_diff": -0.5358
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.857109272725,
        "lat": 46.6335626030461
      }
    },
    "end_at": "2018-09-30T01:35:17",
    "end_altitude": "524.347185160748",
    "end_after": 184.3,
    "duration": 0.700000000000017,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8566531357839,
        "lat": 46.6319835339061
      }
    },
    "start_at": "2018-09-30T01:35:01",
    "start_altitude": "529.953740150626",
    "start_after": 168.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8566531357839,
        "lat": 46.6319835339061
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2932,
    "event_details": {
      "start_speed": 26.2538,
      "mean_speed_change": 4.717,
      "max_acc": 1.6502,
      "length": 88.7393,
      "end_speed": 38.9896,
      "altitude_diff": -1.8627
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8567999140026,
        "lat": 46.6321706688657
      }
    },
    "end_at": "2018-09-30T01:35:04",
    "end_altitude": "528.091033555914",
    "end_after": 171.2,
    "duration": 2.69999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.842307535787,
        "lat": 46.6219156870546
      }
    },
    "start_at": "2018-09-30T01:33:00",
    "start_altitude": "506.500002636269",
    "start_after": 47.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.842307535787,
        "lat": 46.6219156870546
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2931,
    "event_details": {
      "start_speed": 0.0186,
      "mean_speed_change": 5.4675,
      "max_acc": 2.6621,
      "length": 211.4442,
      "end_speed": 45.3991,
      "altitude_diff": 1.6097
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8422710902239,
        "lat": 46.6222606127867
      }
    },
    "end_at": "2018-09-30T01:33:08",
    "end_altitude": "508.109675267785",
    "end_after": 55.6,
    "duration": 8.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.88645691202,
        "lat": 46.6420730495075
      }
    },
    "start_at": "2018-09-30T01:38:36",
    "start_altitude": "499.200171623371",
    "start_after": 382.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.88645691202,
        "lat": 46.6420730495075
      }
    },
    "event_type": "BRAKE",
    "event_id": 2930,
    "event_details": {
      "start_speed": 101.6352,
      "mean_speed_change": -3.6014,
      "max_acc": -0.7867,
      "length": 128.2271,
      "end_speed": 96.9534,
      "altitude_diff": -0.3708
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8867758455029,
        "lat": 46.6418274315825
      }
    },
    "end_at": "2018-09-30T01:38:37",
    "end_altitude": "498.829394315601",
    "end_after": 384.1,
    "duration": 1.30000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8706500094449,
        "lat": 46.6498301398761
      }
    },
    "start_at": "2018-09-30T01:37:31",
    "start_altitude": "510.142149806353",
    "start_after": 318.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8706500094449,
        "lat": 46.6498301398761
      }
    },
    "event_type": "BRAKE",
    "event_id": 2929,
    "event_details": {
      "start_speed": 52.3301,
      "mean_speed_change": -4.5463,
      "max_acc": -0.7359,
      "length": 166.2204,
      "end_speed": 34.5997,
      "altitude_diff": -0.842
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8711404483704,
        "lat": 46.6500975915056
      }
    },
    "end_at": "2018-09-30T01:37:35",
    "end_altitude": "509.300124147045",
    "end_after": 322.0,
    "duration": 3.89999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8691902190563,
        "lat": 46.6488123870058
      }
    },
    "start_at": "2018-09-30T01:37:22",
    "start_altitude": "511.000089769315",
    "start_after": 309.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8691902190563,
        "lat": 46.6488123870058
      }
    },
    "event_type": "BRAKE",
    "event_id": 2928,
    "event_details": {
      "start_speed": 75.9938,
      "mean_speed_change": -4.6001,
      "max_acc": -0.1857,
      "length": 180.9785,
      "end_speed": 64.0335,
      "altitude_diff": 0.7131
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8696206578737,
        "lat": 46.649191363791
      }
    },
    "end_at": "2018-09-30T01:37:25",
    "end_altitude": "511.713164960363",
    "end_after": 311.7,
    "duration": 2.59999999999997,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8674443676362,
        "lat": 46.6451279076778
      }
    },
    "start_at": "2018-09-30T01:37:01",
    "start_altitude": "532.592081866928",
    "start_after": 288.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8674443676362,
        "lat": 46.6451279076778
      }
    },
    "event_type": "BRAKE",
    "event_id": 2927,
    "event_details": {
      "start_speed": 84.2713,
      "mean_speed_change": -3.7849,
      "max_acc": -0.8071,
      "length": 175.0918,
      "end_speed": 75.9445,
      "altitude_diff": -2.8069
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8675337370449,
        "lat": 46.6455666775886
      }
    },
    "end_at": "2018-09-30T01:37:03",
    "end_altitude": "529.785144490751",
    "end_after": 290.2,
    "duration": 2.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8581838726706,
        "lat": 46.6347230650507
      }
    },
    "start_at": "2018-09-30T01:35:28",
    "start_altitude": "527.559391537596",
    "start_after": 194.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8581838726706,
        "lat": 46.6347230650507
      }
    },
    "event_type": "BRAKE",
    "event_id": 2926,
    "event_details": {
      "start_speed": 52.7788,
      "mean_speed_change": -6.2093,
      "max_acc": -0.2497,
      "length": 206.0514,
      "end_speed": 0,
      "altitude_diff": -0.6181
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8588520051039,
        "lat": 46.6350992857217
      }
    },
    "end_at": "2018-09-30T01:35:36",
    "end_altitude": "526.941289289157",
    "end_after": 203.2,
    "duration": 8.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8562881096964,
        "lat": 46.6316738951621
      }
    },
    "start_at": "2018-09-30T01:34:55",
    "start_altitude": "533.903476311569",
    "start_after": 162.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8562881096964,
        "lat": 46.6316738951621
      }
    },
    "event_type": "BRAKE",
    "event_id": 2925,
    "event_details": {
      "start_speed": 39.0599,
      "mean_speed_change": -5.6719,
      "max_acc": 0.3769,
      "length": 97.0931,
      "end_speed": 19.7754,
      "altitude_diff": -1.5182
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8565452342355,
        "lat": 46.6318767586468
      }
    },
    "end_at": "2018-09-30T01:34:59",
    "end_altitude": "532.385258185733",
    "end_after": 165.8,
    "duration": 3.40000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8423657225466,
        "lat": 46.6218124012165
      }
    },
    "start_at": "2018-09-30T01:32:51",
    "start_altitude": "507.366462251622",
    "start_after": 38.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.8423657225466,
        "lat": 46.6218124012165
      }
    },
    "event_type": "BRAKE",
    "event_id": 2924,
    "event_details": {
      "start_speed": 23.0499,
      "mean_speed_change": -5.3553,
      "max_acc": -0.2212,
      "length": 48.2679,
      "end_speed": 0.0219,
      "altitude_diff": -0.3708
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 13.842313491457,
        "lat": 46.6219482574573
      }
    },
    "end_at": "2018-09-30T01:32:55",
    "end_altitude": "506.995700072969",
    "end_after": 42.6,
    "duration": 4.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7885994595882,
        "lat": 47.1008303639461
      }
    },
    "start_at": "2018-10-01T07:39:38",
    "start_altitude": "335.902451163899",
    "start_after": 235.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.78851073619,
        "lat": 47.1008464188746
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2965,
    "event_details": {
      "start_speed": 129.3515,
      "length": 77.9753,
      "end_speed": 130.5014
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7883282375097,
        "lat": 47.1008875915948
      }
    },
    "end_at": "2018-10-01T07:39:38",
    "end_altitude": "336.707258760214",
    "end_after": 236.4,
    "duration": 0.599999999999994,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8166786732578,
        "lat": 47.0989140644489
      }
    },
    "start_at": "2018-10-01T07:38:30",
    "start_altitude": "321.06708116714",
    "start_after": 168.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8164299537639,
        "lat": 47.0989341971484
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2964,
    "event_details": {
      "start_speed": 95.9514,
      "length": 155.198,
      "end_speed": 98.102
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8161069358643,
        "lat": 47.0989628958944
      }
    },
    "end_at": "2018-10-01T07:38:32",
    "end_altitude": "321.949735978207",
    "end_after": 169.9,
    "duration": 1.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197443116153,
        "lat": 47.1005364394251
      }
    },
    "start_at": "2018-10-01T07:38:10",
    "start_altitude": "309.795872121189",
    "start_after": 147.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197500056886,
        "lat": 47.1005030551458
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2963,
    "event_details": {
      "start_speed": 65.3305,
      "length": 33.4452,
      "end_speed": 67.9852
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197614932932,
        "lat": 47.100454431411
      }
    },
    "end_at": "2018-10-01T07:38:10",
    "end_altitude": "310.205461406163",
    "end_after": 148.4,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8290153384772,
        "lat": 47.1004885613009
      }
    },
    "start_at": "2018-10-01T07:37:20",
    "start_altitude": "303.899583017013",
    "start_after": 98.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8289441005033,
        "lat": 47.1004969728165
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2962,
    "event_details": {
      "start_speed": 98.9196,
      "length": 58.9225,
      "end_speed": 97.8822
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8288014537999,
        "lat": 47.1005213693343
      }
    },
    "end_at": "2018-10-01T07:37:21",
    "end_altitude": "303.796587183933",
    "end_after": 99.2,
    "duration": 0.600000000000009,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8332064490248,
        "lat": 47.099837750892
      }
    },
    "start_at": "2018-10-01T07:37:08",
    "start_altitude": "307.694660674585",
    "start_after": 86.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8331066325544,
        "lat": 47.0998590529222
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2961,
    "event_details": {
      "start_speed": 95.4846,
      "length": 67.1569,
      "end_speed": 95.9994
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8329690769408,
        "lat": 47.0998790679764
      }
    },
    "end_at": "2018-10-01T07:37:09",
    "end_altitude": "307.3439079045",
    "end_after": 87.3,
    "duration": 0.700000000000003,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8507029429831,
        "lat": 47.098421902406
      }
    },
    "start_at": "2018-10-01T07:35:58",
    "start_altitude": "305.702115875782",
    "start_after": 16.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8505884943701,
        "lat": 47.0984212141808
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2960,
    "event_details": {
      "start_speed": 60.9996,
      "length": 67.11,
      "end_speed": 60.9789
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.850460594417,
        "lat": 47.0984212240078
      }
    },
    "end_at": "2018-10-01T07:35:59",
    "end_altitude": "305.593711353548",
    "end_after": 17.2,
    "duration": 1.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7910238902222,
        "lat": 47.1003908645328
      }
    },
    "start_at": "2018-10-01T07:39:32",
    "start_altitude": "331.304419893149",
    "start_after": 230.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7910238902222,
        "lat": 47.1003908645328
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2959,
    "event_details": {
      "start_speed": 117.5901,
      "mean_speed_change": 2.4209,
      "max_acc": 1.3673,
      "length": 118.5778,
      "end_speed": 120.011,
      "altitude_diff": 0.9999
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7906089314716,
        "lat": 47.1004561054554
      }
    },
    "end_at": "2018-10-01T07:39:33",
    "end_altitude": "332.304364883445",
    "end_after": 231.2,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8013436464889,
        "lat": 47.0994539570298
      }
    },
    "start_at": "2018-10-01T07:39:06",
    "start_altitude": "322.614375537931",
    "start_after": 204.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8013436464889,
        "lat": 47.0994539570298
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2958,
    "event_details": {
      "start_speed": 96.6301,
      "mean_speed_change": 3.5808,
      "max_acc": 1.3134,
      "length": 597.6787,
      "end_speed": 116.6826,
      "altitude_diff": 2.5872
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.799202490661,
        "lat": 47.099536070799
      }
    },
    "end_at": "2018-10-01T07:39:12",
    "end_altitude": "325.201608133408",
    "end_after": 209.7,
    "duration": 5.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8148578767778,
        "lat": 47.0990927393719
      }
    },
    "start_at": "2018-10-01T07:38:35",
    "start_altitude": "321.650880185352",
    "start_after": 173.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8148578767778,
        "lat": 47.0990927393719
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2957,
    "event_details": {
      "start_speed": 103.3987,
      "mean_speed_change": 3.5529,
      "max_acc": 1.297,
      "length": 918.8388,
      "end_speed": 131.111,
      "altitude_diff": -1.8425
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8114952976887,
        "lat": 47.099333394249
      }
    },
    "end_at": "2018-10-01T07:38:43",
    "end_altitude": "319.808424792363",
    "end_after": 181.1,
    "duration": 7.79999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8192981934775,
        "lat": 47.0988349027696
      }
    },
    "start_at": "2018-10-01T07:38:21",
    "start_altitude": "315.807415604595",
    "start_after": 159.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8192981934775,
        "lat": 47.0988349027696
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2956,
    "event_details": {
      "start_speed": 57.6421,
      "mean_speed_change": 4.3738,
      "max_acc": 2.0163,
      "length": 691.3985,
      "end_speed": 95.6944,
      "altitude_diff": 5.0007
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8167834314811,
        "lat": 47.0989095912816
      }
    },
    "end_at": "2018-10-01T07:38:30",
    "end_altitude": "320.808107697558",
    "end_after": 168.0,
    "duration": 8.69999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8193974063819,
        "lat": 47.1011631153637
      }
    },
    "start_at": "2018-10-01T07:38:04",
    "start_altitude": "306.710449530293",
    "start_after": 141.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8193974063819,
        "lat": 47.1011631153637
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2955,
    "event_details": {
      "start_speed": 26.858,
      "mean_speed_change": 6.105,
      "max_acc": 2.3573,
      "length": 376.8688,
      "end_speed": 72.0352,
      "altitude_diff": 4.2955
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197910617008,
        "lat": 47.100303629949
      }
    },
    "end_at": "2018-10-01T07:38:11",
    "end_altitude": "311.005916592455",
    "end_after": 149.3,
    "duration": 7.40000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.842152790051,
        "lat": 47.0994603784036
      }
    },
    "start_at": "2018-10-01T07:36:41",
    "start_altitude": "306.156391510216",
    "start_after": 59.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.842152790051,
        "lat": 47.0994603784036
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2954,
    "event_details": {
      "start_speed": 64.0257,
      "mean_speed_change": 3.7212,
      "max_acc": 1.3442,
      "length": 550.7383,
      "end_speed": 90.4464,
      "altitude_diff": 2.7483
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8401859856067,
        "lat": 47.0995117138539
      }
    },
    "end_at": "2018-10-01T07:36:48",
    "end_altitude": "308.904642687009",
    "end_after": 66.6,
    "duration": 7.09999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8030325563562,
        "lat": 47.0994139583069
      }
    },
    "start_at": "2018-10-01T07:39:01",
    "start_altitude": "321.805666361926",
    "start_after": 199.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8030325563562,
        "lat": 47.0994139583069
      }
    },
    "event_type": "BRAKE",
    "event_id": 2953,
    "event_details": {
      "start_speed": 99.5841,
      "mean_speed_change": -3.5838,
      "max_acc": -0.8413,
      "length": 107.4324,
      "end_speed": 95.6419,
      "altitude_diff": 0.3945
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8026392985132,
        "lat": 47.0994212981268
      }
    },
    "end_at": "2018-10-01T07:39:02",
    "end_altitude": "322.200143208266",
    "end_after": 200.3,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8059980512325,
        "lat": 47.0993733580732
      }
    },
    "start_at": "2018-10-01T07:38:54",
    "start_altitude": "319.808312265541",
    "start_after": 192.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8059980512325,
        "lat": 47.0993733580732
      }
    },
    "event_type": "BRAKE",
    "event_id": 2952,
    "event_details": {
      "start_speed": 133.867,
      "mean_speed_change": -6.1008,
      "max_acc": -0.5616,
      "length": 552.6899,
      "end_speed": 105.1932,
      "altitude_diff": 0.4935
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8039265832685,
        "lat": 47.0993977472802
      }
    },
    "end_at": "2018-10-01T07:38:59",
    "end_altitude": "320.301835974374",
    "end_after": 196.8,
    "duration": 4.70000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198160250759,
        "lat": 47.099713308529
      }
    },
    "start_at": "2018-10-01T07:38:14",
    "start_altitude": "313.406164224828",
    "start_after": 152.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198160250759,
        "lat": 47.099713308529
      }
    },
    "event_type": "BRAKE",
    "event_id": 2951,
    "event_details": {
      "start_speed": 68.0257,
      "mean_speed_change": -4.4069,
      "max_acc": -0.8238,
      "length": 194.8992,
      "end_speed": 53.9235,
      "altitude_diff": 1.7818
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197281107603,
        "lat": 47.0992013204864
      }
    },
    "end_at": "2018-10-01T07:38:18",
    "end_altitude": "315.187996882941",
    "end_after": 155.8,
    "duration": 3.20000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8208959783752,
        "lat": 47.1013435824034
      }
    },
    "start_at": "2018-10-01T07:37:50",
    "start_altitude": "306.834738652116",
    "start_after": 128.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8208959783752,
        "lat": 47.1013435824034
      }
    },
    "event_type": "BRAKE",
    "event_id": 2950,
    "event_details": {
      "start_speed": 67.0094,
      "mean_speed_change": -6.7215,
      "max_acc": 0.2285,
      "length": 291.112,
      "end_speed": 23.9916,
      "altitude_diff": -1.6352
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197802066581,
        "lat": 47.1012905438655
      }
    },
    "end_at": "2018-10-01T07:37:57",
    "end_altitude": "305.19949872062",
    "end_after": 134.9,
    "duration": 6.40000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8286634093711,
        "lat": 47.1005454601893
      }
    },
    "start_at": "2018-10-01T07:37:21",
    "start_altitude": "303.902011653927",
    "start_after": 99.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8286634093711,
        "lat": 47.1005454601893
      }
    },
    "event_type": "BRAKE",
    "event_id": 2949,
    "event_details": {
      "start_speed": 96.1788,
      "mean_speed_change": -4.1259,
      "max_acc": -0.6867,
      "length": 285.0351,
      "end_speed": 82.976,
      "altitude_diff": -0.9064
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8276367138275,
        "lat": 47.1007082293916
      }
    },
    "end_at": "2018-10-01T07:37:25",
    "end_altitude": "302.995617744624",
    "end_after": 102.8,
    "duration": 3.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8538979134041,
        "lat": 47.0980006782752
      }
    },
    "start_at": "2018-10-01T07:35:43",
    "start_altitude": "306.89999389649",
    "start_after": 1.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8538979134041,
        "lat": 47.0980006782752
      }
    },
    "event_type": "BRAKE",
    "event_id": 2948,
    "event_details": {
      "start_speed": 79.5209,
      "mean_speed_change": -4.3887,
      "max_acc": -0.9606,
      "length": 342.4589,
      "end_speed": 57.1386,
      "altitude_diff": 0.3
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8526968250237,
        "lat": 47.0982183784405
      }
    },
    "end_at": "2018-10-01T07:35:48",
    "end_altitude": "307.199981944128",
    "end_after": 6.6,
    "duration": 5.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645387786191,
        "lat": 47.0580466449361
      }
    },
    "start_at": "2018-10-01T07:59:46",
    "start_altitude": "339.341357748764",
    "start_after": 101.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645387786191,
        "lat": 47.0580466449361
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 2973,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644958490234,
        "lat": 47.0580479851151
      }
    },
    "end_at": "2018-10-01T08:00:18",
    "end_altitude": "334.999992867284",
    "end_after": 133.0,
    "duration": 32.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648942577968,
        "lat": 47.0578641002155
      }
    },
    "start_at": "2018-10-01T07:59:38",
    "start_altitude": "340.486825786862",
    "start_after": 92.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648806457419,
        "lat": 47.057901969973
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2972,
    "event_details": {
      "start_speed": 21.5739,
      "length": 32.8518,
      "end_speed": 21.1598
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648475512558,
        "lat": 47.0579415241808
      }
    },
    "end_at": "2018-10-01T07:59:40",
    "end_altitude": "340.787508213217",
    "end_after": 94.3,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563392370692,
        "lat": 47.0544019081987
      }
    },
    "start_at": "2018-10-01T07:58:18",
    "start_altitude": "351.597269514737",
    "start_after": 12.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563615299955,
        "lat": 47.0544069476648
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2971,
    "event_details": {
      "start_speed": 35.6892,
      "length": 18.286,
      "end_speed": 37.4867
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563971825859,
        "lat": 47.0544143434831
      }
    },
    "end_at": "2018-10-01T07:58:19",
    "end_altitude": "351.437501857454",
    "end_after": 13.1,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4558617810442,
        "lat": 47.0542508714346
      }
    },
    "start_at": "2018-10-01T07:58:13",
    "start_altitude": "351.947909800003",
    "start_after": 8.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4559328392644,
        "lat": 47.0542756219172
      }
    },
    "event_type": "POTHOLE",
    "event_id": 2970,
    "event_details": {
      "start_speed": 31.5905,
      "length": 39.2337,
      "end_speed": 28.9959
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4560032115718,
        "lat": 47.0543032343042
      }
    },
    "end_at": "2018-10-01T07:58:15",
    "end_altitude": "351.905123698289",
    "end_after": 9.3,
    "duration": 1.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.456128480409,
        "lat": 47.054346885089
      }
    },
    "start_at": "2018-10-01T07:58:16",
    "start_altitude": "351.900964698942",
    "start_after": 10.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.456128480409,
        "lat": 47.054346885089
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2969,
    "event_details": {
      "start_speed": 30.0127,
      "mean_speed_change": 2.7204,
      "max_acc": 2.2845,
      "length": 54.5851,
      "end_speed": 34.6374,
      "altitude_diff": -0.1012
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563070007943,
        "lat": 47.0543945389877
      }
    },
    "end_at": "2018-10-01T07:58:18",
    "end_altitude": "351.799760438388",
    "end_after": 12.3,
    "duration": 1.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645422261652,
        "lat": 47.0575703492829
      }
    },
    "start_at": "2018-10-01T07:59:31",
    "start_altitude": "340.180417202545",
    "start_after": 85.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645422261652,
        "lat": 47.0575703492829
      }
    },
    "event_type": "BRAKE",
    "event_id": 2968,
    "event_details": {
      "start_speed": 31.3829,
      "mean_speed_change": -3.4208,
      "max_acc": -0.8273,
      "length": 96.6197,
      "end_speed": 17.0155,
      "altitude_diff": -1.8141
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648662880829,
        "lat": 47.0577176285843
      }
    },
    "end_at": "2018-10-01T07:59:35",
    "end_altitude": "338.366288615533",
    "end_after": 89.7,
    "duration": 4.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4589077206718,
        "lat": 47.0553758258593
      }
    },
    "start_at": "2018-10-01T07:58:37",
    "start_altitude": "352.508495645554",
    "start_after": 31.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4589077206718,
        "lat": 47.0553758258593
      }
    },
    "event_type": "BRAKE",
    "event_id": 2967,
    "event_details": {
      "start_speed": 31.82,
      "mean_speed_change": -3.8681,
      "max_acc": -0.5299,
      "length": 42.9299,
      "end_speed": 26.0178,
      "altitude_diff": -0.0184
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4590637872696,
        "lat": 47.0554300838764
      }
    },
    "end_at": "2018-10-01T07:58:39",
    "end_altitude": "352.490116966566",
    "end_after": 33.1,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4557009067741,
        "lat": 47.054204451953
      }
    },
    "start_at": "2018-10-01T07:58:12",
    "start_altitude": "352.143070534242",
    "start_after": 6.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4557009067741,
        "lat": 47.054204451953
      }
    },
    "event_type": "BRAKE",
    "event_id": 2966,
    "event_details": {
      "start_speed": 37.9116,
      "mean_speed_change": -4.0493,
      "max_acc": -0.4353,
      "length": 60.3209,
      "end_speed": 30.6229,
      "altitude_diff": -0.2478
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4559328392644,
        "lat": 47.0542756219172
      }
    },
    "end_at": "2018-10-01T07:58:14",
    "end_altitude": "351.895302990354",
    "end_after": 8.6,
    "duration": 1.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7059978085224,
        "lat": 47.1062838302147
      }
    },
    "start_at": "2018-10-01T15:55:32",
    "start_altitude": "243.890841385833",
    "start_after": 1024.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7059978085224,
        "lat": 47.1062838302147
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3029,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7059895833333,
        "lat": 47.1062906901042
      }
    },
    "end_at": "2018-10-01T15:56:05",
    "end_altitude": "244.399993896484",
    "end_after": 1057.2,
    "duration": 32.6000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645204248479,
        "lat": 47.0418861166876
      }
    },
    "start_at": "2018-10-01T15:41:49",
    "start_altitude": "236.944491876073",
    "start_after": 201.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645204248479,
        "lat": 47.0418861166876
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3028,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645324707048,
        "lat": 47.0418701171875
      }
    },
    "end_at": "2018-10-01T15:42:02",
    "end_altitude": "237.199996948142",
    "end_after": 213.9,
    "duration": 12.4,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644776509472,
        "lat": 47.0407305061199
      }
    },
    "start_at": "2018-10-01T15:41:23",
    "start_altitude": "230.869235839318",
    "start_after": 175.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644776509472,
        "lat": 47.0407305061199
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3027,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644775400012,
        "lat": 47.0407307900041
      }
    },
    "end_at": "2018-10-01T15:41:29",
    "end_altitude": "231.099874121791",
    "end_after": 180.9,
    "duration": 5.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673440991711,
        "lat": 47.0399006398362
      }
    },
    "start_at": "2018-10-01T15:40:31",
    "start_altitude": "210.1104672447",
    "start_after": 123.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673440991711,
        "lat": 47.0399006398362
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3026,
    "event_details": {
      "event_id": 2976
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673258463542,
        "lat": 47.0399007161458
      }
    },
    "end_at": "2018-10-01T15:40:38",
    "end_altitude": "210",
    "end_after": 130.4,
    "duration": 7.40000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7057478173488,
        "lat": 47.1062362392393
      }
    },
    "start_at": "2018-10-01T15:55:25",
    "start_altitude": "243.49681625525",
    "start_after": 1017.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7057622610646,
        "lat": 47.1062422520954
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3025,
    "event_details": {
      "start_speed": 22.939,
      "length": 11.344,
      "end_speed": 21.9389
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7057818032356,
        "lat": 47.1062482202784
      }
    },
    "end_at": "2018-10-01T15:55:25",
    "end_altitude": "243.494001348725",
    "end_after": 1017.6,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7055697579044,
        "lat": 47.1062425690604
      }
    },
    "start_at": "2018-10-01T15:55:23",
    "start_altitude": "243.61313196319",
    "start_after": 1014.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7055957477246,
        "lat": 47.1062395266475
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3024,
    "event_details": {
      "start_speed": 23.941,
      "length": 16.7849,
      "end_speed": 23.9941
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7056237100574,
        "lat": 47.1062316354604
      }
    },
    "end_at": "2018-10-01T15:55:23",
    "end_altitude": "243.294264989577",
    "end_after": 1015.5,
    "duration": 0.700000000000045,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7041825394594,
        "lat": 47.1073508512427
      }
    },
    "start_at": "2018-10-01T15:55:07",
    "start_altitude": "239.088610688329",
    "start_after": 999.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7042704086128,
        "lat": 47.107313385108
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3023,
    "event_details": {
      "start_speed": 37.9873,
      "length": 61.9852,
      "end_speed": 40.0313
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7043822440714,
        "lat": 47.1072696141877
      }
    },
    "end_at": "2018-10-01T15:55:09",
    "end_altitude": "238.997457610007",
    "end_after": 1001.0,
    "duration": 1.60000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7027787582132,
        "lat": 47.108422607424
      }
    },
    "start_at": "2018-10-01T15:54:54",
    "start_altitude": "231.952358460461",
    "start_after": 985.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7028276239201,
        "lat": 47.1084143766803
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3022,
    "event_details": {
      "start_speed": 33.9121,
      "length": 35.2698,
      "end_speed": 36.1305
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7028955131748,
        "lat": 47.1084047136369
      }
    },
    "end_at": "2018-10-01T15:54:55",
    "end_altitude": "232.544124129377",
    "end_after": 986.7,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.700422506134,
        "lat": 47.1083470019225
      }
    },
    "start_at": "2018-10-01T15:54:36",
    "start_altitude": "231.616506407086",
    "start_after": 968.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.700451136096,
        "lat": 47.1083630704232
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3021,
    "event_details": {
      "start_speed": 47.1471,
      "length": 27.8725,
      "end_speed": 46.0413
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7005017562973,
        "lat": 47.1083953448346
      }
    },
    "end_at": "2018-10-01T15:54:37",
    "end_altitude": "231.318017034445",
    "end_after": 968.8,
    "duration": 0.599999999999909,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6969452483175,
        "lat": 47.1045330952972
      }
    },
    "start_at": "2018-10-01T15:54:14",
    "start_altitude": "230.774856920543",
    "start_after": 946.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6970785975329,
        "lat": 47.1047255738817
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3020,
    "event_details": {
      "start_speed": 89.9416,
      "length": 170.687,
      "end_speed": 88.8723
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6972304668152,
        "lat": 47.1049288098123
      }
    },
    "end_at": "2018-10-01T15:54:16",
    "end_altitude": "230.88015976223",
    "end_after": 947.9,
    "duration": 1.89999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6961335731188,
        "lat": 47.1034895472785
      }
    },
    "start_at": "2018-10-01T15:54:09",
    "start_altitude": "226.825610635286",
    "start_after": 941.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6962312843617,
        "lat": 47.1035907437004
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3019,
    "event_details": {
      "start_speed": 98.0778,
      "length": 106.7931,
      "end_speed": 96.9679
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6963436699832,
        "lat": 47.1037188058306
      }
    },
    "end_at": "2018-10-01T15:54:10",
    "end_altitude": "227.639794494289",
    "end_after": 942.2,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.694481607763,
        "lat": 47.1022323050294
      }
    },
    "start_at": "2018-10-01T15:54:02",
    "start_altitude": "227.268948177469",
    "start_after": 934.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.694612135926,
        "lat": 47.1023139386326
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3018,
    "event_details": {
      "start_speed": 95.9287,
      "length": 106.9061,
      "end_speed": 97.9016
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6947702756417,
        "lat": 47.1024114235275
      }
    },
    "end_at": "2018-10-01T15:54:03",
    "end_altitude": "227.367081003462",
    "end_after": 935.2,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6109263700436,
        "lat": 47.0628354835972
      }
    },
    "start_at": "2018-10-01T15:50:09",
    "start_altitude": "285.685740397354",
    "start_after": 701.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6110210841959,
        "lat": 47.0628562767207
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3017,
    "event_details": {
      "start_speed": 139.0001,
      "length": 83.4,
      "end_speed": 139
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6112145630314,
        "lat": 47.0629003357732
      }
    },
    "end_at": "2018-10-01T15:50:10",
    "end_altitude": "284.692555942294",
    "end_after": 702.1,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6018797945718,
        "lat": 47.0615921128782
      }
    },
    "start_at": "2018-10-01T15:49:52",
    "start_altitude": "306.806730143127",
    "start_after": 683.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6021388935962,
        "lat": 47.0616201200389
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3016,
    "event_details": {
      "start_speed": 145.8497,
      "length": 160.6041,
      "end_speed": 145.9988
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6024574908971,
        "lat": 47.0616526159996
      }
    },
    "end_at": "2018-10-01T15:49:53",
    "end_altitude": "304.954316070936",
    "end_after": 685.0,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6011390475629,
        "lat": 47.0614962020402
      }
    },
    "start_at": "2018-10-01T15:49:50",
    "start_altitude": "309.438284597103",
    "start_after": 682.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6012969067654,
        "lat": 47.061522198237
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3015,
    "event_details": {
      "start_speed": 145.9986,
      "length": 102.2056,
      "end_speed": 146.1004
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6015068380521,
        "lat": 47.0615458599112
      }
    },
    "end_at": "2018-10-01T15:49:51",
    "end_altitude": "308.135561807327",
    "end_after": 683.2,
    "duration": 0.700000000000045,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5979352131864,
        "lat": 47.0609147719548
      }
    },
    "start_at": "2018-10-01T15:49:44",
    "start_altitude": "319.978707042234",
    "start_after": 676.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5980869845549,
        "lat": 47.0609436244976
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3014,
    "event_details": {
      "start_speed": 145.0001,
      "length": 101.4997,
      "end_speed": 144.9934
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5982939725646,
        "lat": 47.0609847101139
      }
    },
    "end_at": "2018-10-01T15:49:45",
    "end_altitude": "318.786128789485",
    "end_after": 677.0,
    "duration": 0.700000000000045,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5946570333049,
        "lat": 47.0605132340232
      }
    },
    "start_at": "2018-10-01T15:49:38",
    "start_altitude": "324.491004207541",
    "start_after": 670.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5949136882727,
        "lat": 47.0605237415342
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3013,
    "event_details": {
      "start_speed": 143.9995,
      "length": 158.4012,
      "end_speed": 143.9912
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5952340473294,
        "lat": 47.0605500230347
      }
    },
    "end_at": "2018-10-01T15:49:39",
    "end_altitude": "324.456968983972",
    "end_after": 671.1,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5575925665148,
        "lat": 47.0603773694929
      }
    },
    "start_at": "2018-10-01T15:48:23",
    "start_altitude": "244.5449035196",
    "start_after": 594.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5577830668218,
        "lat": 47.0604585003484
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3012,
    "event_details": {
      "start_speed": 148.2138,
      "length": 133.2051,
      "end_speed": 147.9995
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.558027797971,
        "lat": 47.0605613218207
      }
    },
    "end_at": "2018-10-01T15:48:24",
    "end_altitude": "244.799627359817",
    "end_after": 595.8,
    "duration": 0.899999999999977,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.546646957105,
        "lat": 47.0566400341256
      }
    },
    "start_at": "2018-10-01T15:47:58",
    "start_altitude": "226.589361024987",
    "start_after": 570.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5468402668942,
        "lat": 47.0566601303593
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3011,
    "event_details": {
      "start_speed": 134,
      "length": 134,
      "end_speed": 134
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5471290850995,
        "lat": 47.0566838036309
      }
    },
    "end_at": "2018-10-01T15:47:59",
    "end_altitude": "228.349081785975",
    "end_after": 571.5,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5419911554045,
        "lat": 47.0555225455495
      }
    },
    "start_at": "2018-10-01T15:47:48",
    "start_altitude": "223.101377725584",
    "start_after": 560.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5420791042605,
        "lat": 47.0555558338584
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3010,
    "event_details": {
      "start_speed": 134.8379,
      "length": 80.7349,
      "end_speed": 134.8302
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5422491176403,
        "lat": 47.0556202134706
      }
    },
    "end_at": "2018-10-01T15:47:49",
    "end_altitude": "222.979657795246",
    "end_after": 561.0,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5365575890267,
        "lat": 47.0512637423905
      }
    },
    "start_at": "2018-10-01T15:47:32",
    "start_altitude": "224.848757738516",
    "start_after": 544.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5366343747612,
        "lat": 47.0513907985134
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3009,
    "event_details": {
      "start_speed": 146.0051,
      "length": 131.3508,
      "end_speed": 145.4512
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5367449426252,
        "lat": 47.0515590272343
      }
    },
    "end_at": "2018-10-01T15:47:33",
    "end_altitude": "224.703555635951",
    "end_after": 545.0,
    "duration": 0.899999999999977,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5352789491522,
        "lat": 47.048409850799
      }
    },
    "start_at": "2018-10-01T15:47:24",
    "start_altitude": "225.104588738408",
    "start_after": 535.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5353077157356,
        "lat": 47.0484775708933
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3008,
    "event_details": {
      "start_speed": 144.1932,
      "length": 86.9072,
      "end_speed": 144.9728
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5353683022983,
        "lat": 47.0486150032745
      }
    },
    "end_at": "2018-10-01T15:47:24",
    "end_altitude": "225.298103680466",
    "end_after": 536.5,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5301183387823,
        "lat": 47.0434049895734
      }
    },
    "start_at": "2018-10-01T15:47:06",
    "start_altitude": "217.578092685773",
    "start_after": 518.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5303248734015,
        "lat": 47.0435062144217
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3007,
    "event_details": {
      "start_speed": 139.9802,
      "length": 153.4981,
      "end_speed": 139.0227
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.530570374804,
        "lat": 47.0436459669491
      }
    },
    "end_at": "2018-10-01T15:47:07",
    "end_altitude": "218.151882211053",
    "end_after": 519.3,
    "duration": 1.09999999999991,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4778952461229,
        "lat": 47.0328936819803
      }
    },
    "start_at": "2018-10-01T15:43:16",
    "start_altitude": "243.290941760774",
    "start_after": 288.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4779279482004,
        "lat": 47.0328619943254
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3006,
    "event_details": {
      "start_speed": 82.0168,
      "length": 49.336,
      "end_speed": 82.9843
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4779905462823,
        "lat": 47.0327870455051
      }
    },
    "end_at": "2018-10-01T15:43:17",
    "end_altitude": "243.384567259952",
    "end_after": 288.9,
    "duration": 0.599999999999966,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648856215222,
        "lat": 47.0404005620221
      }
    },
    "start_at": "2018-10-01T15:41:11",
    "start_altitude": "222.835376853926",
    "start_after": 163.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464859615959,
        "lat": 47.040414169659
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3005,
    "event_details": {
      "start_speed": 31.5289,
      "length": 14.7514,
      "end_speed": 27.0546
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648269708118,
        "lat": 47.0404298620527
      }
    },
    "end_at": "2018-10-01T15:41:11",
    "end_altitude": "223.20173394991",
    "end_after": 163.6,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4682870436757,
        "lat": 47.0415680669588
      }
    },
    "start_at": "2018-10-01T15:39:52",
    "start_altitude": "200.10379254454",
    "start_after": 84.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4683105396091,
        "lat": 47.0415482048541
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3004,
    "event_details": {
      "start_speed": 34.0054,
      "length": 26.8221,
      "end_speed": 33.0361
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4683481134192,
        "lat": 47.0415114126448
      }
    },
    "end_at": "2018-10-01T15:39:53",
    "end_altitude": "200.195639289246",
    "end_after": 85.0,
    "duration": 0.799999999999997,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4668079356052,
        "lat": 47.0466855815369
      }
    },
    "start_at": "2018-10-01T15:38:45",
    "start_altitude": "183.652347923133",
    "start_after": 16.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4667911147549,
        "lat": 47.0466710501397
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3003,
    "event_details": {
      "start_speed": 41.0141,
      "length": 24.623,
      "end_speed": 41.3675
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.466763048458,
        "lat": 47.0466286164955
      }
    },
    "end_at": "2018-10-01T15:38:45",
    "end_altitude": "183.436688441198",
    "end_after": 17.3,
    "duration": 0.600000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7029170018585,
        "lat": 47.1083961811456
      }
    },
    "start_at": "2018-10-01T15:54:55",
    "start_altitude": "232.774299618932",
    "start_after": 986.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7029170018585,
        "lat": 47.1083961811456
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3002,
    "event_details": {
      "start_speed": 36.9591,
      "mean_speed_change": 5.0343,
      "max_acc": 2.051,
      "length": 86.2726,
      "end_speed": 47.0277,
      "altitude_diff": 1.3187
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7031087103548,
        "lat": 47.1082554624843
      }
    },
    "end_at": "2018-10-01T15:54:57",
    "end_altitude": "234.092994700607",
    "end_after": 988.9,
    "duration": 2.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6914415512081,
        "lat": 47.1010542133095
      }
    },
    "start_at": "2018-10-01T15:53:51",
    "start_altitude": "223.957117822207",
    "start_after": 923.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6914415512081,
        "lat": 47.1010542133095
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3001,
    "event_details": {
      "start_speed": 68.703,
      "mean_speed_change": 4.386,
      "max_acc": 1.8488,
      "length": 504.0986,
      "end_speed": 95.4578,
      "altitude_diff": 4.1734
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6930712955484,
        "lat": 47.1015790685842
      }
    },
    "end_at": "2018-10-01T15:53:57",
    "end_altitude": "228.130487563057",
    "end_after": 929.3,
    "duration": 6.09999999999991,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6895936464904,
        "lat": 47.0968732953345
      }
    },
    "start_at": "2018-10-01T15:53:25",
    "start_altitude": "223.707616064591",
    "start_after": 897.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6895936464904,
        "lat": 47.0968732953345
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3000,
    "event_details": {
      "start_speed": 76.5919,
      "mean_speed_change": 3.886,
      "max_acc": 1.7714,
      "length": 264.2992,
      "end_speed": 89.0273,
      "altitude_diff": 0.3951
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6898514027961,
        "lat": 47.0971497823723
      }
    },
    "end_at": "2018-10-01T15:53:28",
    "end_altitude": "224.102689857653",
    "end_after": 900.2,
    "duration": 3.20000000000005,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5918822472916,
        "lat": 47.0605638385339
      }
    },
    "start_at": "2018-10-01T15:49:32",
    "start_altitude": "320.6558013933",
    "start_after": 664.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5918822472916,
        "lat": 47.0605638385339
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2999,
    "event_details": {
      "start_speed": 136.3171,
      "mean_speed_change": 2.925,
      "max_acc": 1.1025,
      "length": 222.4939,
      "end_speed": 140.9971,
      "altitude_diff": 3.0919
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5926708844335,
        "lat": 47.060506759059
      }
    },
    "end_at": "2018-10-01T15:49:34",
    "end_altitude": "323.747691697259",
    "end_after": 666.2,
    "duration": 1.60000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5165170529123,
        "lat": 47.0398838534508
      }
    },
    "start_at": "2018-10-01T15:46:37",
    "start_altitude": "200.824439106789",
    "start_after": 488.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5165170529123,
        "lat": 47.0398838534508
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2998,
    "event_details": {
      "start_speed": 130.3127,
      "mean_speed_change": 3.5517,
      "max_acc": 1.2671,
      "length": 213.0337,
      "end_speed": 135.9954,
      "altitude_diff": 0.9096
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5171853810843,
        "lat": 47.0401429630346
      }
    },
    "end_at": "2018-10-01T15:46:38",
    "end_altitude": "201.733989553005",
    "end_after": 490.5,
    "duration": 1.60000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4971083016724,
        "lat": 47.0227030506616
      }
    },
    "start_at": "2018-10-01T15:45:24",
    "start_altitude": "224.712281017352",
    "start_after": 415.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4971083016724,
        "lat": 47.0227030506616
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2997,
    "event_details": {
      "start_speed": 86.9612,
      "mean_speed_change": 4.4579,
      "max_acc": 1.5851,
      "length": 844.8127,
      "end_speed": 122.624,
      "altitude_diff": -2.3742
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4993068772888,
        "lat": 47.024073822169
      }
    },
    "end_at": "2018-10-01T15:45:32",
    "end_altitude": "222.338079608388",
    "end_after": 423.7,
    "duration": 8.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4654893161243,
        "lat": 47.041918440706
      }
    },
    "start_at": "2018-10-01T15:42:15",
    "start_altitude": "240.600372829898",
    "start_after": 227.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4654893161243,
        "lat": 47.041918440706
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2996,
    "event_details": {
      "start_speed": 40.2498,
      "mean_speed_change": 4.2451,
      "max_acc": 1.8781,
      "length": 292.2235,
      "end_speed": 64.0225,
      "altitude_diff": 0.8473
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4662400447547,
        "lat": 47.0414259798953
      }
    },
    "end_at": "2018-10-01T15:42:21",
    "end_altitude": "241.447717009736",
    "end_after": 232.9,
    "duration": 5.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645324707031,
        "lat": 47.0418701171875
      }
    },
    "start_at": "2018-10-01T15:42:01",
    "start_altitude": "237.199996948244",
    "start_after": 213.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645324707031,
        "lat": 47.0418701171875
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2995,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 3.6546,
      "max_acc": 1.9064,
      "length": 80.0135,
      "end_speed": 23.755,
      "altitude_diff": 1.3126
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4647077556245,
        "lat": 47.0419353784723
      }
    },
    "end_at": "2018-10-01T15:42:08",
    "end_altitude": "238.512604284134",
    "end_after": 220.1,
    "duration": 6.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644775388086,
        "lat": 47.0407307954248
      }
    },
    "start_at": "2018-10-01T15:41:29",
    "start_altitude": "231.100041797398",
    "start_after": 180.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4644775388086,
        "lat": 47.0407307954248
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2994,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.3669,
      "max_acc": 2.0061,
      "length": 206.555,
      "end_speed": 42.3591,
      "altitude_diff": 2.3016
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643591570054,
        "lat": 47.041138027289
      }
    },
    "end_at": "2018-10-01T15:41:38",
    "end_altitude": "233.401655348638",
    "end_after": 190.4,
    "duration": 9.70000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4663905391064,
        "lat": 47.0398685335218
      }
    },
    "start_at": "2018-10-01T15:41:01",
    "start_altitude": "217.906671476125",
    "start_after": 153.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4663905391064,
        "lat": 47.0398685335218
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2993,
    "event_details": {
      "start_speed": 41.7358,
      "mean_speed_change": 3.2129,
      "max_acc": 1.4012,
      "length": 61.9026,
      "end_speed": 46.2339,
      "altitude_diff": 0.4994
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4661991907151,
        "lat": 47.039933632917
      }
    },
    "end_at": "2018-10-01T15:41:02",
    "end_altitude": "218.406096938362",
    "end_after": 154.4,
    "duration": 1.40000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4669531919863,
        "lat": 47.0396882003246
      }
    },
    "start_at": "2018-10-01T15:40:55",
    "start_altitude": "214.953384348435",
    "start_after": 147.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4669531919863,
        "lat": 47.0396882003246
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2992,
    "event_details": {
      "start_speed": 21.9089,
      "mean_speed_change": 4.3398,
      "max_acc": 2.0605,
      "length": 111.812,
      "end_speed": 37.9662,
      "altitude_diff": 2.2517
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4666187353888,
        "lat": 47.0397953258849
      }
    },
    "end_at": "2018-10-01T15:40:59",
    "end_altitude": "217.205035719091",
    "end_after": 151.2,
    "duration": 3.69999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673258463542,
        "lat": 47.0399007161458
      }
    },
    "start_at": "2018-10-01T15:40:38",
    "start_altitude": "210",
    "start_after": 130.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673258463542,
        "lat": 47.0399007161458
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2991,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 3.7123,
      "max_acc": 2.0354,
      "length": 8.3672,
      "end_speed": 7.4246,
      "altitude_diff": 0
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673258463518,
        "lat": 47.0399007161458
      }
    },
    "end_at": "2018-10-01T15:40:40",
    "end_altitude": "210",
    "end_after": 132.2,
    "duration": 2.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4686857862091,
        "lat": 47.04123085064
      }
    },
    "start_at": "2018-10-01T15:40:02",
    "start_altitude": "202.890511980501",
    "start_after": 94.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4686857862091,
        "lat": 47.04123085064
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2990,
    "event_details": {
      "start_speed": 7.1821,
      "mean_speed_change": 4.4839,
      "max_acc": 1.5259,
      "length": 39.3743,
      "end_speed": 20.6339,
      "altitude_diff": 1.078
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4687421906308,
        "lat": 47.0411703819632
      }
    },
    "end_at": "2018-10-01T15:40:05",
    "end_altitude": "203.968487549441",
    "end_after": 97.1,
    "duration": 3.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648065766094,
        "lat": 47.0441277923454
      }
    },
    "start_at": "2018-10-01T15:39:14",
    "start_altitude": "191.043253029969",
    "start_after": 46.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648065766094,
        "lat": 47.0441277923454
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 2989,
    "event_details": {
      "start_speed": 20.1144,
      "mean_speed_change": 3.6201,
      "max_acc": 1.9471,
      "length": 116.3696,
      "end_speed": 34.957,
      "altitude_diff": 0.0519
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4650304298489,
        "lat": 47.0439197275332
      }
    },
    "end_at": "2018-10-01T15:39:18",
    "end_altitude": "191.095103121704",
    "end_after": 50.6,
    "duration": 4.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7057478173488,
        "lat": 47.1062362392393
      }
    },
    "start_at": "2018-10-01T15:55:25",
    "start_altitude": "243.49681625525",
    "start_after": 1017.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7057478173488,
        "lat": 47.1062362392393
      }
    },
    "event_type": "BRAKE",
    "event_id": 2988,
    "event_details": {
      "start_speed": 22.939,
      "mean_speed_change": -4.9262,
      "max_acc": 0.0954,
      "length": 49.8092,
      "end_speed": 4.2194,
      "altitude_diff": -0.1971
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7059580412305,
        "lat": 47.1063078080504
      }
    },
    "end_at": "2018-10-01T15:55:29",
    "end_altitude": "243.299736096929",
    "end_after": 1020.9,
    "duration": 3.79999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7053587862826,
        "lat": 47.1063915629857
      }
    },
    "start_at": "2018-10-01T15:55:20",
    "start_altitude": "243.490036899704",
    "start_after": 1012.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7053587862826,
        "lat": 47.1063915629857
      }
    },
    "event_type": "BRAKE",
    "event_id": 2987,
    "event_details": {
      "start_speed": 31.8696,
      "mean_speed_change": -3.4311,
      "max_acc": -0.3216,
      "length": 56.3182,
      "end_speed": 25.0074,
      "altitude_diff": 0.1093
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7055112704553,
        "lat": 47.1062770719905
      }
    },
    "end_at": "2018-10-01T15:55:22",
    "end_altitude": "243.599338510664",
    "end_after": 1014.0,
    "duration": 2.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7020290109012,
        "lat": 47.1086063514439
      }
    },
    "start_at": "2018-10-01T15:54:48",
    "start_altitude": "231.097840689917",
    "start_after": 979.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7020290109012,
        "lat": 47.1086063514439
      }
    },
    "event_type": "BRAKE",
    "event_id": 2986,
    "event_details": {
      "start_speed": 45.8737,
      "mean_speed_change": -4.0248,
      "max_acc": -0.3228,
      "length": 90.5035,
      "end_speed": 37.0191,
      "altitude_diff": -0.025
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7023296361651,
        "lat": 47.1084771565005
      }
    },
    "end_at": "2018-10-01T15:54:50",
    "end_altitude": "231.072826808149",
    "end_after": 982.1,
    "duration": 2.20000000000005,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7012015680146,
        "lat": 47.1085032844549
      }
    },
    "start_at": "2018-10-01T15:54:41",
    "start_altitude": "231.29109076517",
    "start_after": 973.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7012015680146,
        "lat": 47.1085032844549
      }
    },
    "event_type": "BRAKE",
    "event_id": 2985,
    "event_details": {
      "start_speed": 42.9938,
      "mean_speed_change": -1.9527,
      "max_acc": -0.4446,
      "length": 84.9927,
      "end_speed": 38.8932,
      "altitude_diff": -0.5579
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7014357044699,
        "lat": 47.1086213188474
      }
    },
    "end_at": "2018-10-01T15:54:43",
    "end_altitude": "230.733226445242",
    "end_after": 975.5,
    "duration": 2.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6997011013065,
        "lat": 47.107758657066
      }
    },
    "start_at": "2018-10-01T15:54:31",
    "start_altitude": "230.711774204256",
    "start_after": 963.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6997011013065,
        "lat": 47.107758657066
      }
    },
    "event_type": "BRAKE",
    "event_id": 2984,
    "event_details": {
      "start_speed": 76.7316,
      "mean_speed_change": -5.902,
      "max_acc": -0.8374,
      "length": 314.764,
      "end_speed": 46.0413,
      "altitude_diff": 0.6062
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7005017562973,
        "lat": 47.1083953448346
      }
    },
    "end_at": "2018-10-01T15:54:37",
    "end_altitude": "231.318017034445",
    "end_after": 968.8,
    "duration": 5.19999999999993,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899294906263,
        "lat": 47.0982596712661
      }
    },
    "start_at": "2018-10-01T15:53:35",
    "start_altitude": "225.610406467794",
    "start_after": 907.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899294906263,
        "lat": 47.0982596712661
      }
    },
    "event_type": "BRAKE",
    "event_id": 2983,
    "event_details": {
      "start_speed": 72.3709,
      "mean_speed_change": -3.5745,
      "max_acc": -0.7484,
      "length": 219.5148,
      "end_speed": 60.5751,
      "altitude_diff": -0.9821
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899224658677,
        "lat": 47.0989626843953
      }
    },
    "end_at": "2018-10-01T15:53:39",
    "end_altitude": "224.628294057424",
    "end_after": 910.7,
    "duration": 3.30000000000007,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899452999581,
        "lat": 47.0975063519492
      }
    },
    "start_at": "2018-10-01T15:53:32",
    "start_altitude": "223.996670255992",
    "start_after": 903.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899452999581,
        "lat": 47.0975063519492
      }
    },
    "event_type": "BRAKE",
    "event_id": 2982,
    "event_details": {
      "start_speed": 86.3056,
      "mean_speed_change": -4.3553,
      "max_acc": -0.5191,
      "length": 209.1713,
      "end_speed": 74.9818,
      "altitude_diff": 1.8072
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6899289620621,
        "lat": 47.0980753397346
      }
    },
    "end_at": "2018-10-01T15:53:34",
    "end_altitude": "225.803920069606",
    "end_after": 906.4,
    "duration": 2.60000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6877786383985,
        "lat": 47.0965901112121
      }
    },
    "start_at": "2018-10-01T15:53:18",
    "start_altitude": "226.120064088323",
    "start_after": 890.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6877786383985,
        "lat": 47.0965901112121
      }
    },
    "event_type": "BRAKE",
    "event_id": 2981,
    "event_details": {
      "start_speed": 83.4086,
      "mean_speed_change": -3.6844,
      "max_acc": -1.1667,
      "length": 105.3862,
      "end_speed": 78.6189,
      "altitude_diff": -0.7603
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6881788363103,
        "lat": 47.0965901819306
      }
    },
    "end_at": "2018-10-01T15:53:19",
    "end_altitude": "225.359811012324",
    "end_after": 891.3,
    "duration": 1.29999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.684009529819,
        "lat": 47.0949296705976
      }
    },
    "start_at": "2018-10-01T15:53:05",
    "start_altitude": "228.106774695054",
    "start_after": 877.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.684009529819,
        "lat": 47.0949296705976
      }
    },
    "event_type": "BRAKE",
    "event_id": 2980,
    "event_details": {
      "start_speed": 122.2254,
      "mean_speed_change": -3.8734,
      "max_acc": -0.777,
      "length": 880.237,
      "end_speed": 90.0762,
      "altitude_diff": -1.4126
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.686510588942,
        "lat": 47.0963868637314
      }
    },
    "end_at": "2018-10-01T15:53:14",
    "end_altitude": "226.694210468111",
    "end_after": 885.9,
    "duration": 8.29999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642775333567,
        "lat": 47.0416597537171
      }
    },
    "start_at": "2018-10-01T15:41:44",
    "start_altitude": "235.456742629354",
    "start_after": 196.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642775333567,
        "lat": 47.0416597537171
      }
    },
    "event_type": "BRAKE",
    "event_id": 2979,
    "event_details": {
      "start_speed": 28.9065,
      "mean_speed_change": -5.4462,
      "max_acc": -0.4979,
      "length": 78.5955,
      "end_speed": 0.0416,
      "altitude_diff": 1.5469
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645202777946,
        "lat": 47.0418864169185
      }
    },
    "end_at": "2018-10-01T15:41:49",
    "end_altitude": "237.003612293169",
    "end_after": 201.6,
    "duration": 5.29999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642088555839,
        "lat": 47.0413660547368
      }
    },
    "start_at": "2018-10-01T15:41:41",
    "start_altitude": "234.801155972947",
    "start_after": 192.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642088555839,
        "lat": 47.0413660547368
      }
    },
    "event_type": "BRAKE",
    "event_id": 2978,
    "event_details": {
      "start_speed": 41.2652,
      "mean_speed_change": -4.3057,
      "max_acc": -0.4445,
      "length": 89.9069,
      "end_speed": 30.5009,
      "altitude_diff": 0.4988
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4642433762594,
        "lat": 47.0415855008394
      }
    },
    "end_at": "2018-10-01T15:41:43",
    "end_altitude": "235.299940939211",
    "end_after": 195.3,
    "duration": 2.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4651167981681,
        "lat": 47.0403160489997
      }
    },
    "start_at": "2018-10-01T15:41:09",
    "start_altitude": "222.105207253402",
    "start_after": 161.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4651167981681,
        "lat": 47.0403160489997
      }
    },
    "event_type": "BRAKE",
    "event_id": 2977,
    "event_details": {
      "start_speed": 42.7923,
      "mean_speed_change": -6.336,
      "max_acc": -0.2738,
      "length": 134.5889,
      "end_speed": 7.9445,
      "altitude_diff": 3.7719
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4646202363146,
        "lat": 47.0405941640341
      }
    },
    "end_at": "2018-10-01T15:41:15",
    "end_altitude": "225.877061998413",
    "end_after": 166.9,
    "duration": 5.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.467408699647,
        "lat": 47.0400135317953
      }
    },
    "start_at": "2018-10-01T15:40:26",
    "start_altitude": "207.000894124554",
    "start_after": 118.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.467408699647,
        "lat": 47.0400135317953
      }
    },
    "event_type": "BRAKE",
    "event_id": 2976,
    "event_details": {
      "start_speed": 20.6013,
      "mean_speed_change": -4.8107,
      "max_acc": -0.1369,
      "length": 39.139,
      "end_speed": 5.688,
      "altitude_diff": 1.9036
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4673542207388,
        "lat": 47.0399084619429
      }
    },
    "end_at": "2018-10-01T15:40:29",
    "end_altitude": "208.904470350571",
    "end_after": 121.2,
    "duration": 3.10000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4684498200201,
        "lat": 47.0414297178026
      }
    },
    "start_at": "2018-10-01T15:39:54",
    "start_altitude": "200.604860046498",
    "start_after": 86.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4684498200201,
        "lat": 47.0414297178026
      }
    },
    "event_type": "BRAKE",
    "event_id": 2975,
    "event_details": {
      "start_speed": 31.2332,
      "mean_speed_change": -6.3638,
      "max_acc": -0.4817,
      "length": 70.2042,
      "end_speed": 8.3236,
      "altitude_diff": 1.8003
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4686259950308,
        "lat": 47.0412757682973
      }
    },
    "end_at": "2018-10-01T15:39:58",
    "end_altitude": "202.405197263183",
    "end_after": 90.0,
    "duration": 3.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4650435249663,
        "lat": 47.0444168963898
      }
    },
    "start_at": "2018-10-01T15:39:09",
    "start_altitude": "190.728194596701",
    "start_after": 40.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4650435249663,
        "lat": 47.0444168963898
      }
    },
    "event_type": "BRAKE",
    "event_id": 2974,
    "event_details": {
      "start_speed": 30.7049,
      "mean_speed_change": -3.5954,
      "max_acc": -0.9074,
      "length": 38.4426,
      "end_speed": 25.6713,
      "altitude_diff": 0.3223
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464982553587,
        "lat": 47.0443301908505
      }
    },
    "end_at": "2018-10-01T15:39:10",
    "end_altitude": "191.050477083022",
    "end_after": 42.1,
    "duration": 1.4,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079651204965,
        "lat": 47.1027508824091
      }
    },
    "start_at": "2018-10-01T16:11:19",
    "start_altitude": "357.808833725948",
    "start_after": 24.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079651204965,
        "lat": 47.1027508824091
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3034,
    "event_details": {
      "event_id": 3031
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079467742881,
        "lat": 47.1027587890625
      }
    },
    "end_at": "2018-10-01T16:11:52",
    "end_altitude": "353.79998779296",
    "end_after": 57.0,
    "duration": 32.9,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7072282994639,
        "lat": 47.1027009193476
      }
    },
    "start_at": "2018-10-01T16:10:57",
    "start_altitude": "358.61769173333",
    "start_after": 2.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7072834028754,
        "lat": 47.1027371612608
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3033,
    "event_details": {
      "start_speed": 26.0797,
      "length": 40.4732,
      "end_speed": 25.1058
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.707352860255,
        "lat": 47.1027745462504
      }
    },
    "end_at": "2018-10-01T16:10:59",
    "end_altitude": "358.681018611409",
    "end_after": 4.4,
    "duration": 1.6,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7070828398144,
        "lat": 47.1026236604957
      }
    },
    "start_at": "2018-10-01T16:10:56",
    "start_altitude": "356.413287623373",
    "start_after": 1.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7071012485722,
        "lat": 47.1026309918205
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3032,
    "event_details": {
      "start_speed": 28.0999,
      "length": 13.9388,
      "end_speed": 27.3682
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7071285891454,
        "lat": 47.1026511761696
      }
    },
    "end_at": "2018-10-01T16:10:56",
    "end_altitude": "357.152005861515",
    "end_after": 1.6,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079329655038,
        "lat": 47.1027793917601
      }
    },
    "start_at": "2018-10-01T16:11:17",
    "start_altitude": "358.676556194695",
    "start_after": 22.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079329655038,
        "lat": 47.1027793917601
      }
    },
    "event_type": "BRAKE",
    "event_id": 3031,
    "event_details": {
      "start_speed": 6.6705,
      "mean_speed_change": -4.7456,
      "max_acc": -0.6418,
      "length": 3.8931,
      "end_speed": 2.3995,
      "altitude_diff": -0.0924
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7079503393713,
        "lat": 47.1027675331755
      }
    },
    "end_at": "2018-10-01T16:11:18",
    "end_altitude": "358.584145864617",
    "end_after": 23.0,
    "duration": 0.899999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7077317281148,
        "lat": 47.1029397502119
      }
    },
    "start_at": "2018-10-01T16:11:05",
    "start_altitude": "358.758740234131",
    "start_after": 9.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7077317281148,
        "lat": 47.1029397502119
      }
    },
    "event_type": "BRAKE",
    "event_id": 3030,
    "event_details": {
      "start_speed": 16.8934,
      "mean_speed_change": -2.9253,
      "max_acc": -0.6963,
      "length": 24.0865,
      "end_speed": 11.9204,
      "altitude_diff": -0.3897
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7078211930137,
        "lat": 47.1029787603516
      }
    },
    "end_at": "2018-10-01T16:11:06",
    "end_altitude": "358.369044980579",
    "end_after": 11.6,
    "duration": 1.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176493199711,
        "lat": 47.0988606748996
      }
    },
    "start_at": "2018-10-01T16:26:20",
    "start_altitude": "338.800198271156",
    "start_after": 33.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176493199711,
        "lat": 47.0988606748996
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3042,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176310221353,
        "lat": 47.0988688151042
      }
    },
    "end_at": "2018-10-01T16:26:53",
    "end_altitude": "339.5",
    "end_after": 65.9,
    "duration": 32.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7173990930096,
        "lat": 47.0990722461844
      }
    },
    "start_at": "2018-10-01T16:26:07",
    "start_altitude": "336.799871972483",
    "start_after": 20.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7174011178802,
        "lat": 47.0990641559892
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3041,
    "event_details": {
      "start_speed": 16.0567,
      "length": 8.106,
      "end_speed": 11.9988
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7174011686547,
        "lat": 47.099039275082
      }
    },
    "end_at": "2018-10-01T16:26:07",
    "end_altitude": "336.802450079667",
    "end_after": 20.6,
    "duration": 0.600000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7165799112464,
        "lat": 47.0997309489266
      }
    },
    "start_at": "2018-10-01T16:25:57",
    "start_altitude": "333.901521089414",
    "start_after": 10.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7166438220891,
        "lat": 47.0996808294745
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3040,
    "event_details": {
      "start_speed": 38.0384,
      "length": 57.2658,
      "end_speed": 38.0185
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.716726615478,
        "lat": 47.0996343780233
      }
    },
    "end_at": "2018-10-01T16:25:58",
    "end_altitude": "334.340491698413",
    "end_after": 11.5,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163021576404,
        "lat": 47.0999902791255
      }
    },
    "start_at": "2018-10-01T16:25:53",
    "start_altitude": "331.455463365393",
    "start_after": 5.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163189371511,
        "lat": 47.0999425914591
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3039,
    "event_details": {
      "start_speed": 29.8659,
      "length": 49.0733,
      "end_speed": 35.2909
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163598798409,
        "lat": 47.0998857537892
      }
    },
    "end_at": "2018-10-01T16:25:54",
    "end_altitude": "332.302415987343",
    "end_after": 7.4,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7164333987428,
        "lat": 47.1001460444017
      }
    },
    "start_at": "2018-10-01T16:25:50",
    "start_altitude": "330.514657334382",
    "start_after": 3.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7164060630613,
        "lat": 47.1001300711477
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3038,
    "event_details": {
      "start_speed": 30.6727,
      "length": 20.6971,
      "end_speed": 29.0449
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163709968595,
        "lat": 47.1001053777919
      }
    },
    "end_at": "2018-10-01T16:25:51",
    "end_altitude": "330.801310362567",
    "end_after": 4.2,
    "duration": 0.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163044126414,
        "lat": 47.1000240215321
      }
    },
    "start_at": "2018-10-01T16:25:52",
    "start_altitude": "331.203745450727",
    "start_after": 5.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7163044126414,
        "lat": 47.1000240215321
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3037,
    "event_details": {
      "start_speed": 29.0404,
      "mean_speed_change": 3.0313,
      "max_acc": 2.0009,
      "length": 74.4349,
      "end_speed": 36.0125,
      "altitude_diff": 1.3028
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.716380148529,
        "lat": 47.0998692064601
      }
    },
    "end_at": "2018-10-01T16:25:55",
    "end_altitude": "332.50651747566",
    "end_after": 7.7,
    "duration": 2.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176140360961,
        "lat": 47.0988523213431
      }
    },
    "start_at": "2018-10-01T16:26:19",
    "start_altitude": "338.589745782843",
    "start_after": 31.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176140360961,
        "lat": 47.0988523213431
      }
    },
    "event_type": "BRAKE",
    "event_id": 3036,
    "event_details": {
      "start_speed": 6.4495,
      "mean_speed_change": -4.2126,
      "max_acc": -0.4686,
      "length": 4.5445,
      "end_speed": 0.1306,
      "altitude_diff": 0.2105
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7176493199711,
        "lat": 47.0988606748996
      }
    },
    "end_at": "2018-10-01T16:26:20",
    "end_altitude": "338.800198271156",
    "end_after": 33.2,
    "duration": 1.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7171510266992,
        "lat": 47.0992999778545
      }
    },
    "start_at": "2018-10-01T16:26:03",
    "start_altitude": "336.201091746868",
    "start_after": 16.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7171510266992,
        "lat": 47.0992999778545
      }
    },
    "event_type": "BRAKE",
    "event_id": 3035,
    "event_details": {
      "start_speed": 33.242,
      "mean_speed_change": -4.4212,
      "max_acc": -0.3486,
      "length": 104.0989,
      "end_speed": 12.0202,
      "altitude_diff": 0.5988
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7174031934419,
        "lat": 47.0990313871518
      }
    },
    "end_at": "2018-10-01T16:26:08",
    "end_altitude": "336.799869383939",
    "end_after": 20.8,
    "duration": 4.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323506673177,
        "lat": 47.0894775390625
      }
    },
    "start_at": "2018-10-01T16:31:04",
    "start_altitude": "304.5",
    "start_after": 46.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323506673177,
        "lat": 47.0894775390625
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3052,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323506673177,
        "lat": 47.0894856770833
      }
    },
    "end_at": "2018-10-01T16:31:36",
    "end_altitude": "304.600006103516",
    "end_after": 78.9,
    "duration": 32.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323438475251,
        "lat": 47.0893657250757
      }
    },
    "start_at": "2018-10-01T16:30:43",
    "start_altitude": "298.991425306449",
    "start_after": 26.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323534425058,
        "lat": 47.0893726532049
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3051,
    "event_details": {
      "start_speed": 15.0068,
      "length": 14.8502,
      "end_speed": 14.0248
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.732365362416,
        "lat": 47.0893964832959
      }
    },
    "end_at": "2018-10-01T16:30:44",
    "end_altitude": "299.961509427375",
    "end_after": 27.6,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321908764095,
        "lat": 47.0892741056124
      }
    },
    "start_at": "2018-10-01T16:30:40",
    "start_altitude": "288.175114205065",
    "start_after": 22.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7322144020175,
        "lat": 47.0892737266205
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3050,
    "event_details": {
      "start_speed": 16.593,
      "length": 20.0176,
      "end_speed": 18.6116
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.732242429392,
        "lat": 47.0892830963569
      }
    },
    "end_at": "2018-10-01T16:30:41",
    "end_altitude": "292.606281031936",
    "end_after": 23.8,
    "duration": 1.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321044985328,
        "lat": 47.0892984848237
      }
    },
    "start_at": "2018-10-01T16:30:37",
    "start_altitude": "280.143278504003",
    "start_after": 19.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321045061331,
        "lat": 47.0892985690623
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3049,
    "event_details": {
      "start_speed": 2.8666,
      "length": 1.902,
      "end_speed": 4.5772
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321045969395,
        "lat": 47.0892988599669
      }
    },
    "end_at": "2018-10-01T16:30:37",
    "end_altitude": "280.267301272694",
    "end_after": 20.2,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7319587872592,
        "lat": 47.0899512454366
      }
    },
    "start_at": "2018-10-01T16:30:18",
    "start_altitude": "249.485021274213",
    "start_after": 1.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7319342336367,
        "lat": 47.0899440162249
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3048,
    "event_details": {
      "start_speed": 27.0879,
      "length": 16.2121,
      "end_speed": 27.0252
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7318943202036,
        "lat": 47.0899279772439
      }
    },
    "end_at": "2018-10-01T16:30:19",
    "end_altitude": "250.566202888065",
    "end_after": 1.7,
    "duration": 0.6,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321044985328,
        "lat": 47.0892984848237
      }
    },
    "start_at": "2018-10-01T16:30:37",
    "start_altitude": "280.143278504003",
    "start_after": 19.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321044985328,
        "lat": 47.0892984848237
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3047,
    "event_details": {
      "start_speed": 2.8666,
      "mean_speed_change": 5.4697,
      "max_acc": 1.531,
      "length": 18.9747,
      "end_speed": 14.8998,
      "altitude_diff": 4.5336
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321472594943,
        "lat": 47.0892740475229
      }
    },
    "end_at": "2018-10-01T16:30:39",
    "end_altitude": "284.676839273201",
    "end_after": 21.9,
    "duration": 2.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7314609315295,
        "lat": 47.0897201051495
      }
    },
    "start_at": "2018-10-01T16:30:25",
    "start_altitude": "261.072768574205",
    "start_after": 8.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7314609315295,
        "lat": 47.0897201051495
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3046,
    "event_details": {
      "start_speed": 15.0667,
      "mean_speed_change": 4.5821,
      "max_acc": 2.0788,
      "length": 57.3908,
      "end_speed": 26.9802,
      "altitude_diff": 4.1773
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7316176147871,
        "lat": 47.0896308619939
      }
    },
    "end_at": "2018-10-01T16:30:28",
    "end_altitude": "265.25010692955",
    "end_after": 10.8,
    "duration": 2.6,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323750449251,
        "lat": 47.0894227347027
      }
    },
    "start_at": "2018-10-01T16:30:45",
    "start_altitude": "301.253465208056",
    "start_after": 28.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323750449251,
        "lat": 47.0894227347027
      }
    },
    "event_type": "BRAKE",
    "event_id": 3045,
    "event_details": {
      "start_speed": 10.4224,
      "mean_speed_change": -4.0921,
      "max_acc": 0.4376,
      "length": 11.89,
      "end_speed": 1.0105,
      "altitude_diff": 1.6151
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7323608427506,
        "lat": 47.0894612998203
      }
    },
    "end_at": "2018-10-01T16:30:48",
    "end_altitude": "302.868521095668",
    "end_after": 30.9,
    "duration": 2.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7319625696595,
        "lat": 47.0894012504169
      }
    },
    "start_at": "2018-10-01T16:30:32",
    "start_altitude": "272.481244105509",
    "start_after": 15.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7319625696595,
        "lat": 47.0894012504169
      }
    },
    "event_type": "BRAKE",
    "event_id": 3044,
    "event_details": {
      "start_speed": 19.4357,
      "mean_speed_change": -5.3988,
      "max_acc": -0.1971,
      "length": 35.8157,
      "end_speed": 0,
      "altitude_diff": 6.5785
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7321027123606,
        "lat": 47.0892984988718
      }
    },
    "end_at": "2018-10-01T16:30:36",
    "end_altitude": "279.059716724053",
    "end_after": 19.0,
    "duration": 3.6,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7316288004667,
        "lat": 47.0898340688084
      }
    },
    "start_at": "2018-10-01T16:30:21",
    "start_altitude": "255.496111207331",
    "start_after": 4.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7316288004667,
        "lat": 47.0898340688084
      }
    },
    "event_type": "BRAKE",
    "event_id": 3043,
    "event_details": {
      "start_speed": 20.5185,
      "mean_speed_change": -3.423,
      "max_acc": -0.6397,
      "length": 31.8934,
      "end_speed": 14.0148,
      "altitude_diff": 3.235
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7314992585874,
        "lat": 47.0897788498522
      }
    },
    "end_at": "2018-10-01T16:30:23",
    "end_altitude": "258.731080029132",
    "end_after": 6.3,
    "duration": 1.9,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8856038410897,
        "lat": 47.0913818359356
      }
    },
    "start_at": "2018-10-01T16:52:27",
    "start_altitude": "288.600006103515",
    "start_after": 573.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8856038410897,
        "lat": 47.0913818359356
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3077,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.885605875651,
        "lat": 47.0913981119792
      }
    },
    "end_at": "2018-10-01T16:53:01",
    "end_altitude": "288.5",
    "end_after": 607.0,
    "duration": 33.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8162049292164,
        "lat": 47.0983397309321
      }
    },
    "start_at": "2018-10-01T16:46:07",
    "start_altitude": "308.122527922899",
    "start_after": 193.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8162049292164,
        "lat": 47.0983397309321
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3076,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8161803129427,
        "lat": 47.0983479817748
      }
    },
    "end_at": "2018-10-01T16:46:14",
    "end_altitude": "312.999871841104",
    "end_after": 200.0,
    "duration": 6.59999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8850118446491,
        "lat": 47.0908518879887
      }
    },
    "start_at": "2018-10-01T16:51:48",
    "start_altitude": "280.645936798283",
    "start_after": 534.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8850840331113,
        "lat": 47.0908614127491
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3075,
    "event_details": {
      "start_speed": 26.274,
      "length": 47.9927,
      "end_speed": 28.0839
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8851625307639,
        "lat": 47.0909052171517
      }
    },
    "end_at": "2018-10-01T16:51:50",
    "end_altitude": "280.870469679439",
    "end_after": 535.9,
    "duration": 1.79999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8528658794305,
        "lat": 47.0982272214836
      }
    },
    "start_at": "2018-10-01T16:49:42",
    "start_altitude": "293.102247991376",
    "start_after": 408.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8532633144293,
        "lat": 47.0981927593307
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3074,
    "event_details": {
      "start_speed": 54.9474,
      "length": 240.3484,
      "end_speed": 60.5667
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8536952031547,
        "lat": 47.0981086002757
      }
    },
    "end_at": "2018-10-01T16:49:46",
    "end_altitude": "290.810760723814",
    "end_after": 412.1,
    "duration": 4.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8460646568946,
        "lat": 47.098527654121
      }
    },
    "start_at": "2018-10-01T16:49:05",
    "start_altitude": "293.386646525101",
    "start_after": 371.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8461009726499,
        "lat": 47.098527387901
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3073,
    "event_details": {
      "start_speed": 48.0688,
      "length": 28.5728,
      "end_speed": 46.902
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8461742998122,
        "lat": 47.0985192303977
      }
    },
    "end_at": "2018-10-01T16:49:06",
    "end_altitude": "293.489296972297",
    "end_after": 371.8,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8407269011413,
        "lat": 47.0994879765887
      }
    },
    "start_at": "2018-10-01T16:48:33",
    "start_altitude": "302.106027769001",
    "start_after": 339.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8408001464413,
        "lat": 47.0994877816167
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3072,
    "event_details": {
      "start_speed": 50.5435,
      "length": 49.3333,
      "end_speed": 48.9167
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8409121612987,
        "lat": 47.0994796542699
      }
    },
    "end_at": "2018-10-01T16:48:34",
    "end_altitude": "301.910039795129",
    "end_after": 340.2,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198325969965,
        "lat": 47.1004040129933
      }
    },
    "start_at": "2018-10-01T16:46:53",
    "start_altitude": "291.796921709053",
    "start_after": 239.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198287896224,
        "lat": 47.1004282993054
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3071,
    "event_details": {
      "start_speed": 55.0645,
      "length": 27.1271,
      "end_speed": 53.2872
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198225844506,
        "lat": 47.1004748768973
      }
    },
    "end_at": "2018-10-01T16:46:54",
    "end_altitude": "291.926026019085",
    "end_after": 240.1,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.819855460021,
        "lat": 47.1000423983673
      }
    },
    "start_at": "2018-10-01T16:46:51",
    "start_altitude": "291.5461199881",
    "start_after": 237.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198527705087,
        "lat": 47.1001193298506
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3070,
    "event_details": {
      "start_speed": 58.0069,
      "length": 63.1517,
      "end_speed": 57.0731
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198506823879,
        "lat": 47.1002005417226
      }
    },
    "end_at": "2018-10-01T16:46:52",
    "end_altitude": "291.597006047613",
    "end_after": 238.2,
    "duration": 1.09999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8167080118456,
        "lat": 47.0983566706958
      }
    },
    "start_at": "2018-10-01T16:46:20",
    "start_altitude": "310.913289886927",
    "start_after": 206.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8167731091313,
        "lat": 47.0983491389549
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3069,
    "event_details": {
      "start_speed": 44.5446,
      "length": 47.3761,
      "end_speed": 50.2534
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8168710705752,
        "lat": 47.0983326961115
      }
    },
    "end_at": "2018-10-01T16:46:21",
    "end_altitude": "310.415654493581",
    "end_after": 207.6,
    "duration": 1.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8138135177293,
        "lat": 47.0989756514271
      }
    },
    "start_at": "2018-10-01T16:45:54",
    "start_altitude": "311.712703824664",
    "start_after": 180.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.814113338993,
        "lat": 47.0989265758002
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3068,
    "event_details": {
      "start_speed": 92.7678,
      "length": 170.4471,
      "end_speed": 85.0051
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.814428819062,
        "lat": 47.098877774712
      }
    },
    "end_at": "2018-10-01T16:45:56",
    "end_altitude": "310.908589062271",
    "end_after": 182.2,
    "duration": 1.89999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7991158339631,
        "lat": 47.0993942883201
      }
    },
    "start_at": "2018-10-01T16:45:18",
    "start_altitude": "330.801009373905",
    "start_after": 144.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7992485886786,
        "lat": 47.099389832489
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3067,
    "event_details": {
      "start_speed": 119.9421,
      "length": 83.987,
      "end_speed": 120.0016
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7994214250997,
        "lat": 47.0993816808171
      }
    },
    "end_at": "2018-10-01T16:45:19",
    "end_altitude": "330.210879152147",
    "end_after": 145.2,
    "duration": 0.699999999999989,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7911072156602,
        "lat": 47.1002452914027
      }
    },
    "start_at": "2018-10-01T16:45:00",
    "start_altitude": "349.975280528441",
    "start_after": 126.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7911956824512,
        "lat": 47.1002280200884
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3066,
    "event_details": {
      "start_speed": 124.5572,
      "length": 62.0433,
      "end_speed": 124.0143
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7913280768482,
        "lat": 47.100212187779
      }
    },
    "end_at": "2018-10-01T16:45:01",
    "end_altitude": "349.026402625983",
    "end_after": 126.8,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7670463388984,
        "lat": 47.1056884573176
      }
    },
    "start_at": "2018-10-01T16:44:07",
    "start_altitude": "397.200869341941",
    "start_after": 73.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7671393292428,
        "lat": 47.1056884114189
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3065,
    "event_details": {
      "start_speed": 128.0018,
      "length": 63.9999,
      "end_speed": 128.0003
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.76727958945,
        "lat": 47.1056966263989
      }
    },
    "end_at": "2018-10-01T16:44:08",
    "end_altitude": "396.966249129375",
    "end_after": 73.7,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8851685658446,
        "lat": 47.0909086962075
      }
    },
    "start_at": "2018-10-01T16:51:50",
    "start_altitude": "280.819771261853",
    "start_after": 536.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8851685658446,
        "lat": 47.0909086962075
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3064,
    "event_details": {
      "start_speed": 28.4607,
      "mean_speed_change": 3.1242,
      "max_acc": 1.9885,
      "length": 67.3995,
      "end_speed": 35.0215,
      "altitude_diff": -0.8294
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8852792018382,
        "lat": 47.0910296260617
      }
    },
    "end_at": "2018-10-01T16:51:52",
    "end_altitude": "279.990388409488",
    "end_after": 538.1,
    "duration": 2.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8540917835353,
        "lat": 47.0980105839661
      }
    },
    "start_at": "2018-10-01T16:49:48",
    "start_altitude": "290.608072958707",
    "start_after": 413.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8540917835353,
        "lat": 47.0980105839661
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3063,
    "event_details": {
      "start_speed": 64.8086,
      "mean_speed_change": 3.3703,
      "max_acc": 1.5666,
      "length": 366.078,
      "end_speed": 81.6601,
      "altitude_diff": -0.48
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.855264530002,
        "lat": 47.0976314224051
      }
    },
    "end_at": "2018-10-01T16:49:53",
    "end_altitude": "290.128103959379",
    "end_after": 418.9,
    "duration": 5.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197268510453,
        "lat": 47.1011693754655
      }
    },
    "start_at": "2018-10-01T16:47:01",
    "start_altitude": "296.209792543213",
    "start_after": 246.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197268510453,
        "lat": 47.1011693754655
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3062,
    "event_details": {
      "start_speed": 32.5141,
      "mean_speed_change": 4.874,
      "max_acc": 2.1211,
      "length": 235.6119,
      "end_speed": 57.8589,
      "altitude_diff": 5.1934
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8205135737052,
        "lat": 47.1013015923276
      }
    },
    "end_at": "2018-10-01T16:47:06",
    "end_altitude": "301.403226064498",
    "end_after": 252.0,
    "duration": 5.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8161805216334,
        "lat": 47.0983479816823
      }
    },
    "start_at": "2018-10-01T16:46:14",
    "start_altitude": "313.002874175451",
    "start_after": 199.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8161805216334,
        "lat": 47.0983479816823
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3061,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 6.0422,
      "max_acc": 2.8926,
      "length": 342.7449,
      "end_speed": 61.026,
      "altitude_diff": -4.0865
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8172062653517,
        "lat": 47.0981791000148
      }
    },
    "end_at": "2018-10-01T16:46:24",
    "end_altitude": "308.91636782793",
    "end_after": 209.8,
    "duration": 10.1,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.885551766826,
        "lat": 47.0914476053631
      }
    },
    "start_at": "2018-10-01T16:52:01",
    "start_altitude": "284.188490996906",
    "start_after": 547.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.885551766826,
        "lat": 47.0914476053631
      }
    },
    "event_type": "BRAKE",
    "event_id": 3060,
    "event_details": {
      "start_speed": 13.5875,
      "mean_speed_change": -4.5292,
      "max_acc": 0.0944,
      "length": 19.3006,
      "end_speed": 0,
      "altitude_diff": 0.9313
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8855736122091,
        "lat": 47.0913665842525
      }
    },
    "end_at": "2018-10-01T16:52:04",
    "end_altitude": "285.119762748309",
    "end_after": 550.0,
    "duration": 3.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.88535332346,
        "lat": 47.0913366596172
      }
    },
    "start_at": "2018-10-01T16:51:56",
    "start_altitude": "283.596153890427",
    "start_after": 542.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.88535332346,
        "lat": 47.0913366596172
      }
    },
    "event_type": "BRAKE",
    "event_id": 3059,
    "event_details": {
      "start_speed": 22.9286,
      "mean_speed_change": -4.5564,
      "max_acc": -0.6592,
      "length": 37.741,
      "end_speed": 13.3602,
      "altitude_diff": 0.5039
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8854337804617,
        "lat": 47.091437426549
      }
    },
    "end_at": "2018-10-01T16:51:58",
    "end_altitude": "284.100010498229",
    "end_after": 544.2,
    "duration": 2.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8842059170265,
        "lat": 47.0910007277015
      }
    },
    "start_at": "2018-10-01T16:51:42",
    "start_altitude": "282.814137041543",
    "start_after": 528.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8842059170265,
        "lat": 47.0910007277015
      }
    },
    "event_type": "BRAKE",
    "event_id": 3058,
    "event_details": {
      "start_speed": 50.5464,
      "mean_speed_change": -4.0052,
      "max_acc": -0.4604,
      "length": 226.4838,
      "end_speed": 26.1145,
      "altitude_diff": -2.3584
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8850489720168,
        "lat": 47.0908521972534
      }
    },
    "end_at": "2018-10-01T16:51:48",
    "end_altitude": "280.455782885727",
    "end_after": 534.5,
    "duration": 6.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8770655291107,
        "lat": 47.0918708944822
      }
    },
    "start_at": "2018-10-01T16:51:06",
    "start_altitude": "288.384399257595",
    "start_after": 491.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8770655291107,
        "lat": 47.0918708944822
      }
    },
    "event_type": "BRAKE",
    "event_id": 3057,
    "event_details": {
      "start_speed": 72.9805,
      "mean_speed_change": -4.5316,
      "max_acc": -0.4298,
      "length": 226.953,
      "end_speed": 57.12,
      "altitude_diff": -0.7314
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8779358423873,
        "lat": 47.0918538539647
      }
    },
    "end_at": "2018-10-01T16:51:09",
    "end_altitude": "287.65303124957",
    "end_after": 495.3,
    "duration": 3.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8529469843047,
        "lat": 47.098217570375
      }
    },
    "start_at": "2018-10-01T16:49:42",
    "start_altitude": "292.911686899765",
    "start_after": 408.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8529469843047,
        "lat": 47.098217570375
      }
    },
    "event_type": "BRAKE",
    "event_id": 3056,
    "event_details": {
      "start_speed": 56.352,
      "mean_speed_change": 1.792,
      "max_acc": 0.2987,
      "length": 105.3132,
      "end_speed": 59.5777,
      "altitude_diff": -1.1502
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8533028223737,
        "lat": 47.0981857491458
      }
    },
    "end_at": "2018-10-01T16:49:44",
    "end_altitude": "291.761503119977",
    "end_after": 410.2,
    "duration": 1.80000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198002059783,
        "lat": 47.1006159201224
      }
    },
    "start_at": "2018-10-01T16:46:55",
    "start_altitude": "293.054079421906",
    "start_after": 241.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8198002059783,
        "lat": 47.1006159201224
      }
    },
    "event_type": "BRAKE",
    "event_id": 3055,
    "event_details": {
      "start_speed": 51.0051,
      "mean_speed_change": -5.2597,
      "max_acc": -0.3696,
      "length": 161.1984,
      "end_speed": 29.9661,
      "altitude_diff": 2.0503
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8197146658269,
        "lat": 47.1010479691262
      }
    },
    "end_at": "2018-10-01T16:46:59",
    "end_altitude": "295.104422841607",
    "end_after": 245.2,
    "duration": 4.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8174149491345,
        "lat": 47.0980378434836
      }
    },
    "start_at": "2018-10-01T16:46:25",
    "start_altitude": "307.722183079907",
    "start_after": 211.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8174149491345,
        "lat": 47.0980378434836
      }
    },
    "event_type": "BRAKE",
    "event_id": 3054,
    "event_details": {
      "start_speed": 62.0655,
      "mean_speed_change": -4.7725,
      "max_acc": -0.4908,
      "length": 197.9086,
      "end_speed": 43.93,
      "altitude_diff": -3.9469
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8180026241977,
        "lat": 47.0976904099693
      }
    },
    "end_at": "2018-10-01T16:46:29",
    "end_altitude": "303.775307034589",
    "end_after": 214.9,
    "duration": 3.80000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.813980646814,
        "lat": 47.0989506821257
      }
    },
    "start_at": "2018-10-01T16:45:55",
    "start_altitude": "311.403628608538",
    "start_after": 180.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.813980646814,
        "lat": 47.0989506821257
      }
    },
    "event_type": "BRAKE",
    "event_id": 3053,
    "event_details": {
      "start_speed": 90.9895,
      "mean_speed_change": -6.9976,
      "max_acc": -0.1378,
      "length": 622.4077,
      "end_speed": 0.0207,
      "altitude_diff": -1.983
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.816200854419,
        "lat": 47.0983401903752
      }
    },
    "end_at": "2018-10-01T16:46:08",
    "end_altitude": "309.420614728088",
    "end_after": 193.8,
    "duration": 13.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645731971557,
        "lat": 47.0580566845771
      }
    },
    "start_at": "2018-10-02T08:04:30",
    "start_altitude": "356.400051940019",
    "start_after": 1488.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645731971557,
        "lat": 47.0580566845771
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3110,
    "event_details": {
      "event_id": 3092
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464560953776,
        "lat": 47.058056640625
      }
    },
    "end_at": "2018-10-02T08:05:02",
    "end_altitude": "356.200012207031",
    "end_after": 1520.2,
    "duration": 32.2,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4562845233267,
        "lat": 47.0473388668636
      }
    },
    "start_at": "2018-10-02T08:01:41",
    "start_altitude": "347.943725319768",
    "start_after": 1319.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4562845233267,
        "lat": 47.0473388668636
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 3109,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563254662069,
        "lat": 47.04732207969
      }
    },
    "end_at": "2018-10-02T08:01:47",
    "end_altitude": "347.609309101832",
    "end_after": 1324.9,
    "duration": 5.30000000000018,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464560953776,
        "lat": 47.058056640625
      }
    },
    "start_at": "2018-10-02T08:04:54",
    "start_altitude": "356.200012207031",
    "start_after": 1512.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464560953776,
        "lat": 47.058056640625
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3108,
    "event_details": {
      "start_speed": 3.5435e-6,
      "length": 0,
      "end_speed": 4.3483e-6
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464560953776,
        "lat": 47.058056640625
      }
    },
    "end_at": "2018-10-02T08:04:58",
    "end_altitude": "356.200012207031",
    "end_after": 1516.6,
    "duration": 4.59999999999991,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648519696231,
        "lat": 47.0578833433902
      }
    },
    "start_at": "2018-10-02T08:04:23",
    "start_altitude": "356.766142805052",
    "start_after": 1481.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648426604491,
        "lat": 47.0578897039357
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3107,
    "event_details": {
      "start_speed": 22.9773,
      "length": 11.4882,
      "end_speed": 22.7602
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648306960364,
        "lat": 47.0579115866586
      }
    },
    "end_at": "2018-10-02T08:04:24",
    "end_altitude": "356.904607115343",
    "end_after": 1481.7,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4559068932083,
        "lat": 47.0542372151878
      }
    },
    "start_at": "2018-10-02T08:03:01",
    "start_altitude": "344.61139432835",
    "start_after": 1399.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4559778467225,
        "lat": 47.0542571788526
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3106,
    "event_details": {
      "start_speed": 42.339,
      "length": 50.4166,
      "end_speed": 41.9882
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4560745957515,
        "lat": 47.0542938216619
      }
    },
    "end_at": "2018-10-02T08:03:02",
    "end_altitude": "344.342509271732",
    "end_after": 1400.2,
    "duration": 1.20000000000005,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4545994290347,
        "lat": 47.0535189821922
      }
    },
    "start_at": "2018-10-02T08:02:49",
    "start_altitude": "342.777688818832",
    "start_after": 1386.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4546076519358,
        "lat": 47.053534334981
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3105,
    "event_details": {
      "start_speed": 41.0012,
      "length": 24.4231,
      "end_speed": 39.9766
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4546259767037,
        "lat": 47.0535672054246
      }
    },
    "end_at": "2018-10-02T08:02:49",
    "end_altitude": "342.59495113094",
    "end_after": 1387.3,
    "duration": 0.599999999999909,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4545288139519,
        "lat": 47.0532496628368
      }
    },
    "start_at": "2018-10-02T08:02:46",
    "start_altitude": "343.497417773786",
    "start_after": 1383.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4545287536534,
        "lat": 47.0532655682489
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3104,
    "event_details": {
      "start_speed": 37.1676,
      "length": 18.9127,
      "end_speed": 37.9907
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4545302136343,
        "lat": 47.0532900893095
      }
    },
    "end_at": "2018-10-02T08:02:46",
    "end_altitude": "343.323751477357",
    "end_after": 1384.2,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5959374386145,
        "lat": 47.0617871058255
      }
    },
    "start_at": "2018-10-02T07:53:30",
    "start_altitude": "486.32910469584",
    "start_after": 827.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5958380338429,
        "lat": 47.0617780443085
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3103,
    "event_details": {
      "start_speed": 141,
      "length": 84.6,
      "end_speed": 141.0002
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5956372592951,
        "lat": 47.0617474518236
      }
    },
    "end_at": "2018-10-02T07:53:30",
    "end_altitude": "486.938293483092",
    "end_after": 828.4,
    "duration": 0.600000000000023,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7463401971298,
        "lat": 47.0954810465862
      }
    },
    "start_at": "2018-10-02T07:46:56",
    "start_altitude": "400.896453465395",
    "start_after": 433.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7462673543184,
        "lat": 47.0954476673171
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3102,
    "event_details": {
      "start_speed": 118.9965,
      "length": 59.489,
      "end_speed": 118.9015
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7461567343023,
        "lat": 47.0954071308046
      }
    },
    "end_at": "2018-10-02T07:46:56",
    "end_altitude": "400.339394680004",
    "end_after": 434.4,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7648201536441,
        "lat": 47.1054780690552
      }
    },
    "start_at": "2018-10-02T07:46:03",
    "start_altitude": "408.242731733482",
    "start_after": 380.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7647377256132,
        "lat": 47.1054661285217
      }
    },
    "event_type": "POTHOLE",
    "event_id": 3101,
    "event_details": {
      "start_speed": 116.053,
      "length": 58.4696,
      "end_speed": 117.8044
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7646157953751,
        "lat": 47.1054393192781
      }
    },
    "end_at": "2018-10-02T07:46:03",
    "end_altitude": "408.49600417885",
    "end_after": 381.2,
    "duration": 0.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648457677664,
        "lat": 47.0577392215204
      }
    },
    "start_at": "2018-10-02T08:04:18",
    "start_altitude": "356.88939776405",
    "start_after": 1476.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648457677664,
        "lat": 47.0577392215204
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3100,
    "event_details": {
      "start_speed": 1.9341,
      "mean_speed_change": 7.3435,
      "max_acc": 2.7186,
      "length": 35.7345,
      "end_speed": 21.0271,
      "altitude_diff": -0.203
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648828650431,
        "lat": 47.0577727444541
      }
    },
    "end_at": "2018-10-02T08:04:21",
    "end_altitude": "356.686367007142",
    "end_after": 1479.1,
    "duration": 2.59999999999991,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4550521246514,
        "lat": 47.053967705306
      }
    },
    "start_at": "2018-10-02T08:02:55",
    "start_altitude": "343.505819105516",
    "start_after": 1393.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4550521246514,
        "lat": 47.053967705306
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3099,
    "event_details": {
      "start_speed": 38.3485,
      "mean_speed_change": 2.8816,
      "max_acc": 1.7193,
      "length": 35.8836,
      "end_speed": 40.9419,
      "altitude_diff": 0.0789
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4551784679868,
        "lat": 47.0540051648639
      }
    },
    "end_at": "2018-10-02T08:02:56",
    "end_altitude": "343.584684375186",
    "end_after": 1393.9,
    "duration": 0.900000000000091,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563254662069,
        "lat": 47.04732207969
      }
    },
    "start_at": "2018-10-02T08:01:47",
    "start_altitude": "347.609309101832",
    "start_after": 1324.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4563254662069,
        "lat": 47.04732207969
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3098,
    "event_details": {
      "start_speed": 0.3286,
      "mean_speed_change": 5.1597,
      "max_acc": 2.3027,
      "length": 157.6142,
      "end_speed": 37.9945,
      "altitude_diff": 2.4553
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4559418010786,
        "lat": 47.0475690475442
      }
    },
    "end_at": "2018-10-02T08:01:54",
    "end_altitude": "350.064566378543",
    "end_after": 1332.2,
    "duration": 7.29999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.621051872738,
        "lat": 47.0673604114317
      }
    },
    "start_at": "2018-10-02T07:52:36",
    "start_altitude": "426.219057461888",
    "start_after": 774.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.621051872738,
        "lat": 47.0673604114317
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3097,
    "event_details": {
      "start_speed": 111.2981,
      "mean_speed_change": 3.5862,
      "max_acc": 1.1234,
      "length": 124.5611,
      "end_speed": 115.2429,
      "altitude_diff": 0.7376
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6206475019048,
        "lat": 47.0672421711426
      }
    },
    "end_at": "2018-10-02T07:52:37",
    "end_altitude": "426.956634440253",
    "end_after": 775.2,
    "duration": 1.10000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7643707873038,
        "lat": 47.1053912805014
      }
    },
    "start_at": "2018-10-02T07:46:04",
    "start_altitude": "408.70142355558",
    "start_after": 381.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7643707873038,
        "lat": 47.1053912805014
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3096,
    "event_details": {
      "start_speed": 119.9732,
      "mean_speed_change": 1.8661,
      "max_acc": 0.9325,
      "length": 72.1711,
      "end_speed": 121.0928,
      "altitude_diff": 0.1946
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7641198214468,
        "lat": 47.105341999999
      }
    },
    "end_at": "2018-10-02T07:46:04",
    "end_altitude": "408.895978886171",
    "end_after": 382.4,
    "duration": 0.599999999999966,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8147590110022,
        "lat": 47.0991147068519
      }
    },
    "start_at": "2018-10-02T07:43:57",
    "start_altitude": "326.940602328751",
    "start_after": 255.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8147590110022,
        "lat": 47.0991147068519
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3095,
    "event_details": {
      "start_speed": 62.6856,
      "mean_speed_change": 4.6115,
      "max_acc": 2.1034,
      "length": 812.3199,
      "end_speed": 106.0335,
      "altitude_diff": 1.5034
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8118135169714,
        "lat": 47.0993093622286
      }
    },
    "end_at": "2018-10-02T07:44:07",
    "end_altitude": "328.444040974815",
    "end_after": 264.7,
    "duration": 9.39999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8194726281566,
        "lat": 47.1011406163747
      }
    },
    "start_at": "2018-10-02T07:43:08",
    "start_altitude": "317.729330555582",
    "start_after": 206.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8194726281566,
        "lat": 47.1011406163747
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3094,
    "event_details": {
      "start_speed": 24.6402,
      "mean_speed_change": 4.4876,
      "max_acc": 1.8568,
      "length": 66.5523,
      "end_speed": 34.5129,
      "altitude_diff": -0.9305
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8196315169829,
        "lat": 47.1009865121582
      }
    },
    "end_at": "2018-10-02T07:43:11",
    "end_altitude": "316.798795166221",
    "end_after": 208.8,
    "duration": 2.20000000000002,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8389274848058,
        "lat": 47.0995604929254
      }
    },
    "start_at": "2018-10-02T07:41:18",
    "start_altitude": "306.989528552912",
    "start_after": 96.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8389274848058,
        "lat": 47.0995604929254
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 3093,
    "event_details": {
      "start_speed": 21.1963,
      "mean_speed_change": 4.6655,
      "max_acc": 1.7911,
      "length": 208.2696,
      "end_speed": 48.2565,
      "altitude_diff": -1.3979
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8382403963264,
        "lat": 47.0996021263344
      }
    },
    "end_at": "2018-10-02T07:41:24",
    "end_altitude": "305.591674733211",
    "end_after": 102.3,
    "duration": 5.8,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648098714743,
        "lat": 47.0579280619432
      }
    },
    "start_at": "2018-10-02T08:04:24",
    "start_altitude": "357.014628259462",
    "start_after": 1482.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648098714743,
        "lat": 47.0579280619432
      }
    },
    "event_type": "BRAKE",
    "event_id": 3092,
    "event_details": {
      "start_speed": 21.2584,
      "mean_speed_change": -3.7833,
      "max_acc": -0.4858,
      "length": 52.3198,
      "end_speed": 4.9901,
      "altitude_diff": -0.7251
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645883207148,
        "lat": 47.0580378455036
      }
    },
    "end_at": "2018-10-02T08:04:28",
    "end_altitude": "356.2895126817",
    "end_after": 1486.4,
    "duration": 4.30000000000018,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4646223474382,
        "lat": 47.0576671563378
      }
    },
    "start_at": "2018-10-02T08:04:14",
    "start_altitude": "355.981032572787",
    "start_after": 1472.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4646223474382,
        "lat": 47.0576671563378
      }
    },
    "event_type": "BRAKE",
    "event_id": 3091,
    "event_details": {
      "start_speed": 25.8472,
      "mean_speed_change": -5.8834,
      "max_acc": -0.6673,
      "length": 54.3795,
      "end_speed": 2.9018,
      "altitude_diff": 1.019
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4648416667973,
        "lat": 47.0577423529667
      }
    },
    "end_at": "2018-10-02T08:04:18",
    "end_altitude": "357.00006106489",
    "end_after": 1476.0,
    "duration": 3.90000000000009,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4570349792574,
        "lat": 47.0472484869567
      }
    },
    "start_at": "2018-10-02T08:01:33",
    "start_altitude": "340.362196007637",
    "start_after": 1311.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4570349792574,
        "lat": 47.0472484869567
      }
    },
    "event_type": "BRAKE",
    "event_id": 3090,
    "event_details": {
      "start_speed": 41.8855,
      "mean_speed_change": -4.7597,
      "max_acc": -0.6752,
      "length": 182.0462,
      "end_speed": 0,
      "altitude_diff": 7.645
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4562854574443,
        "lat": 47.047338867579
      }
    },
    "end_at": "2018-10-02T08:01:42",
    "end_altitude": "348.007161414573",
    "end_after": 1319.8,
    "duration": 8.79999999999995,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4661792892676,
        "lat": 47.0420345168925
      }
    },
    "start_at": "2018-10-02T08:00:32",
    "start_altitude": "349.300774030454",
    "start_after": 1250.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4661792892676,
        "lat": 47.0420345168925
      }
    },
    "event_type": "BRAKE",
    "event_id": 3089,
    "event_details": {
      "start_speed": 65.6581,
      "mean_speed_change": -4.0032,
      "max_acc": -0.4633,
      "length": 149.9814,
      "end_speed": 55.6502,
      "altitude_diff": -1.0222
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4657824263222,
        "lat": 47.0423057047006
      }
    },
    "end_at": "2018-10-02T08:00:34",
    "end_altitude": "348.278550203821",
    "end_after": 1252.5,
    "duration": 2.5,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4682200563484,
        "lat": 47.0406480344931
      }
    },
    "start_at": "2018-10-02T08:00:22",
    "start_altitude": "349.609596976351",
    "start_after": 1239.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4682200563484,
        "lat": 47.0406480344931
      }
    },
    "event_type": "BRAKE",
    "event_id": 3088,
    "event_details": {
      "start_speed": 92.2476,
      "mean_speed_change": -3.9358,
      "max_acc": -0.7558,
      "length": 266.8188,
      "end_speed": 80.0467,
      "altitude_diff": 0.1905
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.467503505352,
        "lat": 47.0411296790804
      }
    },
    "end_at": "2018-10-02T08:00:25",
    "end_altitude": "349.800070116504",
    "end_after": 1243.0,
    "duration": 3.09999999999991,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4985841005427,
        "lat": 47.0247817155283
      }
    },
    "start_at": "2018-10-02T07:57:57",
    "start_altitude": "345.290337979872",
    "start_after": 1094.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4985841005427,
        "lat": 47.0247817155283
      }
    },
    "event_type": "BRAKE",
    "event_id": 3087,
    "event_details": {
      "start_speed": 102.4485,
      "mean_speed_change": -5.853,
      "max_acc": -0.5751,
      "length": 359.3644,
      "end_speed": 79.0366,
      "altitude_diff": 0.2052
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4975711523073,
        "lat": 47.0241660175213
      }
    },
    "end_at": "2018-10-02T07:58:01",
    "end_altitude": "345.495585558365",
    "end_after": 1098.9,
    "duration": 4.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5118169168126,
        "lat": 47.0384332678099
      }
    },
    "start_at": "2018-10-02T07:56:57",
    "start_altitude": "358.299004202589",
    "start_after": 1035.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5118169168126,
        "lat": 47.0384332678099
      }
    },
    "event_type": "BRAKE",
    "event_id": 3086,
    "event_details": {
      "start_speed": 127.019,
      "mean_speed_change": -4.03,
      "max_acc": -0.7525,
      "length": 256.9721,
      "end_speed": 118.5561,
      "altitude_diff": -0.1232
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5111777931863,
        "lat": 47.0379455124149
      }
    },
    "end_at": "2018-10-02T07:57:00",
    "end_altitude": "358.175843943567",
    "end_after": 1037.7,
    "duration": 2.10000000000014,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6324239359885,
        "lat": 47.0697638784245
      }
    },
    "start_at": "2018-10-02T07:52:05",
    "start_altitude": "409.08699457766",
    "start_after": 742.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6324239359885,
        "lat": 47.0697638784245
      }
    },
    "event_type": "BRAKE",
    "event_id": 3085,
    "event_details": {
      "start_speed": 108.8631,
      "mean_speed_change": -3.7451,
      "max_acc": -0.7609,
      "length": 189.3985,
      "end_speed": 102.1218,
      "altitude_diff": 0.7671
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6317530551167,
        "lat": 47.0696075836058
      }
    },
    "end_at": "2018-10-02T07:52:06",
    "end_altitude": "409.854133804364",
    "end_after": 744.6,
    "duration": 1.80000000000007,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7161968484782,
        "lat": 47.0948227881164
      }
    },
    "start_at": "2018-10-02T07:48:04",
    "start_altitude": "353.402281146749",
    "start_after": 502.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7161968484782,
        "lat": 47.0948227881164
      }
    },
    "event_type": "BRAKE",
    "event_id": 3084,
    "event_details": {
      "start_speed": 118.8747,
      "mean_speed_change": -3.6482,
      "max_acc": -0.5791,
      "length": 162.5809,
      "end_speed": 113.7671,
      "altitude_diff": 0.097
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7156532524864,
        "lat": 47.0950127171688
      }
    },
    "end_at": "2018-10-02T07:48:05",
    "end_altitude": "353.499303933725",
    "end_after": 503.5,
    "duration": 1.39999999999998,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7584651558508,
        "lat": 47.1029320124391
      }
    },
    "start_at": "2018-10-02T07:46:18",
    "start_altitude": "409.003213709571",
    "start_after": 396.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7584651558508,
        "lat": 47.1029320124391
      }
    },
    "event_type": "BRAKE",
    "event_id": 3083,
    "event_details": {
      "start_speed": 130.2876,
      "mean_speed_change": -3.9565,
      "max_acc": -0.6496,
      "length": 275.7987,
      "end_speed": 121.5832,
      "altitude_diff": -0.0088
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7577320358149,
        "lat": 47.1024351768336
      }
    },
    "end_at": "2018-10-02T07:46:20",
    "end_altitude": "408.994374172033",
    "end_after": 398.3,
    "duration": 2.19999999999999,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7725953230292,
        "lat": 47.1052461555199
      }
    },
    "start_at": "2018-10-02T07:45:43",
    "start_altitude": "406.027104315237",
    "start_after": 361.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7725953230292,
        "lat": 47.1052461555199
      }
    },
    "event_type": "BRAKE",
    "event_id": 3082,
    "event_details": {
      "start_speed": 127.7294,
      "mean_speed_change": -4.6301,
      "max_acc": -0.5839,
      "length": 471.322,
      "end_speed": 109.2088,
      "altitude_diff": -1.6439
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7708794846133,
        "lat": 47.1055890339333
      }
    },
    "end_at": "2018-10-02T07:45:47",
    "end_altitude": "404.383235185194",
    "end_after": 365.4,
    "duration": 4.0,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8209643432443,
        "lat": 47.1013670296056
      }
    },
    "start_at": "2018-10-02T07:42:51",
    "start_altitude": "315.599094279472",
    "start_after": 189.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8209643432443,
        "lat": 47.1013670296056
      }
    },
    "event_type": "BRAKE",
    "event_id": 3081,
    "event_details": {
      "start_speed": 53.0255,
      "mean_speed_change": -4.2688,
      "max_acc": -0.5619,
      "length": 187.5699,
      "end_speed": 34.6696,
      "altitude_diff": 1.4932
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8202635219097,
        "lat": 47.1013269564242
      }
    },
    "end_at": "2018-10-02T07:42:56",
    "end_altitude": "317.092298851724",
    "end_after": 193.8,
    "duration": 4.30000000000001,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8333434453481,
        "lat": 47.0998162824319
      }
    },
    "start_at": "2018-10-02T07:41:48",
    "start_altitude": "318.307157697329",
    "start_after": 126.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8333434453481,
        "lat": 47.0998162824319
      }
    },
    "event_type": "BRAKE",
    "event_id": 3080,
    "event_details": {
      "start_speed": 55.5855,
      "mean_speed_change": -3.9808,
      "max_acc": -0.7675,
      "length": 116.0128,
      "end_speed": 46.4296,
      "altitude_diff": 0.0911
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8329180765084,
        "lat": 47.0998777799584
      }
    },
    "end_at": "2018-10-02T07:41:50",
    "end_altitude": "318.398226533001",
    "end_after": 128.6,
    "duration": 2.3,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8396657213536,
        "lat": 47.0995276373298
      }
    },
    "start_at": "2018-10-02T07:41:13",
    "start_altitude": "307.001957051516",
    "start_after": 91.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8396657213536,
        "lat": 47.0995276373298
      }
    },
    "event_type": "BRAKE",
    "event_id": 3079,
    "event_details": {
      "start_speed": 50.9672,
      "mean_speed_change": -6.4954,
      "max_acc": 0.0757,
      "length": 168.9811,
      "end_speed": 20.439,
      "altitude_diff": 0.1559
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8389714485726,
        "lat": 47.0995605524016
      }
    },
    "end_at": "2018-10-02T07:41:18",
    "end_altitude": "307.15787520534",
    "end_after": 95.9,
    "duration": 4.7,
    "driver_id": 14
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.854085443218,
        "lat": 47.0979573136006
      }
    },
    "start_at": "2018-10-02T07:39:51",
    "start_altitude": "310.600119506375",
    "start_after": 8.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.854085443218,
        "lat": 47.0979573136006
      }
    },
    "event_type": "BRAKE",
    "event_id": 3078,
    "event_details": {
      "start_speed": 63.8707,
      "mean_speed_change": -3.9098,
      "max_acc": -0.8291,
      "length": 151.1499,
      "end_speed": 53.7054,
      "altitude_diff": -1.2926
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8535370295914,
        "lat": 47.0980869527067
      }
    },
    "end_at": "2018-10-02T07:39:53",
    "end_altitude": "309.307560501082",
    "end_after": 11.4,
    "duration": 2.6,
    "driver_id": 14
  }
]
```

## AegisApiWeb.TripController
### <a id=aegisapiweb-tripcontroller-show></a>show
#### List all trips for existing driver
##### Request
* __Method:__ GET
* __Path:__ /api/v1/trips
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU0NjM0NDM0MCwiaWF0IjoxNTQzOTI1MTQwLCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6IjE0NjUyNzY2LWYxYTUtNDJjNS04N2EwLWIwYTRkNWM4ZGQxNiIsIm5iZiI6MTU0MzkyNTEzOSwic3ViIjoiMTQiLCJ0eXAiOiJhY2Nlc3MifQ.Pj3xNn9rQtYRfn9i6J-zOW8ZCijWAkbO4PBJbxSPixHspCsNHzYeoQlXTKRgF3SeWb6BhNBp2hQ5jvKu4xegUQ
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2lmhvf19b6f80fup0k0002n4
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "vehicle_id": 17,
    "trip_id": "f94b7ed1-3636-40bf-9a9e-f1c19a3eed4c",
    "start_position_name": "Friedrich-Kaulbach-Straße, 8010, Graz, Austria",
    "start_at": "2018-09-24T10:14:57",
    "end_position_name": "Süd Autobahn, 8073, Feldkirchen bei Graz, Austria",
    "duration": 646.0,
    "driver_id": 14,
    "distance": 10271.1499930299,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "099ca795-04b6-4aa2-a793-5bc4ba2c1df1",
    "start_position_name": "Peraustraße, 9500, Villach, Austria",
    "start_at": "2018-09-24T12:04:51",
    "end_position_name": "Feldnerstraße, 9500, Lind, Austria",
    "duration": 428.1,
    "driver_id": 14,
    "distance": 1694.3301544224,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "eafa8972-3b2f-49c1-b673-95a0f161c358",
    "start_position_name": "Steinwenderstraße, 9500, Lind, Austria",
    "start_at": "2018-09-30T01:32:13",
    "end_position_name": "Tauern Autobahn, 9523, Gratschach, Austria",
    "duration": 444.0,
    "driver_id": 14,
    "distance": 7600.07020193426,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "e0b05e3d-4bed-48ce-aa10-9449daaec8ca",
    "start_position_name": "B65, 8261, Sinabelkirchen, Austria",
    "start_at": "2018-10-01T07:35:42",
    "end_position_name": "Süd Autobahn, 8200, Hofstätten an der Raab, Austria",
    "duration": 342.7,
    "driver_id": 14,
    "distance": 8858.40296305493,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "216f24cd-e3aa-4b8c-aee6-5532c3280be3",
    "start_position_name": "Münzgrabenstraße, 8010, Graz, Austria",
    "start_at": "2018-10-01T07:58:05",
    "end_position_name": "Friedrich-Kaulbach-Straße, 8010, Graz, Austria",
    "duration": 133.1,
    "driver_id": 14,
    "distance": 907.106837045112,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "15da2181-f033-4c87-b162-73ba9f353250",
    "start_position_name": "Wittenbauerstraße, 8042, Graz, Austria",
    "start_at": "2018-10-01T15:38:28",
    "end_position_name": "Albersdorferstraße, 8200, Gleisdorf, Austria",
    "duration": 1057.3,
    "driver_id": 14,
    "distance": 26126.3983929213,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "c857b2b6-052c-4d59-a4ba-535a1e4229e0",
    "start_position_name": "Schillerstraße, 8200, Gleisdorf, Austria",
    "start_at": "2018-10-01T16:10:55",
    "end_position_name": "Schillerstraße, 8200, Gleisdorf, Austria",
    "duration": 57.1,
    "driver_id": 14,
    "distance": 98.1793914391342,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "34c4f8df-1c1f-4618-bbe8-3eba6901318b",
    "start_position_name": "Businesspark, 8200, Gleisdorf, Austria",
    "start_at": "2018-10-01T16:25:47",
    "end_position_name": "Businesspark, 8200, Gleisdorf, Austria",
    "duration": 66.0,
    "driver_id": 14,
    "distance": 216.427285507831,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "624a25c3-ad86-4b1d-8924-3fea293fe12f",
    "start_position_name": "B68, 8200, Hofstätten an der Raab, Austria",
    "start_at": "2018-10-01T16:30:17",
    "end_position_name": "Kowaldweg, 8200, Hofstätten an der Raab, Austria",
    "duration": 79.0,
    "driver_id": 14,
    "distance": 155.763778095128,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "d7d33f24-e3a4-4c91-917f-8c3a3331ece7",
    "start_position_name": "Süd Autobahn, 8200, Hofstätten an der Raab, Austria",
    "start_at": "2018-10-01T16:42:54",
    "end_position_name": "8262, Ilz, Austria",
    "duration": 607.1,
    "driver_id": 14,
    "distance": 12034.4860653416,
    "beagle_id": 6
  },
  {
    "vehicle_id": 17,
    "trip_id": "18eff292-ea0d-4ddc-ba1a-c249e5d60b89",
    "start_position_name": "B65, 8261, Sinabelkirchen, Austria",
    "start_at": "2018-10-02T07:39:42",
    "end_position_name": "Friedrich-Kaulbach-Straße, 8010, Graz, Austria",
    "duration": 1520.3,
    "driver_id": 14,
    "distance": 38142.9178370662,
    "beagle_id": 6
  }
]
```

