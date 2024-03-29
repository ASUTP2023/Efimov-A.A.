# Домашнее задание к занятию "«Очереди RabbitMQ»" -  Ефимов А.А.
---
### Задание 1. Установка RabbitMQ
Используя Vagrant или VirtualBox, создайте виртуальную машину и установите RabbitMQ. Добавьте management plug-in и зайдите в веб-интерфейс.
Итогом выполнения домашнего задания будет приложенный скриншот веб-интерфейса RabbitMQ.

![скриншот 1](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/1.png)`

---

### Задание 2. Отправка и получение сообщений.
Используя приложенные скрипты, проведите тестовую отправку и получение сообщения. Для отправки сообщений необходимо запустить скрипт producer.py
Для работы скриптов вам необходимо установить Python версии 3 и библиотеку pika. Также в скриптах нужно указать ip адрес машины, на которой запущен RabbitMQ, заменив localhost на нужный ip.
$ pip install pika
Зайдите в веб интерфейс, найдите очередь под названием hello и сделайте скриншот. После чего запустите второй скрипт consumer.py и сделайте скриншот результата выполнения скрипта
В качестве решения домашнего задания приложите оба скриншота, сделанных на этапе выполнения.

![скриншот 2](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/2.jpg)'

![скриншот 3](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/3.jpg)`

---

### Задание 3. Подготовка HA кластера.

Используя Vagrant или VirtualBox, создайте вторую виртуальную машину и установите RabbitMQ. Добавьте в файл hosts название и IP-адрес каждой машины, чтобы машины могли видеть друг друга по имени.

Пример содержимого hosts файла:

$ cat /etc/hosts
192.168.0.10 rmq01
192.168.0.11 rmq02
После этого ваши машины могут пинговаться по имени.

Затем объедините две машины в кластер и создайте политику ha-all на все очереди.

В качестве решения домашнего задания приложите скриншоты из веб-интерфейса с информацией о доступных нодах в кластере и включённой политикой.

---

![скриншот 4](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/4.jpg)`

![скриншот 5](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/5.jpg)`

---

Также приложите вывод команды с двух нод:

$ rabbitmqctl cluster_status'

![скриншот 6](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/6.jpg)`

---

Для закрепления материала снова запустите скрипт producer.py и приложите скриншот выполнения команды на каждой из нод:

$ rabbitmqadmin get queue='hello'


![скриншот 7](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/7.jpg)`

---

После чего попробуйте отключить одну из нод, желательно ту, к которой подключались из скрипта, затем поправьте параметры подключения в скрипте consumer.py на вторую ноду и запустите его.

Приложите скриншот результата работы второго скрипта.

![скриншот 8](https://github.com/ASUTP2023/Efimov-A.A./blob/main/%D0%94%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B5%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5%20%D0%BA%20%D0%B7%D0%B0%D0%BD%D1%8F%D1%82%D0%B8%D1%8E%2011.4.%20%C2%AB%D0%9E%D1%87%D0%B5%D1%80%D0%B5%D0%B4%D0%B8%20RabbitMQ%C2%BB%20%D0%95%D1%84%D0%B8%D0%BC%D0%BE%D0%B2%20%D0%90.%D0%90/img/8.jpg)`
---
