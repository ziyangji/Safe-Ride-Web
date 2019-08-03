Following the instructuion from Venue about the login process

## Logging In

`/auth/local` - Returns token for authenticated calls with the API, requires that the X-XSRF and XSRF token, a session id and binary body consisting of a JSON object with `email` and `password`. Optional params are instructorOnly and studentOnly to allow only the respective user roles to log in.

Example Request (curl)
```curl
curl 'http://localhost:9000/auth/local' -H 'X-XSRF-TOKEN: WU2uDVQKKNhZfCzy8dvADO1oTn/zXxyu819k0=' -H 'Content-Type: application/json;charset=UTF-8' -H 'Accept: application/json, text/plain, */*' -H 'Referer: http://localhost:9000/login' -H 'Cookie: connect.sid=s%3AmCqPCCDugWX3MH1s087InB9hBQ67svne.rTffJTyrYUDc3ZysHXJkcF572ENDv77FsbA5dTudUqU; XSRF-TOKEN=WU2uDVQKKNhZfCzy8dvADO1oTn%2FzXxyu819k0%3D' --data-binary '{"email":"foo@foo.com","password":"foo"}'
```

Example Request (breakdown)  
Destination: `http://localhost:9000/auth/local`  
Header `X-XSRF-TOKEN` `WU2uDVQKKNhZfCzy8dvADO1oTn/zXxyu819k0=`  
Header `Content-Type` `application/json;charset=UTF-8`  
Header `Accept` `application/json, text/plain, */*`  
Header `Referer` `http://localhost:9000/login`  
Cookie `connect.sid=s%3AmCqPCCDugWX3MH1s087InB9hBQ67svne.rTffJTyrYUDc3ZysHXJkcF572ENDv77FsbA5dTudUqU;`  
Cookie `XSRF-TOKEN=WU2uDVQKKNhZfCzy8dvADO1oTn%2FzXxyu819k0%3D`  
Data `{"email":"foo@foo.com","password":"foo"}`  

Example Response
```
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfaWQiOiIwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDQiLCJyb2xlIjoidXNlciIsImlhdCI6MTQ1MzE0MTQ0MywiZXhwIjoxNDUzMTU5NDQzfQ.v0jXDvYAXBDAcMb-nKa6ARgHkTMQ-B9cyBSgjP-gcEI"
}
```

Future requests that require Authorization should put `Authorization: Bearer <token>` in their header, see the example below.

```Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJfaWQiOiIwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDQiLCJyb2xlIjoidXNlciIsImlhdCI6MTQ1MzE0MTkzNiwiZXhwIjoxNDUzMTU5OTM2fQ.sloYvGS4_B2htipK3_vWpj8oC_cQxYDvCIjPV6xQ9Wo```
