TP Appium 

POM structure 
Page: animation, chronometer, home, seekbar, views 

1- Etape 1 - Désinstaller l’APK

Supprimer Apk demos manuellement 

```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb devices
List of devices attached
emulator-5554   device
#Liste des tel dispo 
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>emulator -list-avds
Medium_Phone_API_35
Pixel_7_API_35
#Lancer l'emulateur 
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>emulator -avd Pixel_7_API_35
#Desinstaller l'APK
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb shell pm uninstall io.appium.android.apis
Success

```

2- Etape 2 - Installer l’APK 

Télécharger l’APK 

La placer dans le dossier C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools> 

ensuite faire la commande suivante :
#Installer l'APK
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb install ApiDemos-debug.apk
Performing Streamed Install
Success

4- ETAPES 

Faire le test manuel avant tout 

On lance l’émulateur

Shell

```powershell
emulator -list-avds #Liste des émulateurs dispo 
emulator -avd Pixel_7_API_35 #lance l'emulateur choisi
```

On lance Appium avec une invite de commande

```powershell
appium --allow-cors
```

Il faut lancer APPIUM INSPECTOR 

Create structure WITH POM 

Verify Appium library is installed

On verifie qu'on a l'extension ROBOTCODE sur VScode 

