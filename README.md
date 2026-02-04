<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Project

### Control your home corners with a single command
We convert your home to smart home, a comfort and relaxed environment using advanced product that make your home easy to control. energy saving and secure.



## Project Deployment

- Clone Source :
```bash 
git clone https://github.com/MAIN-SmartHome/laravel-project.git .
```

- Add .env File :
```bash
cp .env.example .env
```
- Install Dependencies :
```bash 
composer install
```
```bash
npm install
```
- Build Frontend :
```bash
npm run build
```
- Install Database :
```bash 
php artisan migrate
```
- Create Encryption Key :
```bash 
php artisan key:generate
```
- Seed Site content :
```bash 
php artisan db:seed
```
- Run the Project :
```bash 
php artisan serve
```
- Login Go To Dashboard :
```http://127.0.0.1:8000/dashboard```
#### Username : admin@admin.com
#### Password : 12345678
