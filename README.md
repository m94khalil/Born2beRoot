# 42 Cursus Project: Born2beRoot

*** if you are using 42 Mac for the project then you need to goto the Go->Computer->Macintosh HD->Users then open the folder with your user name inside there will be folder named by "goinfre". Use this folder to do the project. ***

## Initial Setup

- Download Virtual Box (if you are using Mac and you don't have administrative permission you can download and install it from "Managed software centre").

<img width="1141" alt="Screen Shot 2022-03-13 at 10 07 14 AM" src="https://user-images.githubusercontent.com/51042907/158047363-31f17226-af02-4ebb-8d71-800d9e476c9b.png">

- If you are using your own pc Download and install Virtual box from the website.

<img width="1141" alt="Screen Shot 2022-03-13 at 10 07 14 AM" src="https://user-images.githubusercontent.com/51042907/158047426-7b7d68b4-2e28-4d70-a70f-eb5ffd5259f1.png">


- Download Debian OS

<img width="994" alt="Screen Shot 2022-03-13 at 10 05 20 AM" src="https://user-images.githubusercontent.com/51042907/158047290-346488e5-a340-40e4-9d20-403381adbd55.png">

- Open virtual box and click new.
- type name="you can give it any name" type="linux/windows/Mac etc" version="according to what you downloaded as os in my case it debian (64-bit)", then press continue.

<img width="1274" alt="Screen Shot 2022-03-13 at 9 53 49 AM" src="https://user-images.githubusercontent.com/51042907/158047020-ff50702f-c1db-47b1-96e9-0dbf7506df66.png">

- select Memory size of your virtual Machine, normally 1024MB, then press continue.

<img width="642" alt="Screen Shot 2022-03-13 at 9 55 02 AM" src="https://user-images.githubusercontent.com/51042907/158047044-cbf918c3-31c0-4964-b5bb-ef756d85e286.png">

- select create a new virtual hard disk, then press create.

<img width="639" alt="Screen Shot 2022-03-13 at 9 55 50 AM" src="https://user-images.githubusercontent.com/51042907/158047061-2217021e-aa2e-4a7c-a059-c8a37fd6a28b.png">

- select VDI. then press continue.

<img width="707" alt="Screen Shot 2022-03-13 at 9 56 29 AM" src="https://user-images.githubusercontent.com/51042907/158047073-a2844737-1901-490b-b31f-2ab1bb1b66c6.png">

- You can select storage on physical hard disk as dynamically allocated, then press continue.

<img width="702" alt="Screen Shot 2022-03-13 at 9 57 33 AM" src="https://user-images.githubusercontent.com/51042907/158047098-70e3b6b8-4733-4a42-86ec-964d1e86982d.png">

- select hard disk file location (in case of 42 Mac you need to select goinfre folder inside your username folder) since i am doing bonus i am going to select 30.8GB size (if you are only doing mandatory part select 8GB), then press create.

<img width="841" alt="Screen Shot 2022-03-13 at 9 58 31 AM" src="https://user-images.githubusercontent.com/51042907/158047119-248ee39e-071e-4eb5-ab3c-8d3418885f43.png">
<img width="705" alt="Screen Shot 2022-03-13 at 9 58 55 AM" src="https://user-images.githubusercontent.com/51042907/158047124-98884132-3545-40e1-b87d-41621068e47d.png">

- Now you can your virtual system on the left side section.

<img width="1267" alt="Screen Shot 2022-03-13 at 10 00 54 AM" src="https://user-images.githubusercontent.com/51042907/158047158-7eda140c-2417-440c-819f-e4a7a1abb25a.png">

- select the virtual system you just created and click settings in the top navigation bar (the settings you see are for the selected virtual system).

<img width="650" alt="Screen Shot 2022-03-13 at 10 02 02 AM" src="https://user-images.githubusercontent.com/51042907/158047188-352c7885-e4b8-4c73-9031-1e156de7e973.png">

- Inside settings you need to select the iso image of the operating system you want. For this you go to storage->attribute->Optical drive->click on the disk shape you see at the end of that row and goto the location where you saved the iso and select the iso image.

<img width="910" alt="Screen Shot 2022-03-13 at 10 03 19 AM" src="https://user-images.githubusercontent.com/51042907/158047224-ff266c57-06ef-443f-8ab6-8e423f03df7e.png">

- Now select the virtual machine you just created and press start. After this the virtual box will look like as shown in the image below. 

<img width="1348" alt="after initial setup" src="https://user-images.githubusercontent.com/51042907/158046432-74bb66b2-cafc-4aa5-917f-f98d0a563819.png">

## Setting up user preferences

- Now new window will pop up with Debian installer menu as shown below, then select install (For this project graphical installation is not allowed). 

<img width="642" alt="Debian Installer menu" src="https://user-images.githubusercontent.com/51042907/158046442-de60a58e-10eb-453c-9289-a8e02ad2a7b4.png">

- Now select the preferred language, then enter. 

<img width="804" alt="select language" src="https://user-images.githubusercontent.com/51042907/158046574-9b58f4eb-6fed-435b-b90b-eea7e8117088.png">

- Now select the location, since i am in uae iam going to select United Arab Emirates as shown below, then enter.

<img width="802" alt="location 2" src="https://user-images.githubusercontent.com/51042907/158046652-4343567f-5d38-45b7-9010-57016d9eaacb.png">
<img width="801" alt="location 1" src="https://user-images.githubusercontent.com/51042907/158046789-3ca4b02e-c8d5-438f-ab9c-c5b00f35f717.png">
<img width="796" alt="location 3" src="https://user-images.githubusercontent.com/51042907/158046794-a02990dc-4283-428a-8b23-d1937798758a.png">

- Now configure the keyboard, select and enter.

<img width="798" alt="configure the keyboard" src="https://user-images.githubusercontent.com/51042907/158046940-488bf585-6df6-48dc-8212-44165255ab7f.png">

- Now wait until it loads your preferences.

<img width="790" alt="initial setup final loading" src="https://user-images.githubusercontent.com/51042907/158046964-c0f4f13e-972c-4a38-8369-a7f41c1478d1.png">

## Configure the network

- Enter the hostname for this system. (For this project you need to enter your <username> + "42", for example if my <username> is asharaf then hostanme will be "asharaf42", press continue.
  
  <img width="798" alt="Screen Shot 2022-03-13 at 10 16 59 AM" src="https://user-images.githubusercontent.com/51042907/158047587-b5119323-70cf-4c2f-9259-f037bb881222.png">
  
- Set the domain name as empty, press continue.
  
  <img width="799" alt="Screen Shot 2022-03-13 at 10 21 13 AM" src="https://user-images.githubusercontent.com/51042907/158047746-5f6c4f4a-25b6-4146-8eda-37de73ac0cd1.png">

- Set the root password, press continue.
  
  <img width="799" alt="Screen Shot 2022-03-13 at 10 22 13 AM" src="https://user-images.githubusercontent.com/51042907/158047784-179a69a3-8dc0-4574-a3b1-5595cb84e825.png">
- Enter the root password again, press continue.
  
  <img width="801" alt="Screen Shot 2022-03-13 at 10 23 00 AM" src="https://user-images.githubusercontent.com/51042907/158047803-10edaa0b-264a-49d9-a08a-787096259dca.png">
- Set the new user name 
  
 <img width="799" alt="Screen Shot 2022-03-13 at 10 23 38 AM" src="https://user-images.githubusercontent.com/51042907/158047819-acf861d8-2c8a-4a7b-aa9b-5cbfd961a2e6.png">
  
- Set the new user password.
  
  <img width="798" alt="Screen Shot 2022-03-13 at 10 24 22 AM" src="https://user-images.githubusercontent.com/51042907/158047840-93af5ae1-e3cb-4137-8092-5e40c8a0f1d8.png">
- Enter the new password again, then continue.
  
  <img width="805" alt="Screen Shot 2022-03-13 at 10 24 59 AM" src="https://user-images.githubusercontent.com/51042907/158047858-2cbd8661-63fe-4fec-aed6-e2558f987ed9.png"> 
  
