# 🏆 TP Appium - POM Structure

## 📁 Structure du Projet (POM)
Dans ce TP, nous utiliserons une architecture **Page Object Model (POM)**, avec les pages suivantes :
- **Animation**
- **Chronometer**
- **Home**
- **Seekbar**
- **Views**

---

## 🔥 Étape 1 - Désinstaller l’APK
Avant de commencer les tests, nous devons **supprimer l’APK existant**.

### ➤ 📌 Vérifier les appareils disponibles
```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb devices
```
**Sortie attendue :**
```
List of devices attached
emulator-5554   device
```

### ➤ 📌 Lister les émulateurs disponibles
```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>emulator -list-avds
```
**Exemple de sortie :**
```
Medium_Phone_API_35
Pixel_7_API_35
```

### ➤ 📌 Lancer un émulateur
```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>emulator -avd Pixel_7_API_35
```

### ➤ 📌 Désinstaller l'APK
```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb shell pm uninstall io.appium.android.apis
```
**Sortie attendue :**
```
Success
```

---

## 🚀 Étape 2 - Installer l’APK
### ➤ 📌 Télécharger et placer l’APK
- Téléchargez l’APK [**ApiDemos-debug.apk**](./[installation.md](https://github.com/appium/appium/tree/master/packages/appium/sample-code/apps))
- Placez-le dans le répertoire :
  ```
  C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools\
  ```

### ➤ 📌 Installer l’APK
```powershell
C:\Users\Administrateur\AppData\Local\Android\Sdk\platform-tools>adb install ApiDemos-debug.apk
```
**Sortie attendue :**
```
Performing Streamed Install
Success
```

---

## ⚡ Étape 3 - Tests Manuels Avant Automation
Avant de passer à **Appium**, nous devons **tester manuellement** l’application pour s’assurer qu’elle fonctionne correctement.
Il faut suivre l'[**enonce**](./[enonce.md])

### ➤ 📌 Lancer l’émulateur
```powershell
emulator -list-avds  # Liste des émulateurs disponibles
emulator -avd Pixel_7_API_35  # Lancer l'émulateur
```

### ➤ 📌 Lancer Appium en mode serveur
Dans une **nouvelle invite de commande** :
```powershell
appium --allow-cors
```

### ➤ 📌 Lancer Appium Inspector
- Ouvrir **Appium Inspector**.
- Connecter **l’émulateur** pour vérifier l’arborescence de l’UI.
- Capturer les **ID d’accessibilité** des éléments.

---

## 🏗️ Étape 4 - Mise en Place de la Structure POM
Nous allons organiser le projet avec la structure **Page Object Model (POM)** :

```
📁 appium_project
 ├── 📂 pages
 │   ├── animation_page.robot
 │   ├── chronometer_page.robot
 │   ├── home_page.robot
 │   ├── seekbar_page.robot
 │   ├── views_page.robot
 ├── 📂 tests
 │   ├── apidemos.robot
 ├── 📂 resources
 │   ├── libraries.resource
 ├── 📄 enonce.md
```

---

## 🔍 Étape 5 - Vérifications avant exécution

### ➤ 📌 Vérifier que l'extension **RobotCode** est installée sur **VS Code**
- Ouvrir **VS Code**.
- Aller dans **Extensions** (`Ctrl + Shift + X`).
- Rechercher **RobotCode** et l’installer.

### ➤ 📌 Vérifier que **AppiumLibrary** est installée
```powershell
pip install robotframework-appiumlibrary
```



