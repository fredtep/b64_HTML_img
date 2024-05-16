#!/bin/bash

TEMP=$(base64 -w0 cat.jpg)
echo "<img alt=\"Embedded Image\" src=\"data:image/png;base64,$TEMP\" />" > cat.b64