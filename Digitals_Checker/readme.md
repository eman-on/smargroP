## Checker

(EN)

Developed as addon for GIS system "Digitals" that gives opportunity to compare layers in project with layers from qualifier and process with them. The main idea is to exclude mistakes.

Button is integrated in GIS System.

Addon need to be executed in ".../Digitals/addons/checker/" and "Check.tlb" into "Digitals" folders.

Developed for v. 2015 y.

 
### Description
TCP/IP program works with LocalHost:1067 (can be changed)
What it's needed for?

It's needed to check project before delivery to the customer: is there any new "not specified" layers that are not described in qualifier and does all layers in the project has right parameters. How and what:

Click on Addon button (picture 1) in Digitals and the process will begin.

![Image of button](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/button_in_Digitals.jpg)

Pic. 1. Checker addon button in Digitals

After all comparisons will be completed the programm will show the result (picture 2):

![Image of layers](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/layers.jpg)

Pic. 2. The result: Layers

In the list will be shown all not specified layers. There are several options:
- Delete selected layer - will delete the layer with all information on it;
- Show objects in selected layer - will show in Digitals objects one by one that you could change their layers.

 
 
 In the "Parameters" part (picture 3) the program shows all layers that has any difference with layer from qualifier by parameters:
 
 ![Image of parameters](https://github.com/eman-on/smargroP/blob/master/Digitals_Checker/pres/params.jpg)
 
 Pic. 3. The result: Parameters
 
 In right side are shown standart and existing parameters of selected layer.
 
 In this view are such options:
 - Clear selected layer parameters (make default);
 - Clear all layers parameters;
 - Check "global" parameters of project and clean them.
