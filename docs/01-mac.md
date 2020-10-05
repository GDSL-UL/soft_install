# MacOS Installation {.unnumbered}

**NOTE** This guide shows you how to install on Linux via the `gds_env` [@gds_env]

## Installation {.unnumbered}

### Requirements {.unlisted .unnumbered}

To be able to complete this guide, your machine will need to meet the following requirements:

1. A stable internet connection
2. ~10GB of space on your hard drive
3. MacOS version 10.13 or newer i.e. High Sierra, Mojave or Catalina. If you are unsure what version you are running click on the Apple icon in the top left of the screen and then **About this Mac**.
4. Mac hardware must be a 2010 model or newer

### Docker install steps {.unlisted .unnumbered}

1. Go to the [dockerhub website](https://hub.docker.com/editions/community/docker-ce-desktop-mac/).
2. Ensure you meet the criteria for download (it is the same as stated above) and then select 'Get Stable' button.

<img src="figs/chp1/Figure1.png" width="660" style="display: block; margin: auto;" />
<br>

3. This will then download to your machine but may take some time. Once finished, to access this download go to **Finder** > **Downloads** > **Docker.dmg** and double click.

<img src="figs/chp1/Figure2.png" width="502" style="display: block; margin: auto;" />

<br>

4. You should then be prompted to drag and drop this application into the applications folder like so:

<img src="figs/chp1/Figure3.png" width="360" style="display: block; margin: auto;" />
You may get further windows asking for access to the program. To these you can click **Open** > **Ok** > enter your account password and click **Install helper**

<br>


5. After you have done this, the whale icon should now show in your taskbar:
<img src="figs/chp1/Figure4.png" width="407" style="display: block; margin: auto;" />

<br>

You have successfully downloaded Docker!

### Using Docker {.unlisted .unnumbered}

Now we have Docker installed we can use it to access Python and all the associated packages we need for the practicals

### Installing the GDS environment {.unlisted .unnumbered}

1. Access your terminal: **Launchpad** > **Other** > **Terminal**
2. In a fresh line in the terminal type the following to install the GDS environment container: 

```shell
docker pull darribas/gds:5.0
```

<img src="figs/chp1/Figure5.png" width="286" style="display: block; margin: auto;" />

<br>

3. This should now prompt a long download process that looks a bit like this:
<img src="figs/chp1/Figure6.png" width="286" style="display: block; margin: auto;" />
Dont be alarmed if it seems to take a very long time.

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you are connected to the internet and it is a stable connection. This step involves the download of large amounts of data (ca. 10GB) so it might take a while. However, it only needs to be run once.
   
</div>

### Check success {.unlisted .unnumbered}

You will know the process has completed successfully when each line says 'Pull complete' and the new line gives your machine name followed by a `$` sign.

If everything has gone according to plan, you should see `darribas/gds:5.0` show up on your terminal when you type `docker image ls` (note in the image below there are other containers that are not required, do not worry if you don't have those or slightly different values on the ID and the "CREATED" columns, the important bit is having `darribas/gds:5.0` listed):

<img src="figs/chp2/docker_image_ls.png" width="689" style="display: block; margin: auto;" />
<br>

## Running Python {.unnumbered}

The following sections cover how to spin up a session you have just installed, use it, and shut it down when you are done.

### Running the container {.unlisted .unnumbered}

1. In the new terminal line type the following command to run the container: `docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/work darribas/gds:5.0`

<img src="figs/chp1/Figure7.png" width="286" style="display: block; margin: auto;" />

<br>

You have now started a Python session. 

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Please do NOT close the terminal window until you are finished in this Python session
   
</div>

2. To access this session go to your chosen web browser (e.g. Safari/Chrome) and type: `localhost:8888` into the search bar

<img src="figs/chp1/Figure10.png" width="568" style="display: block; margin: auto;" />

3. The page that loads will prompt you for a password or a token. This can be found in the text in the terminal following the last command you ran (step 9). A long series of numbers and letters will be preceded by `?token=`. Copy this long series of characters and paste into the password box in your browser.

<img src="figs/chp1/Figure9.png" width="286" style="display: block; margin: auto;" />

<br>

4. Now you are in Jupyter Lab you can open up a Python 3 notebook

<img src="figs/chp1/Figure11.png" width="692" style="display: block; margin: auto;" />

<br>

### Using Jupyter Notebook {.unlisted .unnumbered}

- This notebook is where you will run your code. Each shaded box is called a kernel. To test this out you can type `print('test')` into one of these kernels. To run the code use the shortcut `Ctrl + Enter`.

<img src="figs/chp1/Figure12.png" width="693" style="display: block; margin: auto;" />

<br>

<div class="alert alert-info" style="font-size:120%">
<b>IMPORTANT</b>: <br>
    
Make sure you save files you want to keep **ONLY** _within_ the `work` folder, as this will ensure they are saved on your machine.
    
Everything saved outside the `work` folder will be _destroyed_ as soon as you shut down the session.
   
</div>


- You can save your notebook using **File** > **Save notebook as**
<img src="figs/chp1/Figure13.png" width="538" style="display: block; margin: auto;" />

<br>

- You can create new folders to organise your work
<img src="figs/chp1/Figure14.png" width="540" style="display: block; margin: auto;" />

<br>

- And you can access other files on your machine through the 'Work' folder in the File Browser. From here you can navigate to your Documents and designated folder for this module

<img src="figs/chp1/Figure15a.png" width="538" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure15b.png" width="538" style="display: block; margin: auto;" />

<img src="figs/chp1/Figure15c.png" width="538" style="display: block; margin: auto;" />
<br>

### Ending your session {.unlisted .unnumbered}
Once you have finished in your Jupyter session and have saved all your work, you can end the session from the terminal.

Using `Ctrl + C` will prompt a `y/n` option. Either type `y` or `Ctrl + C` again to end the session. 

<img src="figs/chp1/Figure16.png" width="289" style="display: block; margin: auto;" />

<br>

You can now safely shut the terminal window.

<br>

Next time you go to run a Jupyter Notebook you will not need to repeat the whole process as you have already installed Docker and the GDS environment. Instead you can start from [Running the container] and carry on from there.
