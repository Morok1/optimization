#Список чтения
http://optimization.guide/ - Продуманная оптимизация
https://shipilev.net/talks/jeeconf-May2012-perfMethodology.pdf - Вводная от Шипилева

# Lab 1
- https://habr.com/ru/company/piter/blog/358898/
- Сравнить поток и стрим
- Сделать замер парсинга даты
- Сравнить конкатенацию, StringBuilder, StringBuffer
- Counter with jmh
- Протестировать вставку и удаление в различные типы коллекций
- Вставка в очередь с приоритетами
- Протестировать операцию боксинга
- Работа с файлами(чтение из файла)

##Утилиты
top/

# Lab 2

- Настроить VisualVM
- Сгенерировать несколько объектов, эмулировать задержку
- Посмотреть распределение памяти по различным областям GC(Eden, Survivor1, Survivor2, Old)
- Запустить GC в различных режимах
 - Настройка old,young, survivor generation в CMS. Посмотреть как сократилась stop-the-world

##References
 - http://www.mantonov.com/2011/03/sunmiscunsafe-jvm.html - unsafe
 -https://habr.com/ru/post/112676/  - Как работает GC
 - https://habr.com/ru/post/223401/  - Принципы GC
 - http://www.duct-tape-architect.ru/?p=523 Подборка докладов по оптимизации

# Lab 3

https://hg.openjdk.java.net/code-tools/jmh/file/tip/jmh-samples/src/main/java/org/openjdk/jmh/samples/ - jmh


#Lab 4