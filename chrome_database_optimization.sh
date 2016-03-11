#!/bin/bash

cd /home/mattia/.config/google-chrome/Default #Specify directory where google-chrome files are located

for i in `file *|grep SQL|cut -f1 -d:`; do echo "VACUUM;" | sqlite3 $i ; echo $i Ok; done

cd *Storage && for i in `file *|grep SQL|cut -f1 -d:`; do echo "VACUUM;" | sqlite3 $i ; echo $i Ok; done

