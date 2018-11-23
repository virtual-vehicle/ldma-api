# API Documentation

  * [AegisApiWeb.EventController](#aegisapiweb-eventcontroller)
    * [index](#aegisapiweb-eventcontroller-index)
  * [AegisApiWeb.MeasurementController](#aegisapiweb-measurementcontroller)
    * [index](#aegisapiweb-measurementcontroller-index)
  * [AegisApiWeb.TripController](#aegisapiweb-tripcontroller)
    * [index](#aegisapiweb-tripcontroller-index)

## AegisApiWeb.EventController
### <a id=aegisapiweb-eventcontroller-index></a>index
#### GET /api/v1/events
##### Request
* __Method:__ GET
* __Path:__ /api/v1/events

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2lkrrp10mi281derug0002t1
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
x-download-options: noopen
x-permitted-cross-domain-policies: none
cross-origin-window-policy: deny
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "start_position": null,
    "start_at": "2000-01-01T10:00:00",
    "event_details": {
      "b": 2,
      "a": 1
    },
    "end_position": null,
    "end_after": 0.0,
    "duration": 0.0
  }
]
```

## AegisApiWeb.MeasurementController
### <a id=aegisapiweb-measurementcontroller-index></a>index
#### GET /api/v1/measurements
##### Request
* __Method:__ GET
* __Path:__ /api/v1/measurements

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2lkrrp0q6l7k1mb1lk0002r1
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
x-download-options: noopen
x-permitted-cross-domain-policies: none
cross-origin-window-policy: deny
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "measured_at": "2000-01-01T23:00:07",
    "fuel_tank_level_2f": 700.1,
    "engine_oil_temp_5c": 22.7,
    "acceleration_y": 1.0,
    "acceleration_x": 1.5
  }
]
```

## AegisApiWeb.TripController
### <a id=aegisapiweb-tripcontroller-index></a>index
#### List all trips
##### Request
* __Method:__ GET
* __Path:__ /api/v1/trips

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2lkrrp12jj68181klg0002v1
x-frame-options: SAMEORIGIN
x-xss-protection: 1; mode=block
x-content-type-options: nosniff
x-download-options: noopen
x-permitted-cross-domain-policies: none
cross-origin-window-policy: deny
content-type: application/json; charset=utf-8
```
* __Response body:__
```json
[
  {
    "trip_id": "a2bd3961-a461-4249-9498-b2d4498438ab",
    "start_position_name": "Graz",
    "start_at": "2000-01-01T23:00:07",
    "end_position_name": "Kragujevac",
    "duration": 7.0,
    "distance": 700.1
  },
  {
    "trip_id": "556a635a-a025-476e-a7f2-bef2e0b97e26",
    "start_position_name": "Kg",
    "start_at": "2001-01-01T23:00:07",
    "end_position_name": "Raca",
    "duration": 0.3,
    "distance": 32.3
  }
]
```

