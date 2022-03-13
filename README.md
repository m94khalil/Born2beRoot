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

- Select yes for creating new partition table on this divice, then enter. 
  
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

- Enter the passphrase to do the encryption. (remember this passphrase, since you need to enter it every time starting the virtual machine.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 18 27 PM" src="https://user-images.githubusercontent.com/51042907/158051216-5e011d4e-8a4d-4dc3-9bd7-2ae781061cac.png">
  
- Enter the passphrase again to confirm. 
  
  <img width="796" alt="Screen Shot 2022-03-13 at 12 18 56 PM" src="https://user-images.githubusercontent.com/51042907/158051230-78231aed-9ccc-4fc2-a3db-78e647e1fe79.png">
  
  
- If you are using a weak passphrase you will be notified as shown below. select yes then press enter. 
  
  <img width="800" alt="Screen Shot 2022-03-13 at 12 19 42 PM" src="https://user-images.githubusercontent.com/51042907/158051260-485e1326-4bd2-426a-a53c-eef9aabb145d.png">

- Now we are going to configure the logical volume manager for logical partion. select "Configure logical volume manager" and press enter.
  
  <img width="793" alt="Screen Shot 2022-03-13 at 12 20 19 PM" src="https://user-images.githubusercontent.com/51042907/158051276-2a7615b0-7838-4b73-9b02-6e0978a173af.png">
  
- Select yes to confirm. 
  
  <img width="795" alt="Screen Shot 2022-03-13 at 12 20 59 PM" src="https://user-images.githubusercontent.com/51042907/158051290-bddfc104-cb5c-43a9-8cb7-a86c5a4841f0.png">
  
  
- Select "create volume group", then press enter.
  
  <img width="800" alt="Screen Shot 2022-03-13 at 12 21 29 PM" src="https://user-images.githubusercontent.com/51042907/158051313-b322720c-24c9-4282-a81e-beed767ac63c.png">
  
- Type the "volume group name" as shown below. Select continue then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 12 22 27 PM" src="https://user-images.githubusercontent.com/51042907/158051341-91cb42dd-5de5-4245-a324-91cec65d7424.png">

- Select device for the new volume group. (Use spacebar to select the device), then select continue and press enter.
  
  <img width="798" alt="Screen Shot 2022-03-13 at 12 22 54 PM" src="https://user-images.githubusercontent.com/51042907/158051359-ca4bbe95-a644-40d1-8c88-525b6819efa4.png">

- Select "create logical volume", then press enter.
  
  <img width="794" alt="Screen Shot 2022-03-13 at 12 24 38 PM" src="https://user-images.githubusercontent.com/51042907/158051396-57ff4625-c301-4304-a022-a1137c3c1b43.png">

- Select the volume group where new logical volume need to be added then press enter.
  
  <img width="796" alt="Screen Shot 2022-03-13 at 12 25 00 PM" src="https://user-images.githubusercontent.com/51042907/158051405-c9b19c1c-8591-4689-bcd2-287d07166d92.png">

- Type the name of new logical volume as shown below, then select continue and press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 25 48 PM" src="https://user-images.githubusercontent.com/51042907/158051429-c3d957c6-83a9-4281-8cee-1369f78c97e7.png">

- Type the logical volume size as shown below, then select continue and press enter.
  
  <img width="788" alt="Screen Shot 2022-03-13 at 12 26 31 PM" src="https://user-images.githubusercontent.com/51042907/158051447-e6b7ce61-5b1f-4e93-bfb8-6d188a599fda.png">
  
  
- Select "create logical volume", then press enter.
  
  <img width="798" alt="Screen Shot 2022-03-13 at 12 27 33 PM" src="https://user-images.githubusercontent.com/51042907/158051475-11f6cd12-fba2-4c42-a31e-961b777681d2.png">

- Select the volume group where new logical volume need to be added then press enter.
  
  <img width="794" alt="Screen Shot 2022-03-13 at 12 27 59 PM" src="https://user-images.githubusercontent.com/51042907/158051486-d358c32d-e335-4d30-8877-7b15a25264f3.png">

- Type the name of new logical volume as shown below, then select continue and press enter.
  
  <img width="801" alt="Screen Shot 2022-03-13 at 12 28 46 PM" src="https://user-images.githubusercontent.com/51042907/158051515-6988cbf6-2a74-4c51-a89b-3035d2bf6ea1.png">

- Type the logical volume size as shown below, then select continue and press enter.
  
  <img width="792" alt="Screen Shot 2022-03-13 at 12 29 56 PM" src="https://user-images.githubusercontent.com/51042907/158051545-57431d2e-7a00-4e27-b735-13b099041c26.png">

- Select "create logical volume", then press enter.
  
  <img width="794" alt="Screen Shot 2022-03-13 at 12 30 26 PM" src="https://user-images.githubusercontent.com/51042907/158051559-355b1b3c-3a4e-4ca3-b853-2b5a17e86176.png">
  
- Select the volume group where new logical volume need to be added then press enter.
  
  <img width="786" alt="Screen Shot 2022-03-13 at 12 30 56 PM" src="https://user-images.githubusercontent.com/51042907/158051579-4e43dc67-b76d-465d-9928-e25d7b0b5aed.png">
  
- Type the name of new logical volume as shown below, then select continue and press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 31 30 PM" src="https://user-images.githubusercontent.com/51042907/158051603-7838eb58-45c5-4c67-b3e3-f43c88c6f136.png">

- Type the logical volume size as shown below, then select continue and press enter.
  
<img width="794" alt="Screen Shot 2022-03-13 at 12 32 21 PM" src="https://user-images.githubusercontent.com/51042907/158051622-9fb8d26c-6f7a-4953-a9b9-86ab6a7c9d3f.png">

- Select "create logical volume", then press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 32 54 PM" src="https://user-images.githubusercontent.com/51042907/158051631-d537c1e0-33cd-4dc9-b186-56d41460516e.png">

- Select the volume group where new logical volume need to be added then press enter.
  
 <img width="798" alt="Screen Shot 2022-03-13 at 12 35 05 PM" src="https://user-images.githubusercontent.com/51042907/158051683-6502bd72-7c4b-4325-a102-a90e5b5c5723.png">

- Type the name of new logical volume as shown below, then select continue and press enter.
  
  <img width="792" alt="Screen Shot 2022-03-13 at 12 35 56 PM" src="https://user-images.githubusercontent.com/51042907/158051706-5adda8f8-2aed-4898-9fc2-e114072bc7b1.png">

- Type the logical volume size as shown below, then select continue and press enter.
  
  <img width="796" alt="Screen Shot 2022-03-13 at 12 37 13 PM" src="https://user-images.githubusercontent.com/51042907/158051742-99305de0-dbb9-4c57-aff5-18969588ba32.png">

- Select "create logical volume", then press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 38 04 PM" src="https://user-images.githubusercontent.com/51042907/158051767-cac81c14-17b8-45d4-a6ae-4df54192d8da.png">
  
- Select the volume group where new logical volume need to be added then press enter.
  
<img width="797" alt="Screen Shot 2022-03-13 at 12 38 25 PM" src="https://user-images.githubusercontent.com/51042907/158051778-e60170bb-dc29-4756-b0f8-c2853b037b5f.png">

- Type the name of new logical volume as shown below, then select continue and press enter.
  
  <img width="796" alt="Screen Shot 2022-03-13 at 12 39 00 PM" src="https://user-images.githubusercontent.com/51042907/158051790-401170fa-a9d5-4fcc-aa7d-15217542f7fc.png">
  
- Type the logical volume size as shown below, then select continue and press enter.
  
  <img width="794" alt="Screen Shot 2022-03-13 at 12 39 27 PM" src="https://user-images.githubusercontent.com/51042907/158051815-df2fd537-53de-418c-9f52-0e7c9e8ea9ab.png">
  
- Select "create logical volume", then press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 39 58 PM" src="https://user-images.githubusercontent.com/51042907/158051833-74c3a580-26d5-4937-afd0-8c731a6537bc.png">
  
- Select the volume group where new logical volume need to be added then press enter.
  
  <img width="795" alt="Screen Shot 2022-03-13 at 12 40 14 PM" src="https://user-images.githubusercontent.com/51042907/158051838-a2b504a4-f864-4b41-9df1-c3e5ca250881.png">
  
- Type the name of new logical volume as shown below, then select continue and press enter. 

<img width="792" alt="Screen Shot 2022-03-13 at 12 40 56 PM" src="https://user-images.githubusercontent.com/51042907/158051853-ba060545-7f23-4d67-8815-03a1d650f4ea.png">
  
- Type the logical volume size as shown below, then select continue and press enter.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 12 41 45 PM" src="https://user-images.githubusercontent.com/51042907/158051885-8c04c78f-a1d6-4b99-9738-94e6222e36cb.png">
  
- Select "create logical volume", then press enter.
  
<img width="799" alt="Screen Shot 2022-03-13 at 12 42 20 PM" src="https://user-images.githubusercontent.com/51042907/158051906-29e87419-13c1-4fa9-ace8-8c45a4f36a0c.png">
  
- Select the volume group where new logical volume need to be added then press enter.
  
  <img width="793" alt="Screen Shot 2022-03-13 at 12 42 37 PM" src="https://user-images.githubusercontent.com/51042907/158051911-cb69ca44-17b0-402f-905b-89600712c6f6.png">
  
- Type the name of new logical volume as shown below, then select continue and press enter. 
  
<img width="799" alt="Screen Shot 2022-03-13 at 12 43 11 PM" src="https://user-images.githubusercontent.com/51042907/158051924-74236361-461f-4ce4-a479-61c2750a5e86.png">

- Type the logical volume size as shown below, then select continue and press enter.
  
<img width="794" alt="Screen Shot 2022-03-13 at 12 43 56 PM" src="https://user-images.githubusercontent.com/51042907/158051951-108530ab-aa71-4386-8cce-ad7a4fec93e2.png">
  
- Now you have created the all the logical volume we needed in this project we can select finish and press enter.
  
  <img width="800" alt="Screen Shot 2022-03-13 at 12 44 24 PM" src="https://user-images.githubusercontent.com/51042907/158051962-ea2980ac-2ae9-4c95-8b5c-8fc1a77869cf.png">

- After finishing configuring LVM we get as shown below.
  
<img width="814" alt="Screen Shot 2022-03-13 at 12 45 39 PM" src="https://user-images.githubusercontent.com/51042907/158051995-f546519d-6197-41be-949d-accd308af795.png">
  
- Now we are going to change the partition settings of LV home to what we need
  
  
<img width="796" alt="Screen Shot 2022-03-13 at 1 59 49 PM" src="https://user-images.githubusercontent.com/51042907/158054345-8bb0a61c-c823-4288-af14-975088ea3fa2.png">
<img width="794" alt="Screen Shot 2022-03-13 at 2 01 06 PM" src="https://user-images.githubusercontent.com/51042907/158054392-9a54f78e-cdf0-4294-9ae9-a1e8a33e9bf9.png">
  
- Now we are going to change the partition settings of LV root to what we need
  
  <img width="795" alt="Screen Shot 2022-03-13 at 2 02 18 PM" src="https://user-images.githubusercontent.com/51042907/158054432-c6de62ac-e7b5-4661-a9f7-3b471dbd25a3.png">

<img width="797" alt="Screen Shot 2022-03-13 at 2 02 40 PM" src="https://user-images.githubusercontent.com/51042907/158054443-354e3b8f-d79b-4f92-b65c-728ee8c8a6c7.png">

  - Now we are going to change the partition settings of LV srv to what we need
  
  <img width="793" alt="Screen Shot 2022-03-13 at 2 03 33 PM" src="https://user-images.githubusercontent.com/51042907/158054465-a880f830-1b8b-445a-9468-e1aa59204c30.png">

  <img width="800" alt="Screen Shot 2022-03-13 at 2 04 03 PM" src="https://user-images.githubusercontent.com/51042907/158054480-9651a744-d2f8-4d2b-9ab0-b465313044a9.png">
  
  - Now we are going to change the partition settings of LV swap to what we need
  
<img width="793" alt="Screen Shot 2022-03-13 at 2 05 12 PM" src="https://user-images.githubusercontent.com/51042907/158054511-9c09416b-7cb3-415e-a630-f504c9510262.png">
  <img width="792" alt="Screen Shot 2022-03-13 at 2 06 18 PM" src="https://user-images.githubusercontent.com/51042907/158054556-e53dcafb-7d90-4243-85fe-cebbd8c83d81.png">

   - Now we are going to change the partition settings of LV tmp to what we need
  
  <img width="794" alt="Screen Shot 2022-03-13 at 2 08 00 PM" src="https://user-images.githubusercontent.com/51042907/158054616-d62f3d5b-458a-4de8-ae8f-62093d0727b6.png">

<img width="798" alt="Screen Shot 2022-03-13 at 2 08 27 PM" src="https://user-images.githubusercontent.com/51042907/158054635-f1b4d528-d3b2-461f-a080-27b47c92066a.png">
  
  - Now we are going to change the partition settings of LV var to what we need
  
  <img width="797" alt="Screen Shot 2022-03-13 at 2 08 53 PM" src="https://user-images.githubusercontent.com/51042907/158054648-92e896ee-7415-4e9d-ae23-8f1691953b3d.png">

  <img width="798" alt="Screen Shot 2022-03-13 at 2 09 50 PM" src="https://user-images.githubusercontent.com/51042907/158054674-1e91d5ce-44e1-4405-bed7-6ba75c8b7f1d.png">

  
- Now we are going to change the partition settings of LV var-log to what we need
  <img width="796" alt="Screen Shot 2022-03-13 at 2 10 43 PM" src="https://user-images.githubusercontent.com/51042907/158054712-d6a4c0ab-c00b-4595-b102-03fa155109b5.png">


  <img width="797" alt="Screen Shot 2022-03-13 at 2 11 42 PM" src="https://user-images.githubusercontent.com/51042907/158054746-a330b815-f547-41e0-966c-433d1a6d083d.png">
  
- After making all the changes as shown below select "Finish partitioning and write changes to disk".
  
  <img width="794" alt="Screen Shot 2022-03-13 at 2 13 27 PM" src="https://user-images.githubusercontent.com/51042907/158054805-3a12aee2-7035-44f8-b827-a37d0d387174.png">

  - Select yes and press enter to confirm to write changes to the disks.
  
  <img width="797" alt="Screen Shot 2022-03-13 at 2 14 10 PM" src="https://user-images.githubusercontent.com/51042907/158054829-0e5896c7-7d00-44f7-b513-6f48d2ccc2b8.png">
  
  
