## Digitals Checker

(EN)

Developed as addon for GIS system "Digitals" that gives opportunity to compare layers in project with layers from qualifier and process with them. The main idea is to exclude mistakes.

Button is integrated in GIS System.

Addon need to be executed in ".../Digitals/addons/checker/" and "Check.tlb" into "Digitals" folders.

Developed for v. 2015 y.

 
### Description
TCP/IP program works with LocalHost:1067 (can be changed)

This program check project before delivery to the customer: is there any new "not specified" layers that are not described in qualifier and does all layers in the project has right parameters. How and what:

Click on Addon button (picture 1) in Digitals and the process will begin.

![Image of button](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/button_in_Digitals.jpg)

Pic. 1. Checker addon button in Digitals

After all comparisons will be completed the programm will show the result (picture 2):

![Image of layers](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/layers.jpg)

Pic. 2. The result: Layers

In the list will be shown all not specified layers. There are several options:
- Delete selected layer - will delete the layer with all information on it;
- Show selected layer objects - will show selected layer objects in Digitals that you could inspect them.

 
 
 In the "Parameters" part (picture 3) the program shows all layers with parameters that differ from qualifier:
 
 ![Image of parameters](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/params.jpg)
 
 Pic. 3. The result: Parameters
 
 In right side are shown standart and existing parameters of selected layer.
 
 In this view are such options:
 - Clear selected layer parameters (make default);
 - Clear all layers parameters;
 - Check "global" parameters of project and clean them.

In the output of this procedure the project will be cleared from non specified layers and all layers parameters will be  standardized!

Yey! )

 
 
(РУС)

Разработано как дополнение к ГИС системе "Digitals" дающем возможность проверки и сравнения слоев проекта со слоями классификатора. Цель проекта - исключить ошибки.

Кнопка дополнения интегрирована в ГИС систему и запуск необходим из нее.

Дополнение необходимо распаковать в папку ".../Digitals/addons/checker/" а "Check.tlb" в папку "Digitals".

Разработанно было под версию 2015 г.

 
### Описание
TCP/IP программа обращается к LocalHost:1067 (можно изменить)

Эта программа проверяет проект перед отправкой заказчику: есть ли в нем "новые" слои которых нет в классификаторе и все ли слои в проекте с правильными параметрами. Как это работает:

Нажать на кнопку дополнения (рисунок 1) в программе Digital и процесс начнется.

![Image of button](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/button_in_Digitals.jpg)

Рис. 1 Кнопка дополнения в Digitals

После того, как все сравнения будут выполнены программа покажет результат (рисунок 2):

![Image of layers](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/layers.jpg)

Рис. 2. Результат: Слои

В данном листе будут показанны все не зарегистрированные слои и предложенно несколько вариантов действий:
- Удалить выбранный слой - удалит слой со всей информацией на нем;
- Показать объекты выбранного слоя - покажет в Digitals объекты, которые есть на данном слое.

 
 
 Во вкладке "Параметры" (рисунок 3) программа показывает все слои с отличными параметрами от классификатора:
  
 ![Image of parameters](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/params.jpg)
 
 Рис. 3. Результат: Параметры
 
 Справа показаны стандартные и существующие параметры выбранного слоя.
  
 В этом окошке есть следующие возможности:
 - Очистить параметры выбранного слоя (вернуть стандартные);
 - Очистить параметры всех слоев;
 - Проверить "глобальные" параметры проекта и очистить их.

Как результат данной процедуры получится проект очищенный от дополнительных слоев и с начальным набором параметров!
