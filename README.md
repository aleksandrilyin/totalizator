# Тотализатор

Решение [тестового задания](https://github.com/aristofun/webdevdao/blob/master/test_assignments/totalizator.md) на позицию Ruby on Rails разработчика.

## Возможности

Функция `score` возвращает:
* `1`, если счёт угадан полностью
* `0`, если угадано, какая команда выиграла
* `-1`, если не угадан ни реальный счёт, ни кто выиграл

## Требования

* Ruby 2.6.5 или новее

## Установка

[Скачайте ZIP](https://github.com/aleksandrilyin/totalizator/archive/master.zip) или клонируйте репозиторий локально:
```sh
$ git clone git@github.com:aleksandrilyin/totalizator.git
```

## Использование

Перейдите в директорию:
```sh
$ cd totalizator/
```

Запустите программу:
```sh
$ ruby app.rb
```

### Пример использования

```sh
$ ruby app.rb
Enter the estimated score of the game of team 1 (0-9): 1
Enter the estimated score of the game of team 2 (0-9): 0

The real score of the game: 5:2
The estimated score of the game: 1:0

Score: 0
```

### Пример использования функции `score`

```ruby
require_relative 'lib/game'

p Game.score(0, 1, 0, 1) #=> 1  (счёт угадан полностью)
p Game.score(2, 1, 1, 0) #=> 0  (угадано какая команда выиграла)
p Game.score(0, 4, 2, 0) #=> -1 (ничего не угадано)
```

## Тестирование

Установите гем Bundler:
```sh
$ gem install bundler
```

Установите зависимости:
```sh
$ bundle
```

Запустите тесты:
```sh
$ bundle exec rspec
```
