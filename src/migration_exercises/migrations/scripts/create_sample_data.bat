@echo off
setlocal

if "%BASE_URL%"=="" set BASE_URL=http://127.0.0.1:5000/exercises

echo Creating student...
curl -sS -X POST "http://127.0.0.1:5000/exercises/students" ^
  -H "Content-Type: application/json" ^
  -d "{\"name\":\"Ava\",\"email\":\"ava@example.com\"}"
echo.
echo.

echo Creating assignment...
curl -sS -X POST "http://127.0.0.1:5000/exercises/assignments" ^
  -H "Content-Type: application/json" ^
  -d "{\"title\":\"ORM Practice\",\"max_score\":100,\"due_date\":\"2026-04-01\"}"
echo.
echo.

echo Creating grade...
curl -sS -X POST "http://127.0.0.1:5000/exercises/grades" ^
  -H "Content-Type: application/json" ^
  -d "{\"score\":95,\"student_id\":1,\"assignment_id\":1,\"comment\":\"Great improvement from last week\"}"
echo.
echo Done.

endlocal
