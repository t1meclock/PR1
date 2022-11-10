# Практическая работа №2

### Тема: Реализовать класс который отвечает за базу данных.
###
### Ход работы:
### Для начала работы с базой данных необходимо создать Erwin-модель по предметной области «Склад».

![image](https://user-images.githubusercontent.com/99389490/201177731-d93a4580-0166-4160-b69f-90e2db0fc79b.png)

После необходимо скачать библиотеки, которые понадобятся в работе с базой данных.

![image](https://user-images.githubusercontent.com/99389490/201177768-3c904dee-a61e-4727-84c5-6666b39c3cb6.png)

В папке «lib» создается структура с папками «common», «core\db», «data\model», «domain\entity».

![image](https://user-images.githubusercontent.com/99389490/201177791-c572cf16-fd9a-4f61-b8ff-2e21fa912b54.png)

Файл «data_base_request.dart» создается в папке «common». В данном файле происходит генерация запросов к базе данных.

![image](https://user-images.githubusercontent.com/99389490/201178023-f1621a51-d6c1-408e-8fe4-683b88a29e21.png)

В папках «core\db» создается файл «data_base_helper.dart». В нем заполняются данные в таблицах базы данных, также происходят функции обновления, удаления и создания базы данных.

![image](https://user-images.githubusercontent.com/99389490/201178058-962009f7-b786-4b15-8879-1bf82ad3c8fd.png)
 
- init - инициализация базы данных для всех платформ.
- onCreateTable - создание таблиц.
- onUpdateTable - обновление таблиц.
- onInitTable - заполнение таблиц данными.
- onDropDataBase - удаление базы данных.

  В папках «data\model» создаются модели базы данных.
  
  ![image](https://user-images.githubusercontent.com/99389490/201178295-5c8e59bd-7949-4e09-b0d8-816c1b0ed5f1.png)

  В итоге в проекте должно получиться 10 моделей базы данных.
  
  ![image](https://user-images.githubusercontent.com/99389490/201178320-29666816-088a-4f1a-b24b-bb4e61b9da01.png)
 
  В папках «domain/entity» создаются сущности для моделей базы данных.
  
  ![image](https://user-images.githubusercontent.com/99389490/201178383-4e6e9fbd-77a0-478c-b3ca-c6e527355b82.png)
 
  В итоге должно получиться 10 сущностей для базы данных.
  
  ![image](https://user-images.githubusercontent.com/99389490/201178432-18d2bb3e-0ee3-47b3-8122-e55686a83ddf.png)

  Так же существует файл «Main.dart».
  
  ![image](https://user-images.githubusercontent.com/99389490/201178467-dd75d86c-ed54-4420-bef4-8d5cb3887174.png)
 
  В итоге с помощью скачанного расширения «SQLite» можно посмотреть созданные таблицы базы данных. 
  
  ![image](https://user-images.githubusercontent.com/99389490/201178511-070b836f-928d-4b3a-9f7a-24fd628d83e0.png)
  
  Заполненная таблица "UserProfile".
  
  ![image](https://user-images.githubusercontent.com/99389490/201178612-998b0a22-d103-436a-b0d0-421af794ff9f.png)

###
Вывод: В данной практической работе были усвоены основы работы с базой данных, а также реализован класс который отвечает за базу данных. Реализованы следующие функции:
- init - инициализация базы данных для всех платформ
- onCreateTable - создание таблиц 
- onUpdateTable - обновление таблиц
- onInitTable - заполнение таблиц данными
- onDropDataBase - удаление базы данных 
Реализованы таблицы для предметной области "'Склад".

