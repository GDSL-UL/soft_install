# Other Windows versions: Native installation {#otherwin}

In this block, we will cover how to install Python if your machine is running Windows 10 Home, or an earlier version of Windows (e.g. Windows 7). With this approach, you will install Python "natively", that is running directly on your operating system (as opposed to through some virtualisation strategy like Docker).

## Installing Python

### Requirements

To complete successfully this installation route, you will need the following:

- A good internet connection
- The `gds_py.yml` file that you can download on [this link](https://github.com/darribas/gds_env/raw/master/gds_py/gds_py.yml) (right click and "Save Link As" to download it to your computer)
- The `jl_setup.bat` file that you can download on [this link](jl_setup.bat)
- A copy of Miniconda for Windows and Python 3.8 (donwload it from [this page](https://docs.conda.io/en/latest/miniconda.html#windows-installers)). Make sure you choose the architecture of your computer (most modern computers will use 64bit)

For the sake of the illustration, we will assume you place the two files (`gds_py.yml` and `jl_setup.bat`) on the `C:\Users\username\Downloads` folder. You do not need to choose this folder but, if you use a different one, please adjust all instructions below accordingly.

### Install steps

This process should take overall about one hour, so prepare accordingly. Most of that time however will be the computer "doing its own thing", and you will not need to do much other than making sure it's still ticking and not returning errors. 

Here are the steps:

1. **Install Miniconda**. Double click on the `.exe` file you will have downloaded and follow steps as suggested
1. **Create environment**. This is the step that will install _most_ of what you will need and hence also the longest one. Here's how you can do it:
    a. Open the Start menu and search for the "Anaconda Prompt". Launch the programme
    b. Navigate to the folder where you have placed all the required files (`C:\Users\username\Downloads` in this guide)
    ```
    cd C:\Users\username\Downloads
    ```
    c. Run the following command:
    ```
    conda-env create -f gds_py.yml
    ```
    This step requires that `gds_py.yml` exists in `C:\Users\username\Downloads` and will take a while, depending on the speed of your connection but no less than 15-20 minutes. Grab a *cuppa* and be patient!
1. **Activate the environment**. For that, run the following command from the same terminal:
```
conda activate gds
```
If the environment is activated, `(gds)` will appear at the beginning of the line in your command prompt
1. **Complete environment setup**. Now, still from the same command prompt, run the following:
```
./jl_setup.bat
```
This step reuires that `jl_setup.bat` exists in `C:\Users\username\Downloads` and will also take a while, depending on the speed of your connection but no less than 10-15 minutes. Be patient, we're almost there!

### Check success

If you have followed and completed the steps above without issues, congratulations, you are all set! To make sure everything has gone according to plan, here is a check you can perform. To complete it, follow these steps:

1. Download the "checker" file `check_py_stack.ipynb` from [here](https://github.com/darribas/gds_env/raw/master/gds_py/check_py_stack.ipynb) (right click and "Save Link As") and place it in the same folder as all the previous ones (in this guide, `C:\Users\username\Downloads`)
1. From the same terminal as above, with the environment activated (you'll know that the case if `(gds)` is at the top of the line in the command prompt), run:
```
jupyter nbconvert --to html --execute check_py_stack.ipynb
```

This will take a little bit and, if it succeeds, it will produce a file called `check_py_stack.html` that you can open on your browser to inspect. If there are no errors and every cell has been run (marked by every cell being assigned a number), you are all set!!!

## Running Python

If the steps above have completed correctly, you are all set and ready to use Python on your own computer. *Using* Python is a lot faster and more straightforward than *installing* Python, so the hardest is past already. To launch a new Python session, you can follow these steps:

1. Open an Anaconda Prompt by going to the "Start Menu" and typing "Anaconda Prompt"; when you find the app, click on it and the same command prompt you used for installation will launch
1. Navigate to the folder from where you would like to launch your session (for example, your home directory: `C:\Users\username`):
```
cd C:\Users\username
```
1. Launch Jupyter Lab by running the following command:
```
jupyter lab
```
This will launch your default browser with a brand new Python session. We recommend using Firefox or Chrome. If your default is not one of those, you can:
1. Close the window that opens automatically
1. Open Firefox/Chrome and point it to `http://localhost:8888`
1. A page will load that asks for a token, copy the one-time token from the command prompt
