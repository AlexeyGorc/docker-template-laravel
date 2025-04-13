up:
	docker-compose up -d --build

down:
	docker-compose down

install:
	docker-compose run --rm app composer create-project --prefer-dist laravel/laravel . \
	&& docker-compose exec app chown -R www-data:www-data storage bootstrap/cache database \
	&& docker-compose exec app chmod -R 775 storage bootstrap/cache database

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

sqlite:
	touch web/database/database.sqlite
	docker-compose exec app chown -R www-data:www-data database
	docker-compose exec app chmod -R 775 database

reset:
	docker-compose down -v
	sudo chown -R $$(id -u):$$(id -g) web || true
	sudo rm -rf web/* web/.* 2>/dev/null || true

logs:
	docker-compose logs -f

rebuild:
	docker-compose down -v
	docker-compose up -d --build
