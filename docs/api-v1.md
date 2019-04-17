# API Documentation

  * [AegisApiWeb.EventController](#aegisapiweb-eventcontroller)
    * [show](#aegisapiweb-eventcontroller-show)
  * [AegisApiWeb.RankingInfoController](#aegisapiweb-rankinginfocontroller)
    * [index](#aegisapiweb-rankinginfocontroller-index)
  * [AegisApiWeb.TripController](#aegisapiweb-tripcontroller)
    * [index](#aegisapiweb-tripcontroller-index)

## AegisApiWeb.EventController
### <a id=aegisapiweb-eventcontroller-show></a>show
#### List all events for existing driver
##### Request
* __Method:__ GET
* __Path:__ /api/v1/events
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU1NzkwMjY5NCwiaWF0IjoxNTU1NDgzNDk0LCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6IjVlYThmZThmLWFjNzgtNDFiNC05NWE5LTdlNjYwY2E5NDNkMiIsIm5iZiI6MTU1NTQ4MzQ5Mywic3ViIjoiMTYiLCJ0eXAiOiJhY2Nlc3MifQ.UiXwFi2rxPjRcUKBw5vuX4Y1QbQGgfKglEe3cJERakqsF5lvkH5TYPD66OF6uWGk4V1VctFzDQIg-YQ9G3ry1g
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2mb2vvp311b80aea8c001n91
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619330998269,
        "lat": 47.079704306674
      }
    },
    "start_at": "2019-03-28T10:16:37",
    "start_altitude": "303.59426547402",
    "start_after": 2123.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619330998269,
        "lat": 47.079704306674
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129759,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619567871093,
        "lat": 47.0796630859375
      }
    },
    "end_at": "2019-03-28T10:20:03",
    "end_altitude": "304.299987792969",
    "end_after": 2329.1,
    "duration": 205.6,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802391357636,
        "lat": 47.0346121837946
      }
    },
    "start_at": "2019-03-28T09:52:54",
    "start_altitude": "333.10219734441",
    "start_after": 700.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802391357636,
        "lat": 47.0346121837946
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129758,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.480234781901,
        "lat": 47.0346028645833
      }
    },
    "end_at": "2019-03-28T09:53:31",
    "end_altitude": "332.799987792969",
    "end_after": 736.7,
    "duration": 36.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827474119349,
        "lat": 47.0358690036144
      }
    },
    "start_at": "2019-03-28T09:51:57",
    "start_altitude": "338.268058602337",
    "start_after": 643.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827474119349,
        "lat": 47.0358690036144
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129757,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827433118034,
        "lat": 47.0358723958333
      }
    },
    "end_at": "2019-03-28T09:52:08",
    "end_altitude": "338.300531939436",
    "end_after": 654.3,
    "duration": 10.8,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848467294139,
        "lat": 47.0368977864583
      }
    },
    "start_at": "2019-03-28T09:51:27",
    "start_altitude": "346.497425486001",
    "start_after": 612.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848467294139,
        "lat": 47.0368977864583
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129756,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848468347382,
        "lat": 47.0368977864581
      }
    },
    "end_at": "2019-03-28T09:51:30",
    "end_altitude": "346.205832102898",
    "end_after": 616.0,
    "duration": 3.10000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883706840789,
        "lat": 47.0400146395583
      }
    },
    "start_at": "2019-03-28T09:50:25",
    "start_altitude": "353.006189412532",
    "start_after": 551.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883706840789,
        "lat": 47.0400146395583
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129755,
    "event_details": {
      "event_id": 129657
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883443247521,
        "lat": 47.0400472007782
      }
    },
    "end_at": "2019-03-28T09:50:42",
    "end_altitude": "354.299987793283",
    "end_after": 568.1,
    "duration": 16.7,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4874563256913,
        "lat": 47.043675931632
      }
    },
    "start_at": "2019-03-28T09:49:32",
    "start_altitude": "356.327965262983",
    "start_after": 498.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4874563256913,
        "lat": 47.043675931632
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129754,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4874756132306,
        "lat": 47.0436686197915
      }
    },
    "end_at": "2019-03-28T09:49:39",
    "end_altitude": "358.000025365257",
    "end_after": 505.0,
    "duration": 6.69999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738240429936,
        "lat": 47.0547200385082
      }
    },
    "start_at": "2019-03-28T09:46:46",
    "start_altitude": "369.101128169482",
    "start_after": 332.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738240429936,
        "lat": 47.0547200385082
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129753,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.473803703531,
        "lat": 47.0546549464547
      }
    },
    "end_at": "2019-03-28T09:46:56",
    "end_altitude": "368.500916398536",
    "end_after": 342.6,
    "duration": 10.4,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4722046353196,
        "lat": 47.0565509641519
      }
    },
    "start_at": "2019-03-28T09:45:58",
    "start_altitude": "370.502040356786",
    "start_after": 284.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4722046353196,
        "lat": 47.0565509641519
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129752,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4721465450304,
        "lat": 47.0565275217049
      }
    },
    "end_at": "2019-03-28T09:46:10",
    "end_altitude": "369.603327872141",
    "end_after": 295.9,
    "duration": 11.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691546061728,
        "lat": 47.059248398811
      }
    },
    "start_at": "2019-03-28T09:44:56",
    "start_altitude": "367.199782906696",
    "start_after": 222.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691546061728,
        "lat": 47.059248398811
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129751,
    "event_details": {
      "event_id": 129649
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691140571947,
        "lat": 47.0591874762891
      }
    },
    "end_at": "2019-03-28T09:45:08",
    "end_altitude": "366.799987635388",
    "end_after": 234.2,
    "duration": 11.9,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4638683428488,
        "lat": 47.0597086585902
      }
    },
    "start_at": "2019-03-28T09:43:43",
    "start_altitude": "376.81456656413",
    "start_after": 149.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4638683428488,
        "lat": 47.0597086585902
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129750,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4638867463023,
        "lat": 47.0597086585215
      }
    },
    "end_at": "2019-03-28T09:43:48",
    "end_altitude": "375.752228819199",
    "end_after": 153.9,
    "duration": 4.40000000000001,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.461057917125,
        "lat": 47.0584879549502
      }
    },
    "start_at": "2019-03-28T09:41:14",
    "start_altitude": "377.723670463008",
    "start_after": 0.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.461057917125,
        "lat": 47.0584879549502
      }
    },
    "event_type": "STANDSTILL",
    "event_id": 129749,
    "event_details": {},
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4610860188802,
        "lat": 47.0584716796875
      }
    },
    "end_at": "2019-03-28T09:42:49",
    "end_altitude": "379.400751102412",
    "end_after": 95.5,
    "duration": 95.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9627103320077,
        "lat": 47.0792872358425
      }
    },
    "start_at": "2019-03-28T10:16:20",
    "start_altitude": "300.396781938731",
    "start_after": 2105.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9627082950015,
        "lat": 47.0792945847325
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129748,
    "event_details": {
      "start_speed": 15.9836,
      "length": 9.5964,
      "end_speed": 16.1221
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9626969792566,
        "lat": 47.079310839775
      }
    },
    "end_at": "2019-03-28T10:16:20",
    "end_altitude": "300.506469783396",
    "end_after": 2106.5,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9630275420958,
        "lat": 47.0789853957589
      }
    },
    "start_at": "2019-03-28T10:16:11",
    "start_altitude": "299.822220191266",
    "start_after": 2096.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.963004733544,
        "lat": 47.0789792096907
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129747,
    "event_details": {
      "start_speed": 19.8617,
      "length": 13.9986,
      "end_speed": 19.8586
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9629756997679,
        "lat": 47.0789805589122
      }
    },
    "end_at": "2019-03-28T10:16:11",
    "end_altitude": "300.000888562326",
    "end_after": 2097.5,
    "duration": 0.699999999999818,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9630779151104,
        "lat": 47.0791305900944
      }
    },
    "start_at": "2019-03-28T10:16:08",
    "start_altitude": "299.522165781427",
    "start_after": 2094.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9630879092044,
        "lat": 47.0791146847483
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129746,
    "event_details": {
      "start_speed": 26.059,
      "length": 14.7857,
      "end_speed": 23.4223
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9630964866351,
        "lat": 47.0790832278203
      }
    },
    "end_at": "2019-03-28T10:16:09",
    "end_altitude": "300.027831166028",
    "end_after": 2094.8,
    "duration": 0.600000000000364,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9576087005032,
        "lat": 47.0798569210318
      }
    },
    "start_at": "2019-03-28T10:15:23",
    "start_altitude": "290.693061454526",
    "start_after": 2049.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9577729746846,
        "lat": 47.0798927510665
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129745,
    "event_details": {
      "start_speed": 65.4602,
      "length": 90.8083,
      "end_speed": 57.341
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9579471035019,
        "lat": 47.0799238466348
      }
    },
    "end_at": "2019-03-28T10:15:24",
    "end_altitude": "290.476142803702",
    "end_after": 2050.6,
    "duration": 1.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9499725454663,
        "lat": 47.0788188219672
      }
    },
    "start_at": "2019-03-28T10:15:03",
    "start_altitude": "288.50582627357",
    "start_after": 2029.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9504075352757,
        "lat": 47.0788557464032
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129744,
    "event_details": {
      "start_speed": 134.0596,
      "length": 252.4925,
      "end_speed": 131.9216
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9508868279888,
        "lat": 47.0788963756375
      }
    },
    "end_at": "2019-03-28T10:15:05",
    "end_altitude": "288.982727321202",
    "end_after": 2031.3,
    "duration": 1.89999999999986,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9423561885367,
        "lat": 47.0787422507094
      }
    },
    "start_at": "2019-03-28T10:14:48",
    "start_altitude": "289.561769157502",
    "start_after": 2014.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9425561274572,
        "lat": 47.0787269633387
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129743,
    "event_details": {
      "start_speed": 137.501,
      "length": 123.3354,
      "end_speed": 137.0116
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9428031335655,
        "lat": 47.0787119880046
      }
    },
    "end_at": "2019-03-28T10:14:49",
    "end_altitude": "288.919300811571",
    "end_after": 2014.9,
    "duration": 0.900000000000091,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9202066201566,
        "lat": 47.0800862630203
      }
    },
    "start_at": "2019-03-28T10:14:04",
    "start_altitude": "298.590655957083",
    "start_after": 1969.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9203122960978,
        "lat": 47.080086263022
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129742,
    "event_details": {
      "start_speed": 136.9139,
      "length": 68.5926,
      "end_speed": 137.7274
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9204613808165,
        "lat": 47.0800862630353
      }
    },
    "end_at": "2019-03-28T10:14:04",
    "end_altitude": "298.400654259129",
    "end_after": 1970.2,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9167104452839,
        "lat": 47.0800475727807
      }
    },
    "start_at": "2019-03-28T10:13:56",
    "start_altitude": "297.936746344324",
    "start_after": 1962.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9169549181201,
        "lat": 47.0800535567154
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129741,
    "event_details": {
      "start_speed": 132.8335,
      "length": 159.7407,
      "end_speed": 133.8298
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9172942162014,
        "lat": 47.0800626908502
      }
    },
    "end_at": "2019-03-28T10:13:58",
    "end_altitude": "299.042579257794",
    "end_after": 1963.8,
    "duration": 1.20000000000005,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9142202619521,
        "lat": 47.0799570776731
      }
    },
    "start_at": "2019-03-28T10:13:51",
    "start_altitude": "297.700645828015",
    "start_after": 1957.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9144606515353,
        "lat": 47.0799621589058
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129740,
    "event_details": {
      "start_speed": 132.0066,
      "length": 158.3992,
      "end_speed": 131.9999
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9147997374889,
        "lat": 47.0799815350816
      }
    },
    "end_at": "2019-03-28T10:13:52",
    "end_altitude": "297.810664824427",
    "end_after": 1958.6,
    "duration": 1.19999999999982,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8936347810844,
        "lat": 47.0794771222396
      }
    },
    "start_at": "2019-03-28T10:13:09",
    "start_altitude": "309.7060772723",
    "start_after": 1915.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8937294842887,
        "lat": 47.0794692592599
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129739,
    "event_details": {
      "start_speed": 132.002,
      "length": 79.1994,
      "end_speed": 132.0115
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.893920599838,
        "lat": 47.079452711002
      }
    },
    "end_at": "2019-03-28T10:13:10",
    "end_altitude": "309.520890395067",
    "end_after": 1916.1,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8892730037747,
        "lat": 47.0800881630473
      }
    },
    "start_at": "2019-03-28T10:13:00",
    "start_altitude": "311.87614863628",
    "start_after": 1906.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8895082894657,
        "lat": 47.0800483099189
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129738,
    "event_details": {
      "start_speed": 134.0548,
      "length": 160.8205,
      "end_speed": 133.9991
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8898413432909,
        "lat": 47.0799912708675
      }
    },
    "end_at": "2019-03-28T10:13:01",
    "end_altitude": "311.707939728563",
    "end_after": 1907.6,
    "duration": 1.19999999999982,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8815008633082,
        "lat": 47.0823049213286
      }
    },
    "start_at": "2019-03-28T10:12:42",
    "start_altitude": "309.533343519775",
    "start_after": 1888.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8815822359349,
        "lat": 47.0822719967845
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129737,
    "event_details": {
      "start_speed": 128.9897,
      "length": 77.3859,
      "end_speed": 128.6702
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.881745107223,
        "lat": 47.0822097065915
      }
    },
    "end_at": "2019-03-28T10:12:43",
    "end_altitude": "309.191419565758",
    "end_after": 1889.2,
    "duration": 0.600000000000136,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.878557319012,
        "lat": 47.0835767859542
      }
    },
    "start_at": "2019-03-28T10:12:35",
    "start_altitude": "309.804298976633",
    "start_after": 1881.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8786367185498,
        "lat": 47.0835434420492
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129736,
    "event_details": {
      "start_speed": 131.0019,
      "length": 65.4987,
      "end_speed": 130.9982
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8787552905554,
        "lat": 47.0834842199145
      }
    },
    "end_at": "2019-03-28T10:12:36",
    "end_altitude": "309.792906151435",
    "end_after": 1881.8,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8774362756549,
        "lat": 47.08410738964
      }
    },
    "start_at": "2019-03-28T10:12:32",
    "start_altitude": "309.784563185093",
    "start_after": 1878.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8775150660186,
        "lat": 47.0840702452238
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129735,
    "event_details": {
      "start_speed": 131.099,
      "length": 65.5069,
      "end_speed": 130.9861
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8776306416287,
        "lat": 47.0840138930071
      }
    },
    "end_at": "2019-03-28T10:12:33",
    "end_altitude": "309.998631399922",
    "end_after": 1878.9,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8748788171177,
        "lat": 47.0853090230789
      }
    },
    "start_at": "2019-03-28T10:12:26",
    "start_altitude": "306.797036015385",
    "start_after": 1871.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8749560669904,
        "lat": 47.0852685400785
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129734,
    "event_details": {
      "start_speed": 131.0074,
      "length": 65.4963,
      "end_speed": 130.9618
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8750770087276,
        "lat": 47.0852167960691
      }
    },
    "end_at": "2019-03-28T10:12:26",
    "end_altitude": "307.009318390266",
    "end_after": 1872.4,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8674410554528,
        "lat": 47.087943180581
      }
    },
    "start_at": "2019-03-28T10:12:08",
    "start_altitude": "305.821395709404",
    "start_after": 1854.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8675320765669,
        "lat": 47.087926111153
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129733,
    "event_details": {
      "start_speed": 130.4011,
      "length": 65.164,
      "end_speed": 130.8228
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.86766773443,
        "lat": 47.0878893379326
      }
    },
    "end_at": "2019-03-28T10:12:09",
    "end_altitude": "305.651682211494",
    "end_after": 1854.8,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.859089976423,
        "lat": 47.0890555661173
      }
    },
    "start_at": "2019-03-28T10:11:50",
    "start_altitude": "308.07763080482",
    "start_after": 1836.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8591898247088,
        "lat": 47.0890474030269
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129732,
    "event_details": {
      "start_speed": 133.0286,
      "length": 79.8036,
      "end_speed": 132.9976
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8593830372736,
        "lat": 47.0890311494225
      }
    },
    "end_at": "2019-03-28T10:11:51",
    "end_altitude": "308.380068360519",
    "end_after": 1837.1,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8434474642482,
        "lat": 47.0902518560357
      }
    },
    "start_at": "2019-03-28T10:11:18",
    "start_altitude": "320.914637238647",
    "start_after": 1804.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.843545251608,
        "lat": 47.0902357458836
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129731,
    "event_details": {
      "start_speed": 135.8834,
      "length": 81.9119,
      "end_speed": 136.7844
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8437394149222,
        "lat": 47.0902192282831
      }
    },
    "end_at": "2019-03-28T10:11:19",
    "end_altitude": "320.619723051388",
    "end_after": 1805.1,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.841157972809,
        "lat": 47.0905323308471
      }
    },
    "start_at": "2019-03-28T10:11:14",
    "start_altitude": "321.501296409361",
    "start_after": 1799.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8416402079101,
        "lat": 47.0904652724203
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129730,
    "event_details": {
      "start_speed": 134.0856,
      "length": 283.3268,
      "end_speed": 134.9953
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.8421746535549,
        "lat": 47.0903985659857
      }
    },
    "end_at": "2019-03-28T10:11:16",
    "end_altitude": "322.009677531539",
    "end_after": 1801.9,
    "duration": 2.10000000000014,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.799145006171,
        "lat": 47.0993732205749
      }
    },
    "start_at": "2019-03-28T10:09:38",
    "start_altitude": "332.598583583557",
    "start_after": 1703.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7992356413704,
        "lat": 47.099370213232
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129729,
    "event_details": {
      "start_speed": 127.1275,
      "length": 63.4075,
      "end_speed": 126.2445
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7993742639662,
        "lat": 47.0993655373082
      }
    },
    "end_at": "2019-03-28T10:09:38",
    "end_altitude": "332.405324316843",
    "end_after": 1704.3,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7911700605582,
        "lat": 47.1002121653831
      }
    },
    "start_at": "2019-03-28T10:09:21",
    "start_altitude": "346.865470364847",
    "start_after": 1686.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7914982156844,
        "lat": 47.100164063774
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129728,
    "event_details": {
      "start_speed": 131.12,
      "length": 196.8807,
      "end_speed": 131.0051
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7918718588142,
        "lat": 47.1001073427513
      }
    },
    "end_at": "2019-03-28T10:09:22",
    "end_altitude": "344.926568317651",
    "end_after": 1688.3,
    "duration": 1.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7850765094018,
        "lat": 47.1015398261523
      }
    },
    "start_at": "2019-03-28T10:09:07",
    "start_altitude": "363.213363524072",
    "start_after": 1673.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7851680127735,
        "lat": 47.1015154159574
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129727,
    "event_details": {
      "start_speed": 133.0111,
      "length": 79.8167,
      "end_speed": 133.1023
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7853509837022,
        "lat": 47.10146662509
      }
    },
    "end_at": "2019-03-28T10:09:08",
    "end_altitude": "362.520421107376",
    "end_after": 1674.1,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7745083726228,
        "lat": 47.1046010291261
      }
    },
    "start_at": "2019-03-28T10:08:44",
    "start_altitude": "395.322271804176",
    "start_after": 1650.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7746022222064,
        "lat": 47.1045756847517
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129726,
    "event_details": {
      "start_speed": 136.0064,
      "length": 67.9977,
      "end_speed": 135.9633
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7747401248439,
        "lat": 47.1045294214489
      }
    },
    "end_at": "2019-03-28T10:08:45",
    "end_altitude": "394.811866551255",
    "end_after": 1651.0,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.773413779652,
        "lat": 47.1049340076186
      }
    },
    "start_at": "2019-03-28T10:08:42",
    "start_altitude": "395.599635629608",
    "start_after": 1648.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7735967946888,
        "lat": 47.1048764177952
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129725,
    "event_details": {
      "start_speed": 133.9994,
      "length": 120.8908,
      "end_speed": 135.1056
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7738236228975,
        "lat": 47.1048064128724
      }
    },
    "end_at": "2019-03-28T10:08:43",
    "end_altitude": "395.710796738745",
    "end_after": 1649.0,
    "duration": 0.900000000000091,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7712104652908,
        "lat": 47.1054210498711
      }
    },
    "start_at": "2019-03-28T10:08:37",
    "start_altitude": "393.899205811296",
    "start_after": 1643.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7713019526276,
        "lat": 47.1054042993346
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129724,
    "event_details": {
      "start_speed": 130.9994,
      "length": 65.7968,
      "end_speed": 132.1336
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7714415907645,
        "lat": 47.1053891590323
      }
    },
    "end_at": "2019-03-28T10:08:38",
    "end_altitude": "393.890968968972",
    "end_after": 1643.8,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7680050994789,
        "lat": 47.1056397387359
      }
    },
    "start_at": "2019-03-28T10:08:30",
    "start_altitude": "396.599882584696",
    "start_after": 1636.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7681012673391,
        "lat": 47.105639645547
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129723,
    "event_details": {
      "start_speed": 130.0001,
      "length": 65,
      "end_speed": 129.9999
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7682421206733,
        "lat": 47.1056404097443
      }
    },
    "end_at": "2019-03-28T10:08:31",
    "end_altitude": "396.606972402737",
    "end_after": 1637.0,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.765072387117,
        "lat": 47.1053703039968
      }
    },
    "start_at": "2019-03-28T10:08:24",
    "start_altitude": "399.70123992077",
    "start_after": 1630.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7651662937948,
        "lat": 47.105394962163
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129722,
    "event_details": {
      "start_speed": 131.0989,
      "length": 65.711,
      "end_speed": 131.9958
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7653054452433,
        "lat": 47.1054102233415
      }
    },
    "end_at": "2019-03-28T10:08:25",
    "end_altitude": "399.59664210265",
    "end_after": 1630.8,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7638581375092,
        "lat": 47.1051263112849
      }
    },
    "start_at": "2019-03-28T10:08:22",
    "start_altitude": "401.502084713503",
    "start_after": 1627.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7640897535169,
        "lat": 47.1051783969611
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129721,
    "event_details": {
      "start_speed": 132.7529,
      "length": 145.3106,
      "end_speed": 131.9999
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7643709713501,
        "lat": 47.1052410539966
      }
    },
    "end_at": "2019-03-28T10:08:23",
    "end_altitude": "400.73211868156",
    "end_after": 1628.8,
    "duration": 1.09999999999991,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7299336484988,
        "lat": 47.0921633084397
      }
    },
    "start_at": "2019-03-28T10:06:53",
    "start_altitude": "364.202227675883",
    "start_after": 1539.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7301216479725,
        "lat": 47.0921631012724
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129720,
    "event_details": {
      "start_speed": 130,
      "length": 130,
      "end_speed": 130
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.7304065876402,
        "lat": 47.0921630856053
      }
    },
    "end_at": "2019-03-28T10:06:54",
    "end_altitude": "364.797855983993",
    "end_after": 1540.2,
    "duration": 1.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6943733088438,
        "lat": 47.0998777675441
      }
    },
    "start_at": "2019-03-28T10:05:32",
    "start_altitude": "354.499922503323",
    "start_after": 1458.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6945200142881,
        "lat": 47.0998940988993
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129719,
    "event_details": {
      "start_speed": 132.9959,
      "length": 106.4017,
      "end_speed": 132.9704
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.694760102072,
        "lat": 47.0999186922267
      }
    },
    "end_at": "2019-03-28T10:05:33",
    "end_altitude": "354.399316405092",
    "end_after": 1459.1,
    "duration": 0.799999999999955,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6774747471013,
        "lat": 47.0920909367234
      }
    },
    "start_at": "2019-03-28T10:04:47",
    "start_altitude": "360.747016437347",
    "start_after": 1413.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6775558077486,
        "lat": 47.0921272614624
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129718,
    "event_details": {
      "start_speed": 132.0076,
      "length": 66.0051,
      "end_speed": 131.9928
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6776818792894,
        "lat": 47.0921813457355
      }
    },
    "end_at": "2019-03-28T10:04:48",
    "end_altitude": "360.391561194263",
    "end_after": 1413.7,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6703059814258,
        "lat": 47.0898605492264
      }
    },
    "start_at": "2019-03-28T10:04:31",
    "start_altitude": "370.589477261134",
    "start_after": 1397.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6703991805637,
        "lat": 47.0898770960589
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129717,
    "event_details": {
      "start_speed": 132.0179,
      "length": 66.3103,
      "end_speed": 133.0958
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6705367063945,
        "lat": 47.089909372834
      }
    },
    "end_at": "2019-03-28T10:04:31",
    "end_altitude": "370.11447703686",
    "end_after": 1397.6,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6600845111296,
        "lat": 47.0874441116946
      }
    },
    "start_at": "2019-03-28T10:04:09",
    "start_altitude": "382.998466018478",
    "start_after": 1374.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6602104154585,
        "lat": 47.0874852763146
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129716,
    "event_details": {
      "start_speed": 131.9905,
      "length": 92.4005,
      "end_speed": 131.9984
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6603830328744,
        "lat": 47.0875411446082
      }
    },
    "end_at": "2019-03-28T10:04:09",
    "end_altitude": "382.746888338232",
    "end_after": 1375.6,
    "duration": 0.699999999999818,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6564072127011,
        "lat": 47.0860619086148
      }
    },
    "start_at": "2019-03-28T10:04:00",
    "start_altitude": "385.803458250217",
    "start_after": 1366.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6566932159456,
        "lat": 47.0861833871808
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129715,
    "event_details": {
      "start_speed": 132.9975,
      "length": 212.8078,
      "end_speed": 132.8561
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6570659054161,
        "lat": 47.0863373108641
      }
    },
    "end_at": "2019-03-28T10:04:02",
    "end_altitude": "384.595954190266",
    "end_after": 1367.8,
    "duration": 1.59999999999991,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6528682307345,
        "lat": 47.0843572316245
      }
    },
    "start_at": "2019-03-28T10:03:51",
    "start_altitude": "390.225289414258",
    "start_after": 1357.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6530224456599,
        "lat": 47.0844386505981
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129714,
    "event_details": {
      "start_speed": 132,
      "length": 132,
      "end_speed": 132
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6532542104032,
        "lat": 47.084562557129
      }
    },
    "end_at": "2019-03-28T10:03:52",
    "end_altitude": "389.840152390996",
    "end_after": 1358.2,
    "duration": 1.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6447802639521,
        "lat": 47.0784616683725
      }
    },
    "start_at": "2019-03-28T10:03:27",
    "start_altitude": "398.099506791668",
    "start_after": 1332.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.64483491351,
        "lat": 47.0785182611929
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129713,
    "event_details": {
      "start_speed": 134,
      "length": 67,
      "end_speed": 134
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6449195861908,
        "lat": 47.0785993326491
      }
    },
    "end_at": "2019-03-28T10:03:27",
    "end_altitude": "398.000388620902",
    "end_after": 1333.4,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6219298690479,
        "lat": 47.0674213319599
      }
    },
    "start_at": "2019-03-28T10:02:25",
    "start_altitude": "439.480847622047",
    "start_after": 1271.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6223326720457,
        "lat": 47.0675309677458
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129712,
    "event_details": {
      "start_speed": 132,
      "length": 250.8,
      "end_speed": 132
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6227838212327,
        "lat": 47.0676449039429
      }
    },
    "end_at": "2019-03-28T10:02:27",
    "end_altitude": "437.179113669168",
    "end_after": 1273.3,
    "duration": 1.89999999999986,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6103069146109,
        "lat": 47.0637300675498
      }
    },
    "start_at": "2019-03-28T10:01:59",
    "start_altitude": "464.478765923893",
    "start_after": 1245.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6103995208481,
        "lat": 47.063746241705
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129711,
    "event_details": {
      "start_speed": 136.4106,
      "length": 68.0141,
      "end_speed": 135.9728
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6105446540123,
        "lat": 47.0637842098121
      }
    },
    "end_at": "2019-03-28T10:02:00",
    "end_altitude": "463.710498623734",
    "end_after": 1245.8,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6054375344253,
        "lat": 47.0628919505862
      }
    },
    "start_at": "2019-03-28T10:01:49",
    "start_altitude": "475.676732499637",
    "start_after": 1235.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.605720657467,
        "lat": 47.0629242841688
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129710,
    "event_details": {
      "start_speed": 131.0314,
      "length": 184.8078,
      "end_speed": 132.935
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6061026008132,
        "lat": 47.0629730745998
      }
    },
    "end_at": "2019-03-28T10:01:50",
    "end_altitude": "474.075633813103",
    "end_after": 1236.5,
    "duration": 1.40000000000009,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5958964759564,
        "lat": 47.061630766052
      }
    },
    "start_at": "2019-03-28T10:01:27",
    "start_altitude": "494.899849602372",
    "start_after": 1213.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.596069564028,
        "lat": 47.0616542760007
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129709,
    "event_details": {
      "start_speed": 121.1108,
      "length": 120.6053,
      "end_speed": 121.0475
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5963310742426,
        "lat": 47.0616869163161
      }
    },
    "end_at": "2019-03-28T10:01:28",
    "end_altitude": "494.785152122398",
    "end_after": 1214.5,
    "duration": 1.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5540950804895,
        "lat": 47.0600393847205
      }
    },
    "start_at": "2019-03-28T09:59:47",
    "start_altitude": "411.803601016206",
    "start_after": 1113.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5541664258551,
        "lat": 47.0600819362772
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129708,
    "event_details": {
      "start_speed": 124.0012,
      "length": 74.8065,
      "end_speed": 125.1256
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5543063041987,
        "lat": 47.0601630622086
      }
    },
    "end_at": "2019-03-28T09:59:48",
    "end_altitude": "411.895118173714",
    "end_after": 1114.1,
    "duration": 0.599999999999909,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4778458875207,
        "lat": 47.0334163603692
      }
    },
    "start_at": "2019-03-28T09:53:59",
    "start_altitude": "332.304347711108",
    "start_after": 765.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4777924729665,
        "lat": 47.0333924597429
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129707,
    "event_details": {
      "start_speed": 43.9931,
      "length": 43.0852,
      "end_speed": 41.9813
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4777169892579,
        "lat": 47.0333507272266
      }
    },
    "end_at": "2019-03-28T09:54:00",
    "end_altitude": "332.009430769429",
    "end_after": 766.0,
    "duration": 1.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4788181483203,
        "lat": 47.0339157742927
      }
    },
    "start_at": "2019-03-28T09:53:51",
    "start_altitude": "333.310479893098",
    "start_after": 757.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4787956081552,
        "lat": 47.0339093883225
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129706,
    "event_details": {
      "start_speed": 36.0061,
      "length": 22.0938,
      "end_speed": 37.989
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4787515344717,
        "lat": 47.033883292882
      }
    },
    "end_at": "2019-03-28T09:53:52",
    "end_altitude": "333.300293286935",
    "end_after": 758.1,
    "duration": 0.600000000000023,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4842847669565,
        "lat": 47.0467202661347
      }
    },
    "start_at": "2019-03-28T09:48:51",
    "start_altitude": "361.857622029553",
    "start_after": 456.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4843006497541,
        "lat": 47.0467087944911
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129705,
    "event_details": {
      "start_speed": 34.2171,
      "length": 16.9994,
      "end_speed": 33.9948
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.484327241905,
        "lat": 47.0466885324337
      }
    },
    "end_at": "2019-03-28T09:48:51",
    "end_altitude": "361.707552973121",
    "end_after": 457.4,
    "duration": 0.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4734804295756,
        "lat": 47.0550657507052
      }
    },
    "start_at": "2019-03-28T09:46:37",
    "start_altitude": "371.146256639625",
    "start_after": 322.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4734886344007,
        "lat": 47.0550573658692
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129704,
    "event_details": {
      "start_speed": 21.9009,
      "length": 13.441,
      "end_speed": 23.0486
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4735059823086,
        "lat": 47.0550372856735
      }
    },
    "end_at": "2019-03-28T09:46:37",
    "end_altitude": "371.096488159083",
    "end_after": 323.5,
    "duration": 0.600000000000023,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4714500385298,
        "lat": 47.0571977095959
      }
    },
    "start_at": "2019-03-28T09:45:46",
    "start_altitude": "370.243297748644",
    "start_after": 271.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.471498311458,
        "lat": 47.0571598705896
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129703,
    "event_details": {
      "start_speed": 39.0797,
      "length": 42.2885,
      "end_speed": 37.9733
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4715551407111,
        "lat": 47.0571192617907
      }
    },
    "end_at": "2019-03-28T09:45:47",
    "end_altitude": "370.100791646409",
    "end_after": 272.8,
    "duration": 1.10000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4706127929201,
        "lat": 47.0581986137098
      }
    },
    "start_at": "2019-03-28T09:45:33",
    "start_altitude": "370.258261645537",
    "start_after": 259.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4706590552652,
        "lat": 47.0581289293073
      }
    },
    "event_type": "POTHOLE",
    "event_id": 129702,
    "event_details": {
      "start_speed": 34,
      "length": 68.0004,
      "end_speed": 34.0003
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4707137890758,
        "lat": 47.0580482141946
      }
    },
    "end_at": "2019-03-28T09:45:35",
    "end_altitude": "370.346833905608",
    "end_after": 261.1,
    "duration": 2.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9621341212182,
        "lat": 47.0797464569268
      }
    },
    "start_at": "2019-03-28T10:15:58",
    "start_altitude": "296.171262278792",
    "start_after": 2083.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9621341212182,
        "lat": 47.0797464569268
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129701,
    "event_details": {
      "start_speed": 27.3138,
      "mean_speed_change": 3.558,
      "max_acc": 1.3368,
      "length": 65.0424,
      "end_speed": 34.7857,
      "altitude_diff": 0.0505
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9623111060284,
        "lat": 47.0796451975007
      }
    },
    "end_at": "2019-03-28T10:16:00",
    "end_altitude": "296.221769756647",
    "end_after": 2086.0,
    "duration": 2.09999999999991,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9617327842697,
        "lat": 47.0798916828861
      }
    },
    "start_at": "2019-03-28T10:15:51",
    "start_altitude": "293.902352499343",
    "start_after": 2077.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9617327842697,
        "lat": 47.0798916828861
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129700,
    "event_details": {
      "start_speed": 15.7323,
      "mean_speed_change": 3.3111,
      "max_acc": 2.0237,
      "length": 50.9438,
      "end_speed": 24.0099,
      "altitude_diff": 0.8819
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9618747981026,
        "lat": 47.0798845737123
      }
    },
    "end_at": "2019-03-28T10:15:54",
    "end_altitude": "294.784205826779",
    "end_after": 2080.1,
    "duration": 2.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5017569151183,
        "lat": 47.0269328343127
      }
    },
    "start_at": "2019-03-28T09:56:58",
    "start_altitude": "354.375239297871",
    "start_after": 944.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5017569151183,
        "lat": 47.0269328343127
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129699,
    "event_details": {
      "start_speed": 117.6367,
      "mean_speed_change": 2.4533,
      "max_acc": 1.6504,
      "length": 94.8996,
      "end_speed": 119.5993,
      "altitude_diff": 0.295
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.5019674532307,
        "lat": 47.0270969049783
      }
    },
    "end_at": "2019-03-28T09:56:59",
    "end_altitude": "354.670279463425",
    "end_after": 945.2,
    "duration": 0.800000000000068,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802511483938,
        "lat": 47.0301133511279
      }
    },
    "start_at": "2019-03-28T09:54:59",
    "start_altitude": "329.602369977299",
    "start_after": 825.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802511483938,
        "lat": 47.0301133511279
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129698,
    "event_details": {
      "start_speed": 88.7995,
      "mean_speed_change": 2.4856,
      "max_acc": 1.4436,
      "length": 239.2963,
      "end_speed": 95.2621,
      "altitude_diff": 0.1012
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4806842181763,
        "lat": 47.0296078702224
      }
    },
    "end_at": "2019-03-28T09:55:02",
    "end_altitude": "329.703595395895",
    "end_after": 828.0,
    "duration": 2.60000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4778396392999,
        "lat": 47.0320070729047
      }
    },
    "start_at": "2019-03-28T09:54:45",
    "start_altitude": "332.216768374153",
    "start_after": 810.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4778396392999,
        "lat": 47.0320070729047
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129697,
    "event_details": {
      "start_speed": 54.905,
      "mean_speed_change": 2.8056,
      "max_acc": 1.6491,
      "length": 840.9514,
      "end_speed": 88.0117,
      "altitude_diff": -2.3172
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4798281404615,
        "lat": 47.0306394436489
      }
    },
    "end_at": "2019-03-28T09:54:56",
    "end_altitude": "329.899557585622",
    "end_after": 822.6,
    "duration": 11.8000000000001,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4766251513117,
        "lat": 47.0324339990227
      }
    },
    "start_at": "2019-03-28T09:54:36",
    "start_altitude": "333.394523666449",
    "start_after": 801.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4766251513117,
        "lat": 47.0324339990227
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129696,
    "event_details": {
      "start_speed": 29.5329,
      "mean_speed_change": 3.3643,
      "max_acc": 2.1009,
      "length": 300.7131,
      "end_speed": 53.7561,
      "altitude_diff": -1.0053
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4775013298519,
        "lat": 47.0320447827533
      }
    },
    "end_at": "2019-03-28T09:54:43",
    "end_altitude": "332.389226445055",
    "end_after": 809.1,
    "duration": 7.20000000000005,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4764973538834,
        "lat": 47.0327657581213
      }
    },
    "start_at": "2019-03-28T09:54:30",
    "start_altitude": "332.381315824808",
    "start_after": 796.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4764973538834,
        "lat": 47.0327657581213
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129695,
    "event_details": {
      "start_speed": 14.2145,
      "mean_speed_change": 3.957,
      "max_acc": 2.3708,
      "length": 76.5793,
      "end_speed": 28.0639,
      "altitude_diff": 0.838
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4765280538314,
        "lat": 47.0325549938522
      }
    },
    "end_at": "2019-03-28T09:54:34",
    "end_altitude": "333.219358648915",
    "end_after": 800.1,
    "duration": 3.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4766355403405,
        "lat": 47.0328349121587
      }
    },
    "start_at": "2019-03-28T09:54:26",
    "start_altitude": "330.599783342487",
    "start_after": 792.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4766355403405,
        "lat": 47.0328349121587
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129694,
    "event_details": {
      "start_speed": 4.5452,
      "mean_speed_change": 3.0749,
      "max_acc": 2.5163,
      "length": 30.8822,
      "end_speed": 14.0773,
      "altitude_diff": 1.2832
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4765586499556,
        "lat": 47.0327967478332
      }
    },
    "end_at": "2019-03-28T09:54:29",
    "end_altitude": "331.882979989848",
    "end_after": 795.4,
    "duration": 3.10000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4788289344177,
        "lat": 47.0339221750603
      }
    },
    "start_at": "2019-03-28T09:53:51",
    "start_altitude": "333.284170933357",
    "start_after": 757.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4788289344177,
        "lat": 47.0339221750603
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129693,
    "event_details": {
      "start_speed": 35.7811,
      "mean_speed_change": 3.0387,
      "max_acc": 1.3233,
      "length": 143.9377,
      "end_speed": 46.4167,
      "altitude_diff": -0.4939
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4784162456995,
        "lat": 47.0337103637999
      }
    },
    "end_at": "2019-03-28T09:53:55",
    "end_altitude": "332.790241179111",
    "end_after": 760.9,
    "duration": 3.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.480234781901,
        "lat": 47.0346028645833
      }
    },
    "start_at": "2019-03-28T09:53:30",
    "start_altitude": "332.799987792969",
    "start_after": 736.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.480234781901,
        "lat": 47.0346028645833
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129692,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.4748,
      "max_acc": 2.1641,
      "length": 35.5038,
      "end_speed": 17.0043,
      "altitude_diff": -0.0007
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802293851357,
        "lat": 47.0346030140648
      }
    },
    "end_at": "2019-03-28T09:53:34",
    "end_altitude": "332.799330920434",
    "end_after": 740.2,
    "duration": 3.80000000000007,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4812927334045,
        "lat": 47.0351564888851
      }
    },
    "start_at": "2019-03-28T09:52:34",
    "start_altitude": "336.404759284316",
    "start_after": 680.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4812927334045,
        "lat": 47.0351564888851
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129691,
    "event_details": {
      "start_speed": 21.2573,
      "mean_speed_change": 3.562,
      "max_acc": 1.3645,
      "length": 74.034,
      "end_speed": 31.231,
      "altitude_diff": -0.4962
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4810821587475,
        "lat": 47.0350524625893
      }
    },
    "end_at": "2019-03-28T09:52:37",
    "end_altitude": "335.908517529556",
    "end_after": 682.8,
    "duration": 2.79999999999995,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4820102725854,
        "lat": 47.0354913051115
      }
    },
    "start_at": "2019-03-28T09:52:24",
    "start_altitude": "337.312022700277",
    "start_after": 670.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4820102725854,
        "lat": 47.0354913051115
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129690,
    "event_details": {
      "start_speed": 21.972,
      "mean_speed_change": 3.5697,
      "max_acc": 1.3993,
      "length": 34.4429,
      "end_speed": 26.9696,
      "altitude_diff": -0.2145
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4819175639317,
        "lat": 47.0354423165231
      }
    },
    "end_at": "2019-03-28T09:52:25",
    "end_altitude": "337.097478590147",
    "end_after": 671.4,
    "duration": 1.39999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4825073741131,
        "lat": 47.0357461706489
      }
    },
    "start_at": "2019-03-28T09:52:16",
    "start_altitude": "337.965976961177",
    "start_after": 661.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4825073741131,
        "lat": 47.0357461706489
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129689,
    "event_details": {
      "start_speed": 19.7121,
      "mean_speed_change": 2.6427,
      "max_acc": 1.137,
      "length": 18.8771,
      "end_speed": 22.0906,
      "altitude_diff": -0.1626
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4824579435449,
        "lat": 47.0357187427261
      }
    },
    "end_at": "2019-03-28T09:52:16",
    "end_altitude": "337.803416828721",
    "end_after": 662.6,
    "duration": 0.899999999999977,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827440059325,
        "lat": 47.0358723958334
      }
    },
    "start_at": "2019-03-28T09:52:09",
    "start_altitude": "338.307789038643",
    "start_after": 654.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827440059325,
        "lat": 47.0358723958334
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129688,
    "event_details": {
      "start_speed": 1.394,
      "mean_speed_change": 3.6433,
      "max_acc": 1.7596,
      "length": 28.1289,
      "end_speed": 14.1456,
      "altitude_diff": -0.0085
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4826900301768,
        "lat": 47.035841251585
      }
    },
    "end_at": "2019-03-28T09:52:12",
    "end_altitude": "338.299284505912",
    "end_after": 658.2,
    "duration": 3.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4847262761695,
        "lat": 47.0368175248659
      }
    },
    "start_at": "2019-03-28T09:51:35",
    "start_altitude": "345.899874156103",
    "start_after": 620.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4847262761695,
        "lat": 47.0368175248659
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129687,
    "event_details": {
      "start_speed": 17.1899,
      "mean_speed_change": 4.3552,
      "max_acc": 1.7461,
      "length": 136.4856,
      "end_speed": 38.0947,
      "altitude_diff": -0.7871
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.48434321819,
        "lat": 47.0366220582666
      }
    },
    "end_at": "2019-03-28T09:51:39",
    "end_altitude": "345.11272803208",
    "end_after": 625.6,
    "duration": 4.80000000000007,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848448023526,
        "lat": 47.0368977864584
      }
    },
    "start_at": "2019-03-28T09:51:30",
    "start_altitude": "346.1980064953",
    "start_after": 615.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848448023526,
        "lat": 47.0368977864584
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129686,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.4698,
      "max_acc": 2.2055,
      "length": 31.3302,
      "end_speed": 16.0913,
      "altitude_diff": -0.1899
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4848103956863,
        "lat": 47.0368710810125
      }
    },
    "end_at": "2019-03-28T09:51:33",
    "end_altitude": "346.008128288097",
    "end_after": 619.3,
    "duration": 3.59999999999991,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4881350958848,
        "lat": 47.0394951967146
      }
    },
    "start_at": "2019-03-28T09:50:54",
    "start_altitude": "354.199076605683",
    "start_after": 579.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4881350958848,
        "lat": 47.0394951967146
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129685,
    "event_details": {
      "start_speed": 36.9967,
      "mean_speed_change": 3.4487,
      "max_acc": 1.5613,
      "length": 282.0319,
      "end_speed": 57.3443,
      "altitude_diff": -0.6935
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4876791923998,
        "lat": 47.0388858166706
      }
    },
    "end_at": "2019-03-28T09:50:59",
    "end_altitude": "353.505558581207",
    "end_after": 585.6,
    "duration": 5.89999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883160601383,
        "lat": 47.039868830627
      }
    },
    "start_at": "2019-03-28T09:50:48",
    "start_altitude": "354.499999985184",
    "start_after": 574.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883160601383,
        "lat": 47.039868830627
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129684,
    "event_details": {
      "start_speed": 21.2927,
      "mean_speed_change": 4.0029,
      "max_acc": 1.602,
      "length": 95.9293,
      "end_speed": 34.9026,
      "altitude_diff": -0.1975
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4882248979612,
        "lat": 47.039657985697
      }
    },
    "end_at": "2019-03-28T09:50:51",
    "end_altitude": "354.302481488532",
    "end_after": 577.6,
    "duration": 3.39999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883443247521,
        "lat": 47.0400472007782
      }
    },
    "start_at": "2019-03-28T09:50:42",
    "start_altitude": "354.299987793283",
    "start_after": 568.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4883443247521,
        "lat": 47.0400472007782
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129683,
    "event_details": {
      "start_speed": 0.2216,
      "mean_speed_change": 4.4157,
      "max_acc": 2.2015,
      "length": 51.0237,
      "end_speed": 20.0925,
      "altitude_diff": 0.1995
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.488336375917,
        "lat": 47.039950794605
      }
    },
    "end_at": "2019-03-28T09:50:46",
    "end_altitude": "354.499536561193",
    "end_after": 572.6,
    "duration": 4.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.487656281813,
        "lat": 47.0434412285314
      }
    },
    "start_at": "2019-03-28T09:49:46",
    "start_altitude": "359.095897142863",
    "start_after": 512.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.487656281813,
        "lat": 47.0434412285314
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129682,
    "event_details": {
      "start_speed": 21.4727,
      "mean_speed_change": 3.9425,
      "max_acc": 1.4883,
      "length": 78.8567,
      "end_speed": 32.906,
      "altitude_diff": 0.5146
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4877527215709,
        "lat": 47.0432625379379
      }
    },
    "end_at": "2019-03-28T09:49:49",
    "end_altitude": "359.610505040706",
    "end_after": 515.3,
    "duration": 2.89999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.48747548215,
        "lat": 47.0436686197917
      }
    },
    "start_at": "2019-03-28T09:49:39",
    "start_altitude": "357.999904378124",
    "start_after": 504.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.48747548215,
        "lat": 47.0436686197917
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129681,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.1222,
      "max_acc": 2.7607,
      "length": 50.9784,
      "end_speed": 18.9622,
      "altitude_diff": 0.4012
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4875503980593,
        "lat": 47.0435877104573
      }
    },
    "end_at": "2019-03-28T09:49:43",
    "end_altitude": "358.401092084759",
    "end_after": 509.4,
    "duration": 4.59999999999997,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4847839806817,
        "lat": 47.0463981526334
      }
    },
    "start_at": "2019-03-28T09:48:56",
    "start_altitude": "360.086433358787",
    "start_after": 462.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4847839806817,
        "lat": 47.0463981526334
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129680,
    "event_details": {
      "start_speed": 34.6663,
      "mean_speed_change": 2.9877,
      "max_acc": 1.4701,
      "length": 158.6958,
      "end_speed": 46.3182,
      "altitude_diff": -0.7868
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4851754302157,
        "lat": 47.0461356545631
      }
    },
    "end_at": "2019-03-28T09:49:00",
    "end_altitude": "359.299680489298",
    "end_after": 466.4,
    "duration": 3.89999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4742144397666,
        "lat": 47.0542400844905
      }
    },
    "start_at": "2019-03-28T09:47:08",
    "start_altitude": "367.800060229486",
    "start_after": 353.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4742144397666,
        "lat": 47.0542400844905
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129679,
    "event_details": {
      "start_speed": 34.8657,
      "mean_speed_change": 3.5286,
      "max_acc": 1.4423,
      "length": 152.2865,
      "end_speed": 47.9216,
      "altitude_diff": -0.3001
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4745214678358,
        "lat": 47.0539399375657
      }
    },
    "end_at": "2019-03-28T09:47:11",
    "end_altitude": "367.500001977689",
    "end_after": 357.5,
    "duration": 3.69999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4739113456575,
        "lat": 47.0545616199058
      }
    },
    "start_at": "2019-03-28T09:47:02",
    "start_altitude": "368.787480819369",
    "start_after": 348.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4739113456575,
        "lat": 47.0545616199058
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129678,
    "event_details": {
      "start_speed": 16.1612,
      "mean_speed_change": 4.578,
      "max_acc": 2.2298,
      "length": 94.245,
      "end_speed": 33.0999,
      "altitude_diff": -0.7866
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4740659860126,
        "lat": 47.0543784169375
      }
    },
    "end_at": "2019-03-28T09:47:06",
    "end_altitude": "368.000900569131",
    "end_after": 351.8,
    "duration": 3.69999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738037147377,
        "lat": 47.054654967215
      }
    },
    "start_at": "2019-03-28T09:46:56",
    "start_altitude": "368.487887359793",
    "start_after": 342.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738037147377,
        "lat": 47.054654967215
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129677,
    "event_details": {
      "start_speed": 0.1938,
      "mean_speed_change": 4.4438,
      "max_acc": 2.4875,
      "length": 31.1586,
      "end_speed": 16.1915,
      "altitude_diff": 0.0487
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738398794585,
        "lat": 47.0546131653378
      }
    },
    "end_at": "2019-03-28T09:47:00",
    "end_altitude": "368.536549341922",
    "end_after": 346.1,
    "duration": 3.60000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4723166379922,
        "lat": 47.0563769546536
      }
    },
    "start_at": "2019-03-28T09:46:16",
    "start_altitude": "368.902535911744",
    "start_after": 301.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4723166379922,
        "lat": 47.0563769546536
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129676,
    "event_details": {
      "start_speed": 17.847,
      "mean_speed_change": 3.5455,
      "max_acc": 1.5556,
      "length": 111.4525,
      "end_speed": 33.0926,
      "altitude_diff": 1.8992
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4725323513529,
        "lat": 47.0563880580879
      }
    },
    "end_at": "2019-03-28T09:46:20",
    "end_altitude": "370.801773471143",
    "end_after": 306.2,
    "duration": 4.30000000000001,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.472147631636,
        "lat": 47.0565266843328
      }
    },
    "start_at": "2019-03-28T09:46:09",
    "start_altitude": "369.598661777491",
    "start_after": 295.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.472147631636,
        "lat": 47.0565266843328
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129675,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 3.8134,
      "max_acc": 2.2046,
      "length": 38.1233,
      "end_speed": 16.0164,
      "altitude_diff": -0.1979
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4722172926716,
        "lat": 47.0564448827169
      }
    },
    "end_at": "2019-03-28T09:46:14",
    "end_altitude": "369.400721358061",
    "end_after": 299.8,
    "duration": 4.19999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4693367818358,
        "lat": 47.0591552314183
      }
    },
    "start_at": "2019-03-28T09:45:14",
    "start_altitude": "366.70001218732",
    "start_after": 240.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4693367818358,
        "lat": 47.0591552314183
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129674,
    "event_details": {
      "start_speed": 15.5528,
      "mean_speed_change": 3.2379,
      "max_acc": 1.5958,
      "length": 112.6681,
      "end_speed": 31.0949,
      "altitude_diff": 1.7
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4696647690538,
        "lat": 47.0591378143367
      }
    },
    "end_at": "2019-03-28T09:45:19",
    "end_altitude": "368.399995672201",
    "end_after": 245.2,
    "duration": 4.79999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691142144582,
        "lat": 47.0591954071446
      }
    },
    "start_at": "2019-03-28T09:45:08",
    "start_altitude": "366.799987877596",
    "start_after": 234.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691142144582,
        "lat": 47.0591954071446
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129673,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 4.3086,
      "max_acc": 2.5756,
      "length": 22.3512,
      "end_speed": 13.3566,
      "altitude_diff": -0.2523
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691391984344,
        "lat": 47.0591548794252
      }
    },
    "end_at": "2019-03-28T09:45:11",
    "end_altitude": "366.547725968035",
    "end_after": 237.1,
    "duration": 3.09999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645761912195,
        "lat": 47.0599441762539
      }
    },
    "start_at": "2019-03-28T09:44:09",
    "start_altitude": "369.696604558125",
    "start_after": 175.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4645761912195,
        "lat": 47.0599441762539
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129672,
    "event_details": {
      "start_speed": 17.8966,
      "mean_speed_change": 3.358,
      "max_acc": 1.5291,
      "length": 51.1163,
      "end_speed": 25.62,
      "altitude_diff": -0.7952
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4647298302237,
        "lat": 47.0599067993331
      }
    },
    "end_at": "2019-03-28T09:44:12",
    "end_altitude": "368.901409631196",
    "end_after": 177.7,
    "duration": 2.29999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643676302866,
        "lat": 47.0599365058281
      }
    },
    "start_at": "2019-03-28T09:44:03",
    "start_altitude": "371.692812937652",
    "start_after": 168.8,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643676302866,
        "lat": 47.0599365058281
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129671,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 3.9464,
      "max_acc": 2.4034,
      "length": 41.7877,
      "end_speed": 16.9696,
      "altitude_diff": -1.3573
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.464450847077,
        "lat": 47.0599780549152
      }
    },
    "end_at": "2019-03-28T09:44:07",
    "end_altitude": "370.335544711405",
    "end_after": 173.1,
    "duration": 4.29999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4638875008582,
        "lat": 47.0597086580171
      }
    },
    "start_at": "2019-03-28T09:43:48",
    "start_altitude": "375.597708465826",
    "start_after": 154.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4638875008582,
        "lat": 47.0597086580171
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129670,
    "event_details": {
      "start_speed": 1.1967,
      "mean_speed_change": 3.7161,
      "max_acc": 2.1966,
      "length": 36.9813,
      "end_speed": 16.061,
      "altitude_diff": -0.9025
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.463955679899,
        "lat": 47.0597335970466
      }
    },
    "end_at": "2019-03-28T09:43:52",
    "end_altitude": "374.695246197071",
    "end_after": 158.2,
    "duration": 4.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4612702258003,
        "lat": 47.0585707047897
      }
    },
    "start_at": "2019-03-28T09:42:57",
    "start_altitude": "378.592223161106",
    "start_after": 103.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4612702258003,
        "lat": 47.0585707047897
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129669,
    "event_details": {
      "start_speed": 17.4374,
      "mean_speed_change": 2.4914,
      "max_acc": 1.2377,
      "length": 24.7799,
      "end_speed": 20.6762,
      "altitude_diff": -0.093
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.46134801545,
        "lat": 47.0586150868463
      }
    },
    "end_at": "2019-03-28T09:42:58",
    "end_altitude": "378.49919623352",
    "end_after": 104.5,
    "duration": 1.3,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4610860188802,
        "lat": 47.0584716796875
      }
    },
    "start_at": "2019-03-28T09:42:49",
    "start_altitude": "379.399947060349",
    "start_after": 95.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4610860188802,
        "lat": 47.0584716796875
      }
    },
    "event_type": "ACCELERATION",
    "event_id": 129668,
    "event_details": {
      "start_speed": 0,
      "mean_speed_change": 3.9423,
      "max_acc": 2.063,
      "length": 27.332,
      "end_speed": 14.1921,
      "altitude_diff": 0.0064
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4610886940406,
        "lat": 47.058472418227
      }
    },
    "end_at": "2019-03-28T09:42:53",
    "end_altitude": "379.406322668593",
    "end_after": 98.8,
    "duration": 3.59999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619630897938,
        "lat": 47.079696176027
      }
    },
    "start_at": "2019-03-28T10:16:36",
    "start_altitude": "303.738856205967",
    "start_after": 2122.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619630897938,
        "lat": 47.079696176027
      }
    },
    "event_type": "BRAKE",
    "event_id": 129667,
    "event_details": {
      "start_speed": 7.3349,
      "mean_speed_change": -4.89,
      "max_acc": -0.4481,
      "length": 4.3909,
      "end_speed": 0,
      "altitude_diff": -0.0333
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9619319039231,
        "lat": 47.0797042773418
      }
    },
    "end_at": "2019-03-28T10:16:38",
    "end_altitude": "303.705575409851",
    "end_after": 2123.8,
    "duration": 1.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9613519791627,
        "lat": 47.0796986656143
      }
    },
    "start_at": "2019-03-28T10:15:45",
    "start_altitude": "295.284270607642",
    "start_after": 2071.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9613519791627,
        "lat": 47.0796986656143
      }
    },
    "event_type": "BRAKE",
    "event_id": 129666,
    "event_details": {
      "start_speed": 32.3128,
      "mean_speed_change": -5.9534,
      "max_acc": -0.0101,
      "length": 58.5071,
      "end_speed": 18.0246,
      "altitude_diff": -0.6856
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9615339766104,
        "lat": 47.0798097601189
      }
    },
    "end_at": "2019-03-28T10:15:47",
    "end_altitude": "294.598684722231",
    "end_after": 2073.6,
    "duration": 2.40000000000009,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.957156751207,
        "lat": 47.0797726230925
      }
    },
    "start_at": "2019-03-28T10:15:21",
    "start_altitude": "290.399975866119",
    "start_after": 2047.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.957156751207,
        "lat": 47.0797726230925
      }
    },
    "event_type": "BRAKE",
    "event_id": 129665,
    "event_details": {
      "start_speed": 76.685,
      "mean_speed_change": -5.9349,
      "max_acc": 0.1353,
      "length": 218.1986,
      "end_speed": 57.0997,
      "altitude_diff": 0.0159
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9579669204656,
        "lat": 47.07992328901
      }
    },
    "end_at": "2019-03-28T10:15:25",
    "end_altitude": "290.415917553448",
    "end_after": 2050.7,
    "duration": 3.29999999999973,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9539544786799,
        "lat": 47.0792342900126
      }
    },
    "start_at": "2019-03-28T10:15:12",
    "start_altitude": "290.914072922012",
    "start_after": 2038.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9539544786799,
        "lat": 47.0792342900126
      }
    },
    "event_type": "BRAKE",
    "event_id": 129664,
    "event_details": {
      "start_speed": 119.8142,
      "mean_speed_change": -5.7566,
      "max_acc": -0.1592,
      "length": 653.3303,
      "end_speed": 82.3962,
      "altitude_diff": -0.033
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.9563463731775,
        "lat": 47.0796181450449
      }
    },
    "end_at": "2019-03-28T10:15:18",
    "end_altitude": "290.881118991459",
    "end_after": 2044.5,
    "duration": 6.5,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6813919117017,
        "lat": 47.0941852920241
      }
    },
    "start_at": "2019-03-28T10:04:57",
    "start_altitude": "355.04744137637",
    "start_after": 1423.6,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6813919117017,
        "lat": 47.0941852920241
      }
    },
    "event_type": "BRAKE",
    "event_id": 129663,
    "event_details": {
      "start_speed": 128.2214,
      "mean_speed_change": -5.0824,
      "max_acc": -0.3532,
      "length": 313.8093,
      "end_speed": 115.0071,
      "altitude_diff": -0.9894
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.6822259971131,
        "lat": 47.0947605410745
      }
    },
    "end_at": "2019-03-28T10:05:00",
    "end_altitude": "354.058028786317",
    "end_after": 1426.2,
    "duration": 2.60000000000014,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4774082199061,
        "lat": 47.033191543365
      }
    },
    "start_at": "2019-03-28T09:54:03",
    "start_altitude": "331.309393655105",
    "start_after": 768.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4774082199061,
        "lat": 47.033191543365
      }
    },
    "event_type": "BRAKE",
    "event_id": 129662,
    "event_details": {
      "start_speed": 38.1292,
      "mean_speed_change": -6.1778,
      "max_acc": -0.3001,
      "length": 96.9212,
      "end_speed": 14.6536,
      "altitude_diff": 0.101
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4770560233611,
        "lat": 47.033013753251
      }
    },
    "end_at": "2019-03-28T09:54:06",
    "end_altitude": "331.410412918456",
    "end_after": 772.5,
    "duration": 3.79999999999995,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4805798569953,
        "lat": 47.0347830142511
      }
    },
    "start_at": "2019-03-28T09:52:42",
    "start_altitude": "334.808049467977",
    "start_after": 688.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4805798569953,
        "lat": 47.0347830142511
      }
    },
    "event_type": "BRAKE",
    "event_id": 129661,
    "event_details": {
      "start_speed": 31.9293,
      "mean_speed_change": -6.4648,
      "max_acc": 0.1294,
      "length": 67.1277,
      "end_speed": 9.9491,
      "altitude_diff": -0.9025
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4802967379448,
        "lat": 47.0346523706597
      }
    },
    "end_at": "2019-03-28T09:52:45",
    "end_altitude": "333.905514814875",
    "end_after": 691.4,
    "duration": 3.39999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.483151215665,
        "lat": 47.036048038262
      }
    },
    "start_at": "2019-03-28T09:51:49",
    "start_altitude": "340.763911735667",
    "start_after": 635.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.483151215665,
        "lat": 47.036048038262
      }
    },
    "event_type": "BRAKE",
    "event_id": 129660,
    "event_details": {
      "start_speed": 38.8243,
      "mean_speed_change": -6.1726,
      "max_acc": -0.2482,
      "length": 109.2309,
      "end_speed": 8.5787,
      "altitude_diff": -1.7578
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4827845862953,
        "lat": 47.0358809533613
      }
    },
    "end_at": "2019-03-28T09:51:54",
    "end_altitude": "339.006074738538",
    "end_after": 640.2,
    "duration": 4.90000000000009,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4851870987369,
        "lat": 47.0370625712462
      }
    },
    "start_at": "2019-03-28T09:51:17",
    "start_altitude": "347.36186009426",
    "start_after": 603.5,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4851870987369,
        "lat": 47.0370625712462
      }
    },
    "event_type": "BRAKE",
    "event_id": 129659,
    "event_details": {
      "start_speed": 33.8874,
      "mean_speed_change": -5.4768,
      "max_acc": -0.2303,
      "length": 102.4917,
      "end_speed": 4.3126,
      "altitude_diff": -1.6676
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.484861550389,
        "lat": 47.0368980162393
      }
    },
    "end_at": "2019-03-28T09:51:23",
    "end_altitude": "345.694259672159",
    "end_after": 608.9,
    "duration": 5.39999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.485900029162,
        "lat": 47.0374373147601
      }
    },
    "start_at": "2019-03-28T09:51:12",
    "start_altitude": "349.512525003616",
    "start_after": 598.0,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.485900029162,
        "lat": 47.0374373147601
      }
    },
    "event_type": "BRAKE",
    "event_id": 129658,
    "event_details": {
      "start_speed": 56.4836,
      "mean_speed_change": -4.6365,
      "max_acc": -0.1985,
      "length": 194.5534,
      "end_speed": 37.0104,
      "altitude_diff": -2.0999
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4853210895408,
        "lat": 47.0371268140242
      }
    },
    "end_at": "2019-03-28T09:51:16",
    "end_altitude": "347.4126158324",
    "end_after": 602.2,
    "duration": 4.20000000000005,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4884110273344,
        "lat": 47.0400966212303
      }
    },
    "start_at": "2019-03-28T09:50:22",
    "start_altitude": "353.884705391974",
    "start_after": 548.2,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4884110273344,
        "lat": 47.0400966212303
      }
    },
    "event_type": "BRAKE",
    "event_id": 129657,
    "event_details": {
      "start_speed": 16.4091,
      "mean_speed_change": -5.1892,
      "max_acc": -0.4617,
      "length": 24.0261,
      "end_speed": 0.8415,
      "altitude_diff": -0.8877
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.488371041422,
        "lat": 47.0400146876795
      }
    },
    "end_at": "2019-03-28T09:50:25",
    "end_altitude": "352.997029528169",
    "end_after": 551.2,
    "duration": 3.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4884929596784,
        "lat": 47.0405040815608
      }
    },
    "start_at": "2019-03-28T09:50:16",
    "start_altitude": "355.649240127903",
    "start_after": 542.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4884929596784,
        "lat": 47.0405040815608
      }
    },
    "event_type": "BRAKE",
    "event_id": 129656,
    "event_details": {
      "start_speed": 39.0242,
      "mean_speed_change": -4.6831,
      "max_acc": -0.8425,
      "length": 124.1735,
      "end_speed": 18.8868,
      "altitude_diff": -1.1463
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4884339470263,
        "lat": 47.0401702535163
      }
    },
    "end_at": "2019-03-28T09:50:20",
    "end_altitude": "354.502974603013",
    "end_after": 546.4,
    "duration": 4.29999999999995,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4872878021004,
        "lat": 47.0438484355529
      }
    },
    "start_at": "2019-03-28T09:49:25",
    "start_altitude": "355.591558069293",
    "start_after": 491.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4872878021004,
        "lat": 47.0438484355529
      }
    },
    "event_type": "BRAKE",
    "event_id": 129655,
    "event_details": {
      "start_speed": 26.1014,
      "mean_speed_change": -5.3487,
      "max_acc": -0.1544,
      "length": 51.9521,
      "end_speed": 10.0552,
      "altitude_diff": -0.4919
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4874019728961,
        "lat": 47.0437259269713
      }
    },
    "end_at": "2019-03-28T09:49:28",
    "end_altitude": "355.099630112731",
    "end_after": 494.4,
    "duration": 3.0,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4756943048225,
        "lat": 47.0530677925483
      }
    },
    "start_at": "2019-03-28T09:47:21",
    "start_altitude": "365.397572975677",
    "start_after": 367.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4756943048225,
        "lat": 47.0530677925483
      }
    },
    "event_type": "BRAKE",
    "event_id": 129654,
    "event_details": {
      "start_speed": 44.8169,
      "mean_speed_change": -4.7945,
      "max_acc": -0.0082,
      "length": 85.26,
      "end_speed": 34.2689,
      "altitude_diff": -1.1968
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4759233244645,
        "lat": 47.0529136674391
      }
    },
    "end_at": "2019-03-28T09:47:23",
    "end_altitude": "364.200760567625",
    "end_after": 369.6,
    "duration": 2.20000000000005,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4737430990945,
        "lat": 47.0548173776497
      }
    },
    "start_at": "2019-03-28T09:46:42",
    "start_altitude": "369.697537287271",
    "start_after": 328.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4737430990945,
        "lat": 47.0548173776497
      }
    },
    "event_type": "BRAKE",
    "event_id": 129653,
    "event_details": {
      "start_speed": 18.3736,
      "mean_speed_change": -4.7027,
      "max_acc": -0.8441,
      "length": 36.2338,
      "end_speed": 0.0332,
      "altitude_diff": -0.5463
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4738238997241,
        "lat": 47.0547197707894
      }
    },
    "end_at": "2019-03-28T09:46:46",
    "end_altitude": "369.151202047052",
    "end_after": 332.3,
    "duration": 3.90000000000003,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4731029169199,
        "lat": 47.0554845323931
      }
    },
    "start_at": "2019-03-28T09:46:30",
    "start_altitude": "371.9990812205",
    "start_after": 315.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4731029169199,
        "lat": 47.0554845323931
      }
    },
    "event_type": "BRAKE",
    "event_id": 129652,
    "event_details": {
      "start_speed": 36.3851,
      "mean_speed_change": -5.183,
      "max_acc": 0.0858,
      "length": 70.2892,
      "end_speed": 23.946,
      "altitude_diff": -0.1528
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4732599021975,
        "lat": 47.0553100701475
      }
    },
    "end_at": "2019-03-28T09:46:32",
    "end_altitude": "371.846306079174",
    "end_after": 318.1,
    "duration": 2.40000000000003,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4721547991599,
        "lat": 47.0566123994647
      }
    },
    "start_at": "2019-03-28T09:45:56",
    "start_altitude": "370.28667295388",
    "start_after": 281.9,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4721547991599,
        "lat": 47.0566123994647
      }
    },
    "event_type": "BRAKE",
    "event_id": 129651,
    "event_details": {
      "start_speed": 14.6358,
      "mean_speed_change": -5.6291,
      "max_acc": -0.5474,
      "length": 17.8839,
      "end_speed": 0,
      "altitude_diff": 0.2662
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.47220477666,
        "lat": 47.0565511157339
      }
    },
    "end_at": "2019-03-28T09:45:58",
    "end_altitude": "370.552834223525",
    "end_after": 284.5,
    "duration": 2.60000000000002,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4718414209336,
        "lat": 47.0568966709073
      }
    },
    "start_at": "2019-03-28T09:45:50",
    "start_altitude": "369.79056463522",
    "start_after": 276.1,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4718414209336,
        "lat": 47.0568966709073
      }
    },
    "event_type": "BRAKE",
    "event_id": 129650,
    "event_details": {
      "start_speed": 31.5378,
      "mean_speed_change": -5.0141,
      "max_acc": -0.4043,
      "length": 58.817,
      "end_speed": 20.0054,
      "altitude_diff": -0.0906
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4720098253381,
        "lat": 47.0567538833868
      }
    },
    "end_at": "2019-03-28T09:45:52",
    "end_altitude": "369.700007149646",
    "end_after": 278.4,
    "duration": 2.29999999999995,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.468923148199,
        "lat": 47.0593096478428
      }
    },
    "start_at": "2019-03-28T09:44:51",
    "start_altitude": "367.299971796408",
    "start_after": 217.4,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.468923148199,
        "lat": 47.0593096478428
      }
    },
    "event_type": "BRAKE",
    "event_id": 129649,
    "event_details": {
      "start_speed": 26.3797,
      "mean_speed_change": -5.8902,
      "max_acc": -0.3408,
      "length": 53.7787,
      "end_speed": 4.5858,
      "altitude_diff": -0.0855
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4691668371201,
        "lat": 47.0592721319207
      }
    },
    "end_at": "2019-03-28T09:44:55",
    "end_altitude": "367.214476192962",
    "end_after": 221.1,
    "duration": 3.69999999999999,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643269588229,
        "lat": 47.0598926994444
      }
    },
    "start_at": "2019-03-28T09:44:00",
    "start_altitude": "372.336449770755",
    "start_after": 166.3,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643269588229,
        "lat": 47.0598926994444
      }
    },
    "event_type": "BRAKE",
    "event_id": 129648,
    "event_details": {
      "start_speed": 8.3634,
      "mean_speed_change": -5.1132,
      "max_acc": -0.5508,
      "length": 6.6538,
      "end_speed": 1.7163,
      "altitude_diff": -0.4381
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4643556252691,
        "lat": 47.0599208497244
      }
    },
    "end_at": "2019-03-28T09:44:01",
    "end_altitude": "371.898358418433",
    "end_after": 167.6,
    "duration": 1.29999999999998,
    "driver_id": 16
  },
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4636937077192,
        "lat": 47.0596189988519
      }
    },
    "start_at": "2019-03-28T09:43:35",
    "start_altitude": "378.230123834811",
    "start_after": 140.7,
    "marker_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4636937077192,
        "lat": 47.0596189988519
      }
    },
    "event_type": "BRAKE",
    "event_id": 129647,
    "event_details": {
      "start_speed": 14.6509,
      "mean_speed_change": -4.8818,
      "max_acc": -0.801,
      "length": 15.6431,
      "end_speed": 7.8163,
      "altitude_diff": -0.6639
    },
    "end_position": {
      "srid": 4326,
      "properties": {},
      "coordinates": {
        "lon": 15.4637687240995,
        "lat": 47.0596647474896
      }
    },
    "end_at": "2019-03-28T09:43:36",
    "end_altitude": "377.566270880179",
    "end_after": 142.1,
    "duration": 1.40000000000001,
    "driver_id": 16
  }
]
```

## AegisApiWeb.RankingInfoController
### <a id=aegisapiweb-rankinginfocontroller-index></a>index
#### List all rankings for all drivers
##### Request
* __Method:__ GET
* __Path:__ /api/v1/rankings
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU1NzkwMjY5NSwiaWF0IjoxNTU1NDgzNDk1LCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6ImZmMWY0OGIxLWZkNWItNDdmNy05N2NjLWI1M2I2ZjIzZmIxNyIsIm5iZiI6MTU1NTQ4MzQ5NCwic3ViIjoiMTYiLCJ0eXAiOiJhY2Nlc3MifQ.06ciJXu4HT_9z1mWcOssVyInozrKbCftO8OWlShZjdQDA_-DCzl4GzJidQ9XymUTIK09A3EAKr9-MiDJWrjPyA
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2mb2vvsgu65o0m0tmk001552
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "driving_time": "877",
    "driving_distance": "811",
    "driver_score": "46.74",
    "driver_id": 1
  },
  {
    "driving_time": "784",
    "driving_distance": "439",
    "driver_score": "31.22",
    "driver_id": 3
  },
  {
    "driving_time": "826",
    "driving_distance": "774",
    "driver_score": "55.18",
    "driver_id": 5
  },
  {
    "driving_time": "940",
    "driving_distance": "911",
    "driver_score": "46.50",
    "driver_id": 12
  },
  {
    "driving_time": "735",
    "driving_distance": "1078",
    "driver_score": "69.50",
    "driver_id": 13
  },
  {
    "driving_time": "528",
    "driving_distance": "650",
    "driver_score": "67.30",
    "driver_id": 14
  },
  {
    "driving_time": "39",
    "driving_distance": "48",
    "driver_score": "75.00",
    "driver_id": 16
  }
]
```

## AegisApiWeb.TripController
### <a id=aegisapiweb-tripcontroller-index></a>index
#### List all trips for existing driver
##### Request
* __Method:__ GET
* __Path:__ /api/v1/trips
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU1NzkwMjY5MiwiaWF0IjoxNTU1NDgzNDkyLCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6ImQ1YTM0OWU4LWMwZTAtNGMwZS05MjdjLTM5M2MzMjI5MDlmNCIsIm5iZiI6MTU1NTQ4MzQ5MSwic3ViIjoiMTYiLCJ0eXAiOiJhY2Nlc3MifQ._EEoopisIKaqRavegPlei2eUpXGH6Hx4Wg4nGsQWTwBGCbfXSu20ROIapyAk3Tuvz54Htl6b9YZFwTtIbrh16w
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2mb2vvlrlmcg15c138001n81
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position_name": "Inffeldgasse, 8010, Graz, Austria",
    "start_at": "2019-03-28T09:41:14",
    "standstills": 11,
    "risk_score": 75,
    "map_visible": false,
    "gps_track": {
      "srid": 4326,
      "properties": {},
      "coordinates": [
        {
          "lon": 15.461057917125,
          "lat": 47.0584879549502
        },
        {
          "lon": 15.464426375825,
          "lat": 47.0599779078703
        },
        {
          "lon": 15.4659807360037,
          "lat": 47.0595780039366
        },
        {
          "lon": 15.4680700729041,
          "lat": 47.0594884574984
        },
        {
          "lon": 15.4696568268852,
          "lat": 47.0591432335885
        },
        {
          "lon": 15.4702341571973,
          "lat": 47.0586823900896
        },
        {
          "lon": 15.4712092859557,
          "lat": 47.0574127859592
        },
        {
          "lon": 15.472171497616,
          "lat": 47.0564803434558
        },
        {
          "lon": 15.4724528858407,
          "lat": 47.0562462497126
        },
        {
          "lon": 15.4725061337015,
          "lat": 47.0564204727895
        },
        {
          "lon": 15.4730961068269,
          "lat": 47.0554926228665
        },
        {
          "lon": 15.4745619226013,
          "lat": 47.0538972698849
        },
        {
          "lon": 15.4773287941585,
          "lat": 47.0517338004786
        },
        {
          "lon": 15.4828770753434,
          "lat": 47.0483159213138
        },
        {
          "lon": 15.4841586850978,
          "lat": 47.0468184746095
        },
        {
          "lon": 15.4858510459312,
          "lat": 47.0456146936328
        },
        {
          "lon": 15.4876702931149,
          "lat": 47.0434253590478
        },
        {
          "lon": 15.4879973310731,
          "lat": 47.0427791284493
        },
        {
          "lon": 15.4884908821349,
          "lat": 47.040431366008
        },
        {
          "lon": 15.4881418351965,
          "lat": 47.0395033751178
        },
        {
          "lon": 15.4873525106712,
          "lat": 47.0385394720171
        },
        {
          "lon": 15.4855418364178,
          "lat": 47.0372328530006
        },
        {
          "lon": 15.4764789933596,
          "lat": 47.0326921123986
        },
        {
          "lon": 15.4770290474864,
          "lat": 47.0321722296773
        },
        {
          "lon": 15.4784887720036,
          "lat": 47.0318566785697
        },
        {
          "lon": 15.4791954437838,
          "lat": 47.0313965276074
        },
        {
          "lon": 15.4840474191322,
          "lat": 47.0253202169144
        },
        {
          "lon": 15.4852418000539,
          "lat": 47.0229291847925
        },
        {
          "lon": 15.485777905762,
          "lat": 47.0194859503241
        },
        {
          "lon": 15.4862758134451,
          "lat": 47.0184404513722
        },
        {
          "lon": 15.4873696204427,
          "lat": 47.0177524905427
        },
        {
          "lon": 15.4887431728556,
          "lat": 47.0175364973552
        },
        {
          "lon": 15.4900347315255,
          "lat": 47.0177927999812
        },
        {
          "lon": 15.4908497940371,
          "lat": 47.0182603735806
        },
        {
          "lon": 15.4914597007342,
          "lat": 47.0188223494357
        },
        {
          "lon": 15.4928080195407,
          "lat": 47.0208638084238
        },
        {
          "lon": 15.4935252666978,
          "lat": 47.0215824553848
        },
        {
          "lon": 15.4991307293259,
          "lat": 47.0249981496627
        },
        {
          "lon": 15.5026376956084,
          "lat": 47.0276399625151
        },
        {
          "lon": 15.5057206092755,
          "lat": 47.0308466259732
        },
        {
          "lon": 15.5096838144033,
          "lat": 47.0363714724949
        },
        {
          "lon": 15.5111992001893,
          "lat": 47.0377955559908
        },
        {
          "lon": 15.5128440576694,
          "lat": 47.038997617443
        },
        {
          "lon": 15.5151017727651,
          "lat": 47.04029087839
        },
        {
          "lon": 15.5176557413039,
          "lat": 47.0413475342997
        },
        {
          "lon": 15.5201462058053,
          "lat": 47.0420290719912
        },
        {
          "lon": 15.5254468004754,
          "lat": 47.0429715338436
        },
        {
          "lon": 15.5274610440411,
          "lat": 47.0434819976638
        },
        {
          "lon": 15.5299238706343,
          "lat": 47.0444873635232
        },
        {
          "lon": 15.5314908482981,
          "lat": 47.0454114528673
        },
        {
          "lon": 15.5328870923381,
          "lat": 47.0466062214073
        },
        {
          "lon": 15.5338952269434,
          "lat": 47.0478119882356
        },
        {
          "lon": 15.5357246822636,
          "lat": 47.0517953179758
        },
        {
          "lon": 15.5368957374473,
          "lat": 47.0534112670991
        },
        {
          "lon": 15.5388127651851,
          "lat": 47.0550304113512
        },
        {
          "lon": 15.5412100112047,
          "lat": 47.0563219697215
        },
        {
          "lon": 15.5435077188272,
          "lat": 47.0570597646521
        },
        {
          "lon": 15.5487735894774,
          "lat": 47.0580098924726
        },
        {
          "lon": 15.5509557540446,
          "lat": 47.0585851470921
        },
        {
          "lon": 15.553170489035,
          "lat": 47.0595445191871
        },
        {
          "lon": 15.5571112193411,
          "lat": 47.0616272412468
        },
        {
          "lon": 15.5605952320532,
          "lat": 47.0625934201617
        },
        {
          "lon": 15.5635218695741,
          "lat": 47.0627355508829
        },
        {
          "lon": 15.5705887030258,
          "lat": 47.062557678858
        },
        {
          "lon": 15.5767902790563,
          "lat": 47.0638053972783
        },
        {
          "lon": 15.5797516184391,
          "lat": 47.063998244855
        },
        {
          "lon": 15.5835301962289,
          "lat": 47.0635975523995
        },
        {
          "lon": 15.5885133499001,
          "lat": 47.0620609666244
        },
        {
          "lon": 15.5904765109689,
          "lat": 47.0616587767683
        },
        {
          "lon": 15.5930118294963,
          "lat": 47.0614495865506
        },
        {
          "lon": 15.5952498082009,
          "lat": 47.0615519326381
        },
        {
          "lon": 15.6008891959064,
          "lat": 47.0624766445453
        },
        {
          "lon": 15.6063934920318,
          "lat": 47.0630056235136
        },
        {
          "lon": 15.6098433982062,
          "lat": 47.0636166548931
        },
        {
          "lon": 15.6128842121861,
          "lat": 47.0644395585447
        },
        {
          "lon": 15.6191448175772,
          "lat": 47.0665967083829
        },
        {
          "lon": 15.6226471044988,
          "lat": 47.0676176602334
        },
        {
          "lon": 15.6334363755671,
          "lat": 47.0698580844477
        },
        {
          "lon": 15.6364888519884,
          "lat": 47.0709580536645
        },
        {
          "lon": 15.6390303770068,
          "lat": 47.0724398074535
        },
        {
          "lon": 15.640918579988,
          "lat": 47.0741280821216
        },
        {
          "lon": 15.6446425805645,
          "lat": 47.078327974244
        },
        {
          "lon": 15.6469673436266,
          "lat": 47.0804385989004
        },
        {
          "lon": 15.6501296638875,
          "lat": 47.0827495205475
        },
        {
          "lon": 15.6541777108996,
          "lat": 47.0850337464179
        },
        {
          "lon": 15.6573970871633,
          "lat": 47.086476642443
        },
        {
          "lon": 15.6619210338083,
          "lat": 47.0880312772709
        },
        {
          "lon": 15.6651282125863,
          "lat": 47.0888358293304
        },
        {
          "lon": 15.6719660414114,
          "lat": 47.0902269877615
        },
        {
          "lon": 15.6752803754782,
          "lat": 47.0912030556455
        },
        {
          "lon": 15.6799203427253,
          "lat": 47.0932704270112
        },
        {
          "lon": 15.6818869765941,
          "lat": 47.0945165903514
        },
        {
          "lon": 15.6847130228209,
          "lat": 47.0966123217127
        },
        {
          "lon": 15.6870447856639,
          "lat": 47.097925062799
        },
        {
          "lon": 15.6902866001345,
          "lat": 47.0990689126842
        },
        {
          "lon": 15.6941859164212,
          "lat": 47.0998535725057
        },
        {
          "lon": 15.6979681854995,
          "lat": 47.1000243989316
        },
        {
          "lon": 15.7006872805948,
          "lat": 47.0997966068431
        },
        {
          "lon": 15.7030627611898,
          "lat": 47.0993654881513
        },
        {
          "lon": 15.706373746659,
          "lat": 47.0983718062811
        },
        {
          "lon": 15.7170875958291,
          "lat": 47.0943922453237
        },
        {
          "lon": 15.7203286782242,
          "lat": 47.0934361687927
        },
        {
          "lon": 15.7235326247672,
          "lat": 47.092724262128
        },
        {
          "lon": 15.7281781380502,
          "lat": 47.0922119584198
        },
        {
          "lon": 15.7335302418881,
          "lat": 47.0922557635258
        },
        {
          "lon": 15.7369122355541,
          "lat": 47.0926348699813
        },
        {
          "lon": 15.7395732669587,
          "lat": 47.0931467192452
        },
        {
          "lon": 15.7432595489195,
          "lat": 47.0941268649658
        },
        {
          "lon": 15.745636557756,
          "lat": 47.0950093976984
        },
        {
          "lon": 15.7499045771298,
          "lat": 47.0971868151118
        },
        {
          "lon": 15.7592509737428,
          "lat": 47.1032415210396
        },
        {
          "lon": 15.7609044282245,
          "lat": 47.1041563606336
        },
        {
          "lon": 15.7622261828665,
          "lat": 47.1046857928769
        },
        {
          "lon": 15.7661011732952,
          "lat": 47.1055248023659
        },
        {
          "lon": 15.7697555837179,
          "lat": 47.1055800175317
        },
        {
          "lon": 15.7727293424868,
          "lat": 47.1051174736639
        },
        {
          "lon": 15.786791421981,
          "lat": 47.1010919441506
        },
        {
          "lon": 15.7920602653345,
          "lat": 47.100074140548
        },
        {
          "lon": 15.7959599834117,
          "lat": 47.0996050961904
        },
        {
          "lon": 15.7999319537208,
          "lat": 47.0993329155937
        },
        {
          "lon": 15.8131315055622,
          "lat": 47.0990778983817
        },
        {
          "lon": 15.8170037579126,
          "lat": 47.0985133258694
        },
        {
          "lon": 15.8210073152614,
          "lat": 47.0973600465732
        },
        {
          "lon": 15.8344972640949,
          "lat": 47.0921666843868
        },
        {
          "lon": 15.8376465675142,
          "lat": 47.0912213579038
        },
        {
          "lon": 15.8402914862728,
          "lat": 47.0906588249579
        },
        {
          "lon": 15.845073690216,
          "lat": 47.0900922095646
        },
        {
          "lon": 15.8617934961387,
          "lat": 47.08883602956
        },
        {
          "lon": 15.8669951154297,
          "lat": 47.0880484294734
        },
        {
          "lon": 15.8696681907026,
          "lat": 47.087366055188
        },
        {
          "lon": 15.8722358652745,
          "lat": 47.0864717922258
        },
        {
          "lon": 15.8797909641407,
          "lat": 47.0830197267614
        },
        {
          "lon": 15.8832238823802,
          "lat": 47.0816723984824
        },
        {
          "lon": 15.8873624282316,
          "lat": 47.0804888902361
        },
        {
          "lon": 15.8915205761706,
          "lat": 47.0797298688441
        },
        {
          "lon": 15.8941112396202,
          "lat": 47.0794290065214
        },
        {
          "lon": 15.8970054431921,
          "lat": 47.0793054849721
        },
        {
          "lon": 15.9164212194911,
          "lat": 47.0800464370967
        },
        {
          "lon": 15.922224945025,
          "lat": 47.0800788753363
        },
        {
          "lon": 15.9306353586457,
          "lat": 47.0796940514428
        },
        {
          "lon": 15.9422056722274,
          "lat": 47.0787447528668
        },
        {
          "lon": 15.946185108384,
          "lat": 47.0786450932052
        },
        {
          "lon": 15.9523040822323,
          "lat": 47.0790096511446
        },
        {
          "lon": 15.9585608148188,
          "lat": 47.0799568732212
        },
        {
          "lon": 15.9605860886087,
          "lat": 47.0794989981488
        },
        {
          "lon": 15.9618635352176,
          "lat": 47.0798918129735
        },
        {
          "lon": 15.9629916588632,
          "lat": 47.0792372604646
        },
        {
          "lon": 15.9630885115317,
          "lat": 47.0790246716026
        },
        {
          "lon": 15.9628349197692,
          "lat": 47.0790051618841
        },
        {
          "lon": 15.9626712904235,
          "lat": 47.0793442889594
        },
        {
          "lon": 15.9619567871093,
          "lat": 47.0796630859375
        }
      ]
    },
    "end_position_name": "Fürstenfelder Bundesstraße, 8263, Großwilfersdorf, Austria",
    "end_at": "2019-03-28T10:20:03",
    "duration": "39",
    "driver_id": 16,
    "distance": "48",
    "brakes": 21,
    "beagle_id": 8,
    "accelerations": 34
  }
]
```

#### List all trips for existing driver
##### Request
* __Method:__ GET
* __Path:__ /api/v1/trips
* __Request headers:__
```
authorization: Bearer eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJBZWdpc0FwaSIsImV4cCI6MTU1NzkwMjY4NywiaWF0IjoxNTU1NDgzNDg3LCJpc3MiOiJBZWdpc0FwaSIsImp0aSI6ImZlYmUxYjFhLTU1MmYtNDY0YS1iNWJhLWFjYWMwZWQ2ZjZjNyIsIm5iZiI6MTU1NTQ4MzQ4Niwic3ViIjoiMTYiLCJ0eXAiOiJhY2Nlc3MifQ.uAitmxGV0J0x01DUZQsFp3wBs9hRhTaU2e8upoH8D4GkT-ASCQ2VDFB__AGohLem8HePknyTEXpuXMu56CCl2A
```

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2mb2vvin231g01mlq4001n51
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "vehicle_id": 2,
    "trip_id": "1b0db343-364a-405d-b73d-e3e195e1b92c",
    "start_position_name": "Inffeldgasse, 8010, Graz, Austria",
    "start_at": "2019-03-28T09:41:14",
    "standstills": 11,
    "risk_score": 75,
    "map_visible": false,
    "gps_track": {
      "srid": 4326,
      "properties": {},
      "coordinates": [
        {
          "lon": 15.461057917125,
          "lat": 47.0584879549502
        },
        {
          "lon": 15.464426375825,
          "lat": 47.0599779078703
        },
        {
          "lon": 15.4659807360037,
          "lat": 47.0595780039366
        },
        {
          "lon": 15.4680700729041,
          "lat": 47.0594884574984
        },
        {
          "lon": 15.4696568268852,
          "lat": 47.0591432335885
        },
        {
          "lon": 15.4702341571973,
          "lat": 47.0586823900896
        },
        {
          "lon": 15.4712092859557,
          "lat": 47.0574127859592
        },
        {
          "lon": 15.472171497616,
          "lat": 47.0564803434558
        },
        {
          "lon": 15.4724528858407,
          "lat": 47.0562462497126
        },
        {
          "lon": 15.4725061337015,
          "lat": 47.0564204727895
        },
        {
          "lon": 15.4730961068269,
          "lat": 47.0554926228665
        },
        {
          "lon": 15.4745619226013,
          "lat": 47.0538972698849
        },
        {
          "lon": 15.4773287941585,
          "lat": 47.0517338004786
        },
        {
          "lon": 15.4828770753434,
          "lat": 47.0483159213138
        },
        {
          "lon": 15.4841586850978,
          "lat": 47.0468184746095
        },
        {
          "lon": 15.4858510459312,
          "lat": 47.0456146936328
        },
        {
          "lon": 15.4876702931149,
          "lat": 47.0434253590478
        },
        {
          "lon": 15.4879973310731,
          "lat": 47.0427791284493
        },
        {
          "lon": 15.4884908821349,
          "lat": 47.040431366008
        },
        {
          "lon": 15.4881418351965,
          "lat": 47.0395033751178
        },
        {
          "lon": 15.4873525106712,
          "lat": 47.0385394720171
        },
        {
          "lon": 15.4855418364178,
          "lat": 47.0372328530006
        },
        {
          "lon": 15.4764789933596,
          "lat": 47.0326921123986
        },
        {
          "lon": 15.4770290474864,
          "lat": 47.0321722296773
        },
        {
          "lon": 15.4784887720036,
          "lat": 47.0318566785697
        },
        {
          "lon": 15.4791954437838,
          "lat": 47.0313965276074
        },
        {
          "lon": 15.4840474191322,
          "lat": 47.0253202169144
        },
        {
          "lon": 15.4852418000539,
          "lat": 47.0229291847925
        },
        {
          "lon": 15.485777905762,
          "lat": 47.0194859503241
        },
        {
          "lon": 15.4862758134451,
          "lat": 47.0184404513722
        },
        {
          "lon": 15.4873696204427,
          "lat": 47.0177524905427
        },
        {
          "lon": 15.4887431728556,
          "lat": 47.0175364973552
        },
        {
          "lon": 15.4900347315255,
          "lat": 47.0177927999812
        },
        {
          "lon": 15.4908497940371,
          "lat": 47.0182603735806
        },
        {
          "lon": 15.4914597007342,
          "lat": 47.0188223494357
        },
        {
          "lon": 15.4928080195407,
          "lat": 47.0208638084238
        },
        {
          "lon": 15.4935252666978,
          "lat": 47.0215824553848
        },
        {
          "lon": 15.4991307293259,
          "lat": 47.0249981496627
        },
        {
          "lon": 15.5026376956084,
          "lat": 47.0276399625151
        },
        {
          "lon": 15.5057206092755,
          "lat": 47.0308466259732
        },
        {
          "lon": 15.5096838144033,
          "lat": 47.0363714724949
        },
        {
          "lon": 15.5111992001893,
          "lat": 47.0377955559908
        },
        {
          "lon": 15.5128440576694,
          "lat": 47.038997617443
        },
        {
          "lon": 15.5151017727651,
          "lat": 47.04029087839
        },
        {
          "lon": 15.5176557413039,
          "lat": 47.0413475342997
        },
        {
          "lon": 15.5201462058053,
          "lat": 47.0420290719912
        },
        {
          "lon": 15.5254468004754,
          "lat": 47.0429715338436
        },
        {
          "lon": 15.5274610440411,
          "lat": 47.0434819976638
        },
        {
          "lon": 15.5299238706343,
          "lat": 47.0444873635232
        },
        {
          "lon": 15.5314908482981,
          "lat": 47.0454114528673
        },
        {
          "lon": 15.5328870923381,
          "lat": 47.0466062214073
        },
        {
          "lon": 15.5338952269434,
          "lat": 47.0478119882356
        },
        {
          "lon": 15.5357246822636,
          "lat": 47.0517953179758
        },
        {
          "lon": 15.5368957374473,
          "lat": 47.0534112670991
        },
        {
          "lon": 15.5388127651851,
          "lat": 47.0550304113512
        },
        {
          "lon": 15.5412100112047,
          "lat": 47.0563219697215
        },
        {
          "lon": 15.5435077188272,
          "lat": 47.0570597646521
        },
        {
          "lon": 15.5487735894774,
          "lat": 47.0580098924726
        },
        {
          "lon": 15.5509557540446,
          "lat": 47.0585851470921
        },
        {
          "lon": 15.553170489035,
          "lat": 47.0595445191871
        },
        {
          "lon": 15.5571112193411,
          "lat": 47.0616272412468
        },
        {
          "lon": 15.5605952320532,
          "lat": 47.0625934201617
        },
        {
          "lon": 15.5635218695741,
          "lat": 47.0627355508829
        },
        {
          "lon": 15.5705887030258,
          "lat": 47.062557678858
        },
        {
          "lon": 15.5767902790563,
          "lat": 47.0638053972783
        },
        {
          "lon": 15.5797516184391,
          "lat": 47.063998244855
        },
        {
          "lon": 15.5835301962289,
          "lat": 47.0635975523995
        },
        {
          "lon": 15.5885133499001,
          "lat": 47.0620609666244
        },
        {
          "lon": 15.5904765109689,
          "lat": 47.0616587767683
        },
        {
          "lon": 15.5930118294963,
          "lat": 47.0614495865506
        },
        {
          "lon": 15.5952498082009,
          "lat": 47.0615519326381
        },
        {
          "lon": 15.6008891959064,
          "lat": 47.0624766445453
        },
        {
          "lon": 15.6063934920318,
          "lat": 47.0630056235136
        },
        {
          "lon": 15.6098433982062,
          "lat": 47.0636166548931
        },
        {
          "lon": 15.6128842121861,
          "lat": 47.0644395585447
        },
        {
          "lon": 15.6191448175772,
          "lat": 47.0665967083829
        },
        {
          "lon": 15.6226471044988,
          "lat": 47.0676176602334
        },
        {
          "lon": 15.6334363755671,
          "lat": 47.0698580844477
        },
        {
          "lon": 15.6364888519884,
          "lat": 47.0709580536645
        },
        {
          "lon": 15.6390303770068,
          "lat": 47.0724398074535
        },
        {
          "lon": 15.640918579988,
          "lat": 47.0741280821216
        },
        {
          "lon": 15.6446425805645,
          "lat": 47.078327974244
        },
        {
          "lon": 15.6469673436266,
          "lat": 47.0804385989004
        },
        {
          "lon": 15.6501296638875,
          "lat": 47.0827495205475
        },
        {
          "lon": 15.6541777108996,
          "lat": 47.0850337464179
        },
        {
          "lon": 15.6573970871633,
          "lat": 47.086476642443
        },
        {
          "lon": 15.6619210338083,
          "lat": 47.0880312772709
        },
        {
          "lon": 15.6651282125863,
          "lat": 47.0888358293304
        },
        {
          "lon": 15.6719660414114,
          "lat": 47.0902269877615
        },
        {
          "lon": 15.6752803754782,
          "lat": 47.0912030556455
        },
        {
          "lon": 15.6799203427253,
          "lat": 47.0932704270112
        },
        {
          "lon": 15.6818869765941,
          "lat": 47.0945165903514
        },
        {
          "lon": 15.6847130228209,
          "lat": 47.0966123217127
        },
        {
          "lon": 15.6870447856639,
          "lat": 47.097925062799
        },
        {
          "lon": 15.6902866001345,
          "lat": 47.0990689126842
        },
        {
          "lon": 15.6941859164212,
          "lat": 47.0998535725057
        },
        {
          "lon": 15.6979681854995,
          "lat": 47.1000243989316
        },
        {
          "lon": 15.7006872805948,
          "lat": 47.0997966068431
        },
        {
          "lon": 15.7030627611898,
          "lat": 47.0993654881513
        },
        {
          "lon": 15.706373746659,
          "lat": 47.0983718062811
        },
        {
          "lon": 15.7170875958291,
          "lat": 47.0943922453237
        },
        {
          "lon": 15.7203286782242,
          "lat": 47.0934361687927
        },
        {
          "lon": 15.7235326247672,
          "lat": 47.092724262128
        },
        {
          "lon": 15.7281781380502,
          "lat": 47.0922119584198
        },
        {
          "lon": 15.7335302418881,
          "lat": 47.0922557635258
        },
        {
          "lon": 15.7369122355541,
          "lat": 47.0926348699813
        },
        {
          "lon": 15.7395732669587,
          "lat": 47.0931467192452
        },
        {
          "lon": 15.7432595489195,
          "lat": 47.0941268649658
        },
        {
          "lon": 15.745636557756,
          "lat": 47.0950093976984
        },
        {
          "lon": 15.7499045771298,
          "lat": 47.0971868151118
        },
        {
          "lon": 15.7592509737428,
          "lat": 47.1032415210396
        },
        {
          "lon": 15.7609044282245,
          "lat": 47.1041563606336
        },
        {
          "lon": 15.7622261828665,
          "lat": 47.1046857928769
        },
        {
          "lon": 15.7661011732952,
          "lat": 47.1055248023659
        },
        {
          "lon": 15.7697555837179,
          "lat": 47.1055800175317
        },
        {
          "lon": 15.7727293424868,
          "lat": 47.1051174736639
        },
        {
          "lon": 15.786791421981,
          "lat": 47.1010919441506
        },
        {
          "lon": 15.7920602653345,
          "lat": 47.100074140548
        },
        {
          "lon": 15.7959599834117,
          "lat": 47.0996050961904
        },
        {
          "lon": 15.7999319537208,
          "lat": 47.0993329155937
        },
        {
          "lon": 15.8131315055622,
          "lat": 47.0990778983817
        },
        {
          "lon": 15.8170037579126,
          "lat": 47.0985133258694
        },
        {
          "lon": 15.8210073152614,
          "lat": 47.0973600465732
        },
        {
          "lon": 15.8344972640949,
          "lat": 47.0921666843868
        },
        {
          "lon": 15.8376465675142,
          "lat": 47.0912213579038
        },
        {
          "lon": 15.8402914862728,
          "lat": 47.0906588249579
        },
        {
          "lon": 15.845073690216,
          "lat": 47.0900922095646
        },
        {
          "lon": 15.8617934961387,
          "lat": 47.08883602956
        },
        {
          "lon": 15.8669951154297,
          "lat": 47.0880484294734
        },
        {
          "lon": 15.8696681907026,
          "lat": 47.087366055188
        },
        {
          "lon": 15.8722358652745,
          "lat": 47.0864717922258
        },
        {
          "lon": 15.8797909641407,
          "lat": 47.0830197267614
        },
        {
          "lon": 15.8832238823802,
          "lat": 47.0816723984824
        },
        {
          "lon": 15.8873624282316,
          "lat": 47.0804888902361
        },
        {
          "lon": 15.8915205761706,
          "lat": 47.0797298688441
        },
        {
          "lon": 15.8941112396202,
          "lat": 47.0794290065214
        },
        {
          "lon": 15.8970054431921,
          "lat": 47.0793054849721
        },
        {
          "lon": 15.9164212194911,
          "lat": 47.0800464370967
        },
        {
          "lon": 15.922224945025,
          "lat": 47.0800788753363
        },
        {
          "lon": 15.9306353586457,
          "lat": 47.0796940514428
        },
        {
          "lon": 15.9422056722274,
          "lat": 47.0787447528668
        },
        {
          "lon": 15.946185108384,
          "lat": 47.0786450932052
        },
        {
          "lon": 15.9523040822323,
          "lat": 47.0790096511446
        },
        {
          "lon": 15.9585608148188,
          "lat": 47.0799568732212
        },
        {
          "lon": 15.9605860886087,
          "lat": 47.0794989981488
        },
        {
          "lon": 15.9618635352176,
          "lat": 47.0798918129735
        },
        {
          "lon": 15.9629916588632,
          "lat": 47.0792372604646
        },
        {
          "lon": 15.9630885115317,
          "lat": 47.0790246716026
        },
        {
          "lon": 15.9628349197692,
          "lat": 47.0790051618841
        },
        {
          "lon": 15.9626712904235,
          "lat": 47.0793442889594
        },
        {
          "lon": 15.9619567871093,
          "lat": 47.0796630859375
        }
      ]
    },
    "end_position_name": "Fürstenfelder Bundesstraße, 8263, Großwilfersdorf, Austria",
    "end_at": "2019-03-28T10:20:03",
    "duration": "39",
    "driver_id": 16,
    "distance": "48",
    "brakes": 21,
    "beagle_id": 8,
    "accelerations": 34
  }
]
```

