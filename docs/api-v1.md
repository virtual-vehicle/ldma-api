# API Documentation

  * [AegisApiWeb.EventController](#aegisapiweb-eventcontroller)
    * [index](#aegisapiweb-eventcontroller-index)
    * [show](#aegisapiweb-eventcontroller-show)
  * [AegisApiWeb.MeasurementController](#aegisapiweb-measurementcontroller)
    * [index](#aegisapiweb-measurementcontroller-index)
    * [show](#aegisapiweb-measurementcontroller-show)
  * [AegisApiWeb.TripController](#aegisapiweb-tripcontroller)
    * [index](#aegisapiweb-tripcontroller-index)
    * [show](#aegisapiweb-tripcontroller-show)

## AegisApiWeb.EventController
### <a id=aegisapiweb-eventcontroller-index></a>index
#### List all events
##### Request
* __Method:__ GET
* __Path:__ /api/v1/events

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2ll2i1q9f4e80j5u3k000m02
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
    "event_id": 1,
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

### <a id=aegisapiweb-eventcontroller-show></a>show
#### Event with id 1
##### Request
* __Method:__ GET
* __Path:__ /api/v1/events/1

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2ll2i1q7k0bc1mbdv4000lu2
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
{
  "start_position": null,
  "start_at": "2000-01-01T10:00:00",
  "event_id": 1,
  "event_details": {
    "b": 2,
    "a": 1
  },
  "end_position": null,
  "end_after": 0.0,
  "duration": 0.0
}
```

## AegisApiWeb.MeasurementController
### <a id=aegisapiweb-measurementcontroller-index></a>index
#### List all measurements
##### Request
* __Method:__ GET
* __Path:__ /api/v1/measurements

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2ll2i1qadl0802he480007e4
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

### <a id=aegisapiweb-measurementcontroller-show></a>show
#### Measurement with measured_at 2000-01-01T23:00:07
##### Request
* __Method:__ GET
* __Path:__ /api/v1/measurements/2000-01-01T23:00:07

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2ll2i1q9f4e810otbg0007c3
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
{
  "measured_at": "2000-01-01T23:00:07",
  "fuel_tank_level_2f": 700.1,
  "engine_oil_temp_5c": 22.7,
  "acceleration_y": 1.0,
  "acceleration_x": 1.5
}
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
x-request-id: 2ll2i1q6lfpc059d7c000ls2
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
    "trip_id": "6bc7fda7-d70c-4957-b384-4ff3680c0200",
    "start_position_name": "Graz",
    "start_at": "2000-01-01T23:00:07",
    "end_position_name": "Kragujevac",
    "duration": 7.0,
    "distance": 700.1
  },
  {
    "trip_id": "cb73a6b7-ef04-4226-82f8-981c83024841",
    "start_position_name": "Kg",
    "start_at": "2001-01-01T23:00:07",
    "end_position_name": "Raca",
    "duration": 0.3,
    "distance": 32.3
  }
]
```

### <a id=aegisapiweb-tripcontroller-show></a>show
#### Trip with id 6bc7fda7-d70c-4957-b384-4ff3680c0200
##### Request
* __Method:__ GET
* __Path:__ /api/v1/trips/6bc7fda7-d70c-4957-b384-4ff3680c0200

##### Response
* __Status__: 200
* __Response headers:__
```
cache-control: max-age=0, private, must-revalidate
x-request-id: 2ll2i1q05iuo1l42pk000g01
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
{
  "trip_id": "6bc7fda7-d70c-4957-b384-4ff3680c0200",
  "start_position_name": "Graz",
  "start_at": "2000-01-01T23:00:07",
  "end_position_name": "Kragujevac",
  "duration": 7.0,
  "distance": 700.1
}
```

