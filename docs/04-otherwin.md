# Windows 10 Home/pre-10 {#otherWin .unnumbered}

This guide covers the installation of Python on machines running Windows 10 Home Edition or versions of Windows prior to Windows 10 (e.g. Windows 7). With this approach, you will install Python "natively", that is running directly on your operating system.

<div class="alert alert-success" style="font-size:120%">
<b>TIP</b>: <br>
    
If you are unsure what version of Windows you are running, please check out [this guide](#windows-version) first.
   
</div>

## Installation {#otherWin_install .unnumbered}

This process involves a few steps:

1. [Requirements](#otherwin_reqs): gather everything you will need before getting started
1. [Miniconda Install](miniconda_install): install the programme that will allow you to install Python
1. [GDS Environment](#otherWin_gds): turbo charge your Python installation
1. [Extra addon's](#otherWin_addons): put the final touches on the install
1. [Success check](#otherWin_check): certify everything went smoothly

Make sure you complete each of them successfully before moving on to the next one.

### Requirements {#otherwin_reqs .unlisted .unnumbered}

To complete this installation route successfully, you will need the following:

- A good internet connection
- The `gds_py.yml` file that you can download on [this link](https://github.com/darribas/gds_env/raw/master/gds_py/gds_py.yml). Right click and "Save Link As" to download it to your computer, as illustrated in the blue box below.
- The `jl_setup.bat` file that you can download on [this link](jl_setup.bat). Right click and "Save Link As" to download it to your computer, as illustrated in the blue box below.

<div class="alert alert-info" style="font-size:120%">
<b>TIP</b>: <br>
    
To download these files, follow these steps with each: 
    
1. Right-click on the link to each file and select "Save link as"
    
<img src="figs/chp4/download_file.png" width="570" style="display: block; margin: auto;" />
    
2. This will prompt a window as below. Select a destination to download it to (the Desktop, for example) and hit "Save"
    
<img src="figs/chp4/save_file.png" width="710" style="display: block; margin: auto;" />
    
</div>

- A copy of Miniconda for Windows and Python 3.8. Make sure you check [which architecture of Windows you are running](#windows-arch) before proceeding.

<div class="alert alert-info" style="font-size:120%">
<b>TIP</b>: <br>

To download Miniconda, follow these steps:
    
1. Head over to the [Download Page](https://docs.conda.io/en/latest/miniconda.html#windows-installers) and select Python 3.8:
    
<img src="figs/chp4/Picture10.png" width="1075" style="display: block; margin: auto;" />

2. We are using **Python 3.8**, so depending on which windows version you are using (32-bit or 64-bit), click on the relevant file in the Python 3.8 section (highlighted in red). 
3. This will download the Miniconda installation file. Depending on your setup and browser, you will need to select where to place it (the Desktop folder would be a good option) or it will go straight into a default location (e.g. the Downloads folder)
    
</div>

For the sake of this guide, we will assume you download the two files (`gds_py.yml` and `jl_setup.bat`) and the Miniconda installer on the Desktop folder (`C:\Users\username\Desktop`). You do not need to choose this folder but, if you use a different one, please adjust all instructions below accordingly.


### Minicoda Install {#miniconda_install .unlisted .unnumbered}

The next step is to install the copy of Miniconda we just downloaded. To do that, follow these steps:

1. Head over to the folder where you downloaded it (the Desktop in our case)
2. Double click the downloaded file will open an installation window:

<img src="figs/chp4/inst_1.PNG" width="260" style="display: block; margin: auto;" />

3. Click **_Next_** on the first step. 
4. Click **_I Agree_** to the Terms and Conditions:

<img src="figs/chp4/inst_2.PNG" width="260" style="display: block; margin: auto;" />
5. In the next window, we will select "Just Me" so no administrator rights are required:

<img src="figs/chp4/inst_3.PNG" width="258" style="display: block; margin: auto;" />

6. The next window will ask you where to install Miniconda. Unless you know what you are doing, leave the path (highlighted in blue) as is and click next: 

<img src="figs/chp4/inst_4.PNG" width="258" style="display: block; margin: auto;" />

7. The next window can be used for an advanced setup. Unless you know what you are doing, leave the default settings as they are (ie. box ticked at _Register Miniconda3 as my default Python 3.8_).

<img src="figs/chp4/inst_5.PNG" width="258" style="display: block; margin: auto;" />

7. Click **_Install_** and the installation process will begin:

<img src="figs/chp4/inst_6.PNG" width="258" style="display: block; margin: auto;" />

8. Once the installation is complete, click **_Next_**.
9. Untick all boxes in the window (unless you want further information on Miniconda, which will open in your browser) and click **_Finish_**:

<img src="figs/chp4/inst_7.PNG" width="258" style="display: block; margin: auto;" />

### Install GDS Environment {#otherWin_gds .unlisted .unnumbered}

Once we have Miniconda ready to go, the next step is to install what we will call the GDS environment. This is a set of software packages that will allow us to do very cool stuff with Python and geographic data. This is the step that will install _most_ of what you will need and hence also the longest one. Let's get started!

1. Head to the Windows icon on the bottom left of your screen and type **_Anaconda_**:

<img src="figs/chp4/Picture20.png" width="1075" style="display: block; margin: auto;" />

2. Now click on **_Anaconda Prompt (miniconda3)_** (from now on we will refer to this as the **Anaconda Prompt**)

<img src="figs/chp4/Picture21.png" width="1074" style="display: block; margin: auto;" />

3. This will launch a window that looks, more or less, like this:

<img src="figs/chp4/Conda_1.PNG" width="491" style="display: block; margin: auto;" />

4. Now we need to "navigate" to the folder where you placed the files downloaded above (`gds_py.yml` and `jl_setup.bat`). In this illustration, we are using the Desktop folder, so you can run the following command:

```shell
cd Desktop
```

Note that you can move to a given folder by using the command `cd myFolder` to move forward through folders, and `cd ..` to move backwards. Once you have typed the command, press _Enter_.

5. Once you have navigated to the location of your files (e.g. _Desktop_), run the following command in the Anaconda Prompt, and press enter to execute it: 

```shell
conda-env create -f gds_py.yml
```

<img src="figs/chp4/Conda_4.PNG" width="490" style="display: block; margin: auto;" />

<div class="alert alert-info" style="font-size:120%">
<b>TIP</b>: <br>

This step requires that `gds_py.yml` exists in the folder where you have directed the Anaconda Prompt (e.g. `C:\Users\username\Downloads`) and will take a while, depending on the speed of your connection but no less than 15-20 minutes. Grab a *cuppa* and be patient!
</div>



6. If everything has gone according to plan, your Anaconda Prompt should look a bit like this:

<img src="figs/chp4/Conda_7.PNG" width="490" style="display: block; margin: auto;" />

This has created correctly the `gds` environment, congratulations! We are _almost_ there.

7. Now we need to _activate_ the environment. For this, run the following command:

```shell
conda activate gds
```

### Complete environment Setup {#otherWin_addons .unlisted .unnumbered}

The final step involves installing a few addon's that will make interacting with data a lot smoother and fun. Let's get to it!

1. Ensure you have the `gds` environment activated. You will be able to check this by looking at the name that appears in parenthesis in the beginning of the last line of the Anaconda Prompt. If yours reads `base`, activate the `gds` environment by running:

```shell
conda activate gds
```

You can see that the start of the line has changed from **(base)** to **(gds)**.

2. On this very Anaconda Prompt window, let's run the `jl_setup.bat` script. For this type the following:

```shell
jl_setup.bat
```

And hit enter. Your Anaconda Prompt should display a series of commands that looks, more or less, as follows:
 
<img src="figs/chp4/Conda_9.PNG" width="490" style="display: block; margin: auto;" />

<div class="alert alert-info" style="font-size:120%">
<b>TIP</b>: <br>

This step requires that `jl_setup.bat` exists in the same folder `C:\Users\username\Downloads` and will also take a while, depending on the speed of your connection but no less than 10-15 minutes. Be patient, we're almost there!

</div>

When this completes, you are all set to go, congratulations!!!

**NOTE:** Do not close the Anaconda prompt yet as we will need it again in the next section, to check everything is alright. 

### Check Installation {#otherWin_check .unlisted .unnumbered}

To make sure that your installation was successful and all packages have been installed we need to run one more thing. Here're the steps to follow:

1. Download the [**check_py_stack.ipynb**](https://raw.githubusercontent.com/darribas/gds_env/master/gds_py/check_py_stack.ipynb) file by right clicking on it and selecting **_Save link as_**. Make sure to use the same folder we have been using so far.
2. From the same Anaconda Prompt as above, with the environment activated (you'll know that is the case if `(gds)` is at the top of the line in the command prompt), run:

```shell
jupyter nbconvert --to html --execute check_py_stack.ipynb
```

This will take a little bit and, if it succeeds, it will produce a file called `check_py_stack.html` that you can open in your browser to inspect. If there are no errors and every cell has been run correctly, your resulting file should look like [this one](check_py_stack.html). If the two look the same, you are all set!!!

## Running Python {#otherWin_run .unnumbered}

Now that you have successfully installed Python on your computer, you are ready to go! Now every time you want to launch the app, called Jupyter Lab, you will need to follow these steps:

1. Start by opening an Anaconda Prompt (remember: "Start Menu" --> "Anaconda Prompt (miniconda3)").
2. Navigate to the folder that you want to work in using the `cd` command (for example, your home directory: `C:\Users\username`). 
3. Activate the GDS environment by running:

```shell
conda activate gds
```

4. Launch Jupyter lab by running the following command:

```shell
jupyter lab
```

This will launch Jupyter Lab in your default browser.

<div class="alert alert-info" style="font-size:120%">
<b>TIP</b>: <br>

It is recommended to use Firefox or Chrome. 
    
If your default browser is neither of the recommended, you can:
    
1. Close the window that opens automatically
2. Open Firefox/Chrome and paste the URL from the Anaconda Prompt:

<img src="figs/chp4/Conda_13.PNG" width="489" style="display: block; margin: auto;" />

</div>

You should now be looking at an interface that looks very similar to this:

<img src="figs/chp4/jupyter_lab.png" width="870" style="display: block; margin: auto;" />

If that is the case, CONGRATULATIONS!!! You are ready to go and start hacking away!!!

<center>
![](https://media.giphy.com/media/PiQejEf31116URju4V/giphy.gif)
<center>
