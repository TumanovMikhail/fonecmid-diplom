﻿#language: ru

@tree

Функционал: массовое создание документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" под пользователем с правами "Бухгалтер ИТ-фирмы"

Как тестировщик я хочу проверить работу данного програмного обеспечения
на предмет возможности массового создания документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" от имени пользователя с правами "Бухгалтер ИТ-фирмы",
чтобы убедиться в работоспособности нового функционала и правильности распределения прав между пользователями приложения

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

Сценарий: массового создания документов "Реализация товаров и услуг" с помощью обработки "Массовое создание актов" под пользователем с правами "Бухгалтер ИТ-фирмы"
И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Массовое создание актов'
Тогда открылось окно 'Массовое создание актов'
И я нажимаю кнопку выбора у поля с именем "Период"
И в поле с именем 'Период' я ввожу текст '31.07.2024'
И в таблице "ДанныеОРеализациях" я перехожу к строке:
	| 'Договор'                                  |
	| 'Абонентский договор № 1 от 01.01.2024 г.' |
* Проверяю отсутствие записей в колонке "Реализация услуг"
И в таблице "ДанныеОРеализациях" у поля с именем "ДанныеОРеализацияхРеазизацияУслуг" я жду значения "" в течение 20 секунд
И я нажимаю на кнопку с именем 'СоздатьАктыРеализацииУслуг'
* Проверяю появление новых записей в колонке "Реализация услуг"
И в таблице "ДанныеОРеализациях" у поля с именем "ДанныеОРеализацияхРеазизацияУслуг" я жду значения отличного от "" в течение 20 секунд
