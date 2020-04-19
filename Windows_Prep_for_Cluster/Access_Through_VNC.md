# Access GUI through VNC

- First

Use remote desktop to login to prod-mrirdp01.rhul.ac.uk


- Second  (Skip this step if your VNC viewer is already setup. Do this for the first time only.)

You will be able to do this step only if Can has allocated a VNC session number for you.

Open Putty and log on to psyclogin.rhul.ac.uk with your ID and Password.

After you have logged in, use the following command 

``` bash
vncserver :<your vnc number>
```

You will be asked to set a VNC password. Generally you put in the same password as your login password. You should answer NO for the view only password.

- Third

You open the vnc viewer and check whether your vncsession number is correct. Then login with the passsword that you just created.
