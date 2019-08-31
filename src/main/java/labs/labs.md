#Список чтения
http://optimization.guide/ - Продуманная оптимизация
https://shipilev.net/talks/jeeconf-May2012-perfMethodology.pdf - Вводная от Шипилева

# Lab 1 Some samples for introduction in optimization
- https://habr.com/ru/company/piter/blog/358898/
- Сравнить поток и стрим
- Сделать замер парсинга даты
- Сравнить конкатенацию, StringBuilder, StringBuffer
- Counter with jmh
- Протестировать вставку и удаление в различные типы коллекций
- Вставка в очередь с приоритетами
- Протестировать операцию боксинга
- Работа с файлами(чтение из файла)



# Lab 2 GC Tuning

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

# Lab 3 JMH

https://hg.openjdk.java.net/code-tools/jmh/file/tip/jmh-samples/src/main/java/org/openjdk/jmh/samples/ - jmh examples


#Lab 4 Jit-optimization

- Настройка Jitwatch
- Настройка plugins JOL и анализ байткода с помощью JOl
- Задетектить inlining, loop unrolling, escape-analysis, lock elision, 
 lock coarsing, intrinsic operation, on-stack replacement

#Lab 5 Concurrency optimization

- Counter замерить производительность с различными видами локов
-Unsafe  Выделить память, замерить время сериализации, заюзать JNI, заюзать CAS через Unsafe
 - Spin-blocking
  - Сравнить производиетльность блокирующих структур с неблокирующими (Disruptor со стр 356 Оптимизация программ)
  - Сделать замеры работы executors
  
 ### References
- Executor https://github.com/jheusser/core-java-performance-examples/blob/master/src/test/java/com/google/code/java/core/executor/ExecutorTestMain.java 
 