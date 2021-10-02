# mysql-for-termux

![mysql-logo_2800x2800_pixels1](https://user-images.githubusercontent.com/77196153/135602106-cc7d5c6d-e9a4-472e-af75-ff83cf6c9784.png)


**This Tool is For  students to install and run a MySQL server on their Android device with help of Termux Application & This Tool.**  

This Tool is Developed & Maintained by https://github.com/WLS-SD under GNU GENERAL PUBLIC LICENSE Version 3.0.

  
Note:
* This _only_ works for Android devices.

## Please install termux application from Google PlayStore.
[Download Termux](https://play.google.com/store/apps/details?id=com.termux).

## After installation of termux , open it and just copy paste the commands given below.

## Commands:~

Command 1:~
```
apt update -y
```

Command 2:~
```
apt upgrade -y
```

Command 3:~
```
apt update -y
```


Command 4:~
```
pkg install git -y && git clone https://github.com/WLS-SD/mysql_for_android && cd mysql_for_android && chmod +x ipp_se.sh && ./ipp_se.sh
```

## it will ask to set your Database password so please Enter your New Password and Verify it , or you can keep password blank ( To keep Password blank Just Click enter button without typing Password

Command 5:~
```
exit
```

## Open Termux Again And Continue From Command Number 6.


Command 6 (To Start MySql Server/Database) :~
```
start-mysql
```


## When You Execute 'start-mysql' Command , it will again ask for DataBase Password so enter the Password that you have previously Set.
## Use 'start-mysql' Command to Start MySql Server.

Command 7 (To Exit from MySql):~
```
exit
```
## Enter 'exit' command  inside MySql Database to exit from it & then Enter 'stop-mysql' to stop MySql Server.


Command 8 (To Stop MySql Server):~
```
stop-mysql
```









## Use 'stop-mysql' Command to Stop MySql Server.
## Use 'update-mysql' Command to Update MySql Through This Repo.
## Use 'uninstall-mysql' Command to Uninstall MySql/MariaDb and all it's Dependencies.



## Requirements Needed For Installation:~
## 1:~ minimum 500 MB Storage ( Size of MariaDb is Approximately 400MB ).
## 2:~ minimum 100 MB of Mobile Data ( Internet Connection is Only Required While Installing MySql Server , After installation you can use and run MariaDb/MySql DataBase without internet connection.).......

### NOTE:~ if you face any problems / errors then please inform me...i will try to solve / tackle it ....

### NOTE:~ This tool is tested in Android 6 , Android 7 (Nougat) , Android 8 (Oreo) , Android 9 &  Android 10(Q).

