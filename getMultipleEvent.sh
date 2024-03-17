curl -X 'GET' "http://localhost:5210/api/events/$1?currency=EUR" -H 'accept: */*' &
curl -X 'GET' "http://localhost:5210/api/events/$2?currency=EUR" -H 'accept: */*' &
curl -X 'GET' "http://localhost:5210/api/events/$3?currency=EUR" -H 'accept: */*' &
curl -X 'GET' "http://localhost:5210/api/events/$4?currency=EUR" -H 'accept: */*'