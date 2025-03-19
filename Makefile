install:
	python -m pip install --upgrade pip &&\
		python -m pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format:
	black *.py

lint:
	python -m pylint --disable=R,C hello.py

all: install lint test format
