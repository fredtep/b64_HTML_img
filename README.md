# To Fill with interesting stuff

Ce script encode une image en base64 et l'insert dans un tag <img> pour une incorporation sans lien.
Le script traite toutes les images qui se trouvent dans le dossier images. 
Le tag est créé dans le fichier img.ext.txt

**e.g. image.jpg > image.jpg.txt**

## Exécution du script sous linux

```
./img2B64.sh
```

N.B. Si le script ne s'exécute pas, il faut le rendre exécutable : `chmod +x ./img2B64.sh`

## Exécution du script sous windows

```
powershell.exe -executionpolicy bypass .\img2B64.ps1
```

