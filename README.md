# Python-File-to-EXE-File-Converter
An easy way to convert your python file to exe file. To decrease the size of your exe file, you can select your own python environment for the conversion.
## Introduction
Download the Python_to_EXE.exe to convert your python file. This converter can convert python file (“.py file”) to exe file

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/26397b7a-9537-45fc-9a22-9653ac65a79f)

## Operation step
The general sequence of the operation step is the serial number shown in the GUI.
Before using the converter, 

Note:
1.  Please ensure that the Anaconda is installed in the computer. If there is no anaconda in the computer, please download it from “https://www.anaconda.com/”. 
2.  Please install a python IDE to run the python file such as Visual studio code or PyCharm. In this manual, the explanation will base on Visual studio code.
### Step 1: Set Python environment
If the python file runs in the default Anaconda python environment which may include too much useless python package of a certain python program, the file size of exe converting output will become very big and it will cost too much time to convert. To solve this problem, users can set a new environment that only contains necessary python package of a certain python program.
User can click the choice box of “New Environment” to create a new python environment. To set a new environment, user must input the new environment name and python version. 
The python version of the computer can be found by following steps.
1.	Press button “Windows” + “R”
2.	Type in “cmd” and press “Enter”
3.	Type “python” in the prompt and press “Enter”
4.	The text in the red box is the python version

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/afc7983d-fa75-452f-8cdd-c7be86fe0898)


The name of the new environment should be different with the exist environment name. The exist name of environment can be found by the following step:
1.	Press button “Windows” + “R”
2.	Type in “cmd” and press “Enter”
3.	Type “conda info -e” in the prompt and press “Enter”
4.	The text in the red box is the exist environment name

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/a4470fb8-a4bd-4984-bbaa-50a454eed342)

If the user doesn’t want to create a new python environment, user can use the exist python environment.
After setting the new python environment, please click the “set new python environment” button.

### Step 2: Install pip package
After setting the new environment, users should install necessary python package for the new python environment. In this step, users should input the list of pip packages used in the python program file. The step to install the pip package in the new python environment follows:
1.	Open the python file that needs to be convert by IDE
2.	Click the red box shown in the following figure.

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/0ea84900-19c9-402e-b575-cd9c17f63c89)

3.	Choose the new environment that is set in the previous step in the pop-up window.

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/410ef36e-f303-4fc8-b952-5026f30cd35a)

4.	Check which package is labeled in yellow line in the python program “import” section. In the example (following figure), the python package should be installed is “requests”, “pyqt5” and “download”. 

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/d48611b6-c93f-46ee-9a5b-839a6076c228)

5.	Type the package name in the memo (shown in the figure). 

Note: 
a.	If the check box of “Auto pip command” is selected, it means that user can just input the name of package and the converter will use the pip command: 
“pip install [package name]” automatically.
b.	If user doesn’t click this check box, users have to input the full pip installation command in the memo by themselves.
c.	The check box of “install pyinstaller” is the switch of installing the package called pyinstaller which can convert python file to exe file. Normally, this check box should always be selected for the converting process.

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/3fa8a054-5ecd-4103-9339-47925dcd58cc)

### Step 3 (choose python file) and Step 4 (choose icon file)
Please follow the instructions shown in the GUI.

### Step 5: Package setting
![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/4b40f9a0-d2ad-4fcf-bfb1-808fbd8f6ee2)

### Step 6: Confirm
After finishing all the settings, please click the “packaging” button to convert the selected python file to exe file. 
After waiting for the converting process, if the prompt window shows “successfully” (in the figure), it means the process is success. If the prompt doesn’t show the text of “successfully”, please try to run the python file in the new python environment to check whether some python package is not installed successfully.

![image](https://github.com/Hong-01/Python-File-to-EXE-File-Converter/assets/88537757/dfeca102-1980-4e70-bde2-6eaa741faf15)

The output file path is in the “dist” folder of the python file directory. Users can click the “Open output folder” button to open the output folder to find the exe file.








