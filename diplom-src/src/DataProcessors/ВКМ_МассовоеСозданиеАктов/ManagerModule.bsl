#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область СлужебныеПроцедурыИФункции

Процедура МассовоеСозданиеРеализацийУслуг(Договоры, Период) Экспорт
	
	Всего = Договоры.Количество();
	Сч = 0;
	
	Для Каждого Договор Из Договоры Цикл
		
		ДокументОбъект = Документы.РеализацияТоваровУслуг.СоздатьДокумент();
		ДокументОбъект.Дата = КонецМесяца(Период);
		ДокументОбъект.Организация = Договор.Организация;
		ДокументОбъект.Контрагент = Договор.Контрагент;
		ДокументОбъект.Договор = Договор.Ссылка;
		ДокументОбъект.Комментарий = "Документ создан с помощью обработки ""Массовое создание актов""";
		ДокументОбъект.Ответственный = Пользователи.ТекущийПользователь();
		ДокументОбъект.Записать(РежимЗаписиДокумента.Запись);
		
		ДокументОбъект.ВыполнитьАвтозаполнение();
		
		ДокументОбъект.Записать(РежимЗаписиДокумента.Проведение);
		
		Сч = Сч + 1;
		ДлительныеОперации.СообщитьПрогресс(Сч/Всего * 100);
	КонецЦикла;
	
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли