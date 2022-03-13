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
  
## Partition disks
  
- Select Manual disk partitioning.
  
  <img width="791" alt="Screen Shot 2022-03-13 at 10 33 03 AM" src="https://user-images.githubusercontent.com/51042907/158048149-2f9a6966-d4fb-4459-bcec-1da19552e106.png">

- Select the SCSI3 (0, 0, 0) (sda) - 33.1 GB ATA VBOX HARDDISK, then continue.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 10 36 01 AM" src="https://user-images.githubusercontent.com/51042907/158048303-1f32919a-76b2-41f9-8df5-611ed9d822cd.png">

- Select yes for creating new partition on the table on this divice, then enter. 
  
  <img width="792" alt="Screen Shot 2022-03-13 at 10 38 56 AM" src="https://user-images.githubusercontent.com/51042907/158048375-f76d0732-88eb-488d-b609-63dd4577de62.png">

- Now you have 33.1GB Free space set up that can be partitioned, select it, then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 10 39 58 AM" src="https://user-images.githubusercontent.com/51042907/158048401-a4b25d7b-518c-40ae-b401-6598c45a25d2.png">

- Select create new partition, then press enter.
  
<img width="797" alt="Screen Shot 2022-03-13 at 10 40 22 AM" src="https://user-images.githubusercontent.com/51042907/158048407-271bb323-af7b-43b2-9237-c4c97ac6efd5.png">

- Enter new partition size as shown below, then press continue.
  
  <img width="796" alt="Screen Shot 2022-03-13 at 10 41 56 AM" src="https://user-images.githubusercontent.com/51042907/158048452-76c38b98-0d77-444c-84be-01703fd8c011.png">

- Select type of new partition as shown below, then press enter.
  
  <img width="799" alt="Screen Shot 2022-03-13 at 10 52 47 AM" src="https://user-images.githubusercontent.com/51042907/158048756-aa46ab1d-4296-4ebf-843e-756189a0f09c.png">

- Choose whether you want to partition at the end or beginning (select beginning), then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 10 53 05 AM" src="https://user-images.githubusercontent.com/51042907/158048768-13b8afe8-610d-464e-96be-e7b528d7f26a.png">

- Now edit the partition settings as shown below, then select "Done setting up the partition" and press enter.(This partition is setting up as boot partition that's why we need to put boot flag on, normally for boot partition ex2 journal file systems are select since they are old and stable.)
  
  <img width="797" alt="Screen Shot 2022-03-13 at 10 54 35 AM" src="https://user-images.githubusercontent.com/51042907/158048812-b9add1f3-e0f8-4ecd-8be5-53eb2447f039.png">

- Now select the remaining free space of 32.6 GB, then press enter.
  
  <img width="791" alt="Screen Shot 2022-03-13 at 10 55 35 AM" src="https://user-images.githubusercontent.com/51042907/158048827-011a58b4-c835-4301-8b42-0716a4891395.png">

- select create new partition, then press enter.
  
  <img width="793" alt="Screen Shot 2022-03-13 at 10 56 08 AM" src="https://user-images.githubusercontent.com/51042907/158048842-12b1001c-a19b-44f3-bd47-211286f0084b.png">

- Enter new partition size (just type "max" as maximum remaining space) as shown below, then press continue.

  <img width="790" alt="Screen Shot 2022-03-13 at 10 56 29 AM" src="https://user-images.githubusercontent.com/51042907/158048854-f493c582-577f-4efc-8374-ad1c3e876488.png">
  
- Select type of new partition as shown below, then press enter.
  
  <img width="792" alt="Screen Shot 2022-03-13 at 10 56 44 AM" src="https://user-images.githubusercontent.com/51042907/158048866-b7627fac-7613-4f32-b9ec-d7643ff094c7.png">
  
- Now edit the partition settings as shown below, then select "Done setting up the partition" and press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 10 57 19 AM" src="https://user-images.githubusercontent.com/51042907/158048878-74fa3dc7-7a0d-4731-a592-f7a093abb319.png">

  
- Now you have boot primary partition and logical partition setup. 
  
  <img width="793" alt="Screen Shot 2022-03-13 at 10 57 47 AM" src="https://user-images.githubusercontent.com/51042907/158048897-7483122f-4be9-44d9-98df-d899c89d78d0.png">

  
- Now select the "Configure the encrypted volume and press enter"
  
  <img width="796" alt="Screen Shot 2022-03-13 at 10 58 17 AM" src="https://user-images.githubusercontent.com/51042907/158048917-ff548b70-9a1d-401a-8d9b-393c44a83979.png">

- Select yes to write changes to the disk, then press enter.(Don't worry!)
  
  <img width="801" alt="Screen Shot 2022-03-13 at 10 58 37 AM" src="https://user-images.githubusercontent.com/51042907/158048931-a5d8e4f3-1b5e-46d3-b383-204949bd05db.png">

- Select "Create Encrypted volume", then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 10 58 59 AM" src="https://user-images.githubusercontent.com/51042907/158048941-bf443d2f-d979-4d33-8725-f84402358aa4.png">

- Select the partition you want to encrypt by pressing space bar, then select continue then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 10 59 22 AM" src="https://user-images.githubusercontent.com/51042907/158048954-9deda06c-0a2d-45b9-a25a-dcbe42959496.png">

- Select the Finish, then press enter. 
  
  <img width="793" alt="Screen Shot 2022-03-13 at 10 59 47 AM" src="https://user-images.githubusercontent.com/51042907/158048961-806b2252-ea4e-4a82-ba10-765f47e97e66.png">

- Select to yes to erase the partition disk that you are going to encrypt, then press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 11 00 25 AM" src="https://user-images.githubusercontent.com/51042907/158048994-7f474dbb-d214-40f7-83e0-928dc3fc48cc.png">
  
- Wait for few minutes until the data is erased. 
  
  <img width="794" alt="Screen Shot 2022-03-13 at 11 00 58 AM" src="https://user-images.githubusercontent.com/51042907/158049007-1abfaab4-b9d2-4a98-a3a8-14a76b43c1a4.png">
