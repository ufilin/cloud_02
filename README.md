# cloud_02

## Домашнее задание к занятию «Вычислительные мощности. Балансировщики нагрузки»
  
> Задание 1. Yandex Cloud
  
### Создать бакет Object Storage и разместить в нём файл с картинкой:
  
> file.jpeg, открытый в браузере с storage.yandexcloud.net  
  
<p align="center">
  <img src="/images/cloud_02-1-1.png" width="800">
</p>
  
### Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:
  
> list-instances ufilin: 3 ВМ в RUNNING_ACTUAL
  
<p align="center">
  <img src="/images/cloud_02-1-3.png" width="800">
</p>
  
> Страница с картинкой по IP ВМ 89.169.159.251
  
<p align="center">
  <img src="/images/cloud_02-1-2.png" width="800">
</p>
  
### Подключить группу к сетевому балансировщику:
  
> terraform output lb_ip, список NLB, target-states (3 × HEALTHY)
  
<p align="center">
  <img src="/images/cloud_02-1-4.png" width="800">
</p>
  
> Страница по IP балансировщика 158.160.153.103
  
<p align="center">
  <img src="/images/cloud_02-1-5.png" width="800">
</p>
  
### Создание Application Load Balancer с использованием Instance group и проверкой состояния.  
  
> Цикл curl (200), список ВМ, NLB, target-states до удаления
  
<p align="center">
  <img src="/images/cloud_02-1-6.png" width="800">
</p>
  
> yc compute instance delete и список ВМ после восстановления, при этом curl всё время отдаёт 200
  
<p align="center">
  <img src="/images/cloud_02-1-9.png" width="800">
</p>
  
> CLOSING_TRAFFIC → ВМ исчезает → CREATING_INSTANCE
  
<p align="center">
  <img src="/images/cloud_02-1-7.png" width="800">
</p>
  
> CHECKING_HEALTH → OPENING_TRAFFIC → RUNNING_ACTUAL
  
<p align="center">
  <img src="/images/cloud_02-1-8.png" width="800">
</p>