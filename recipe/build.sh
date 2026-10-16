#!/bin/bash

# limiting test data to robots.txt files with names that don't raise eyebrows
mv tests/test_data tests/test_data_bak
mkdir tests/test_data
mv tests/test_data_bak/ca.yahoo.com tests/test_data/test.com
rm -rf tests/test_data_bak

${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
