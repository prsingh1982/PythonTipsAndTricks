install:
	py -m pip install --upgrade pip &&\
		py -m pip install -r requirements.txt

test:
	py -m pytest -vv test_hello.py

format:
	black *.py

lint:
	py -m pylint --disable=R,C hello.py

all: install lint test 