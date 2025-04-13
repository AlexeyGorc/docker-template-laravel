# Laravel Docker Template

## 📦 Стек

- PHP 8.3 (FPM) + Xdebug
- Nginx
- MySQL 8
- Redis
- phpMyAdmin
- Composer
- Laravel (устанавливается отдельно)

## 📂 Структура

```bash
laravel-template/
├── docker/
│   ├── php/
│   │   └── Dockerfile
│   ├── nginx/
│   │   └── default.conf
│   ├── mysql/
│   │   └── init.sql
│   └── phpmyadmin/
├── web/
│   └── ...
├── .env
├── docker-compose.yml
├── Makefile      
└── README.md
```

## 🚀 Установка

```bash
make up         # Поднимаем контейнеры
make install    # Устанавливаем Laravel в папку web
make perm       # Выдаем права на папку web
```