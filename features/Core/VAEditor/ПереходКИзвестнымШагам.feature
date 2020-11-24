﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Переход к известным шагам из редактора

    Как разработчик
    Я хочу чтобы в редакторе можно было быстро перейти в дерево известных шагов с помощью ctrl+I
    Чтобы я мог быстро посмотреть сосдение шаги с текущим шагом

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'


Сценарий: Переход к известным шагам из редактора

	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor06"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient

	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(16, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"


	* Переход в дерево известных шагов
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюОткрытьОпределениеШага'
		Тогда открылось окно 'Известные шаги*'
		//И в таблице "ДеревоШагов" я активизирую поле с именем "ДеревоШаговОписаниеШага"
		Тогда элемент формы с именем "ДеревоШаговОписаниеШага" стал равен 'Позволяет сохранить в переменную произвольное выражение встроенного языка. Обращение к созданной переменной в других шагах должно происходить так: $ИмяПеременной$.'
		
	* Установка строки между шагами
		И Я закрываю окно 'Известные шаги*'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(18, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И Пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"
		
	* Переход в дерево известных шагов к ближнему шагу снизу
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюОткрытьОпределениеШага'
		Тогда открылось окно 'Известные шаги*'
		//И в таблице "ДеревоШагов" я активизирую поле с именем "ДеревоШаговОписаниеШага"
		Тогда элемент формы с именем "ДеревоШаговОписаниеШага" стал равен 'Вводит текст в поле. Также вводит текст в форматированный документ и поле HTML документа.'

