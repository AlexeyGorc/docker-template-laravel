up:
	docker-compose up -d --build

down:
	docker-compose down

install:
	docker-compose run --rm app composer create-project --prefer-dist laravel/laravel .

bash:
	docker-compose exec app bash

artisan:
	docker-compose exec app php artisan

migrate:
	docker-compose exec app php artisan migrate

seed:
	docker-compose exec app php artisan db:seed

fresh:
	docker-compose exec app php artisan migrate:fresh --seed

perm:
	sudo chown -R $$(id -u):$$(id -g) web

logs:
	docker-compose logs -f

rebuild:
	docker-compose down -v
	docker-compose up -d --build
