:: limiting test data to robots.txt files with names that don't raise eyebrows
move tests\test_data tests\test_data_bak
mkdir tests\test_data
move tests\test_data_bak\ca.yahoo.com tests\test_data\test.com
rmdir /s /q tests\test_data_bak

%PYTHON% -m pip install . --no-deps --no-build-isolation -vv
if errorlevel 1 exit 1
