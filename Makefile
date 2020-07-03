build:
	docker build -t ava-rec .

run:
	docker run --rm -d -v $$DATA:/data --name ava-rec ava-rec tail -f /dev/null

stop:
	docker stop ava-rec