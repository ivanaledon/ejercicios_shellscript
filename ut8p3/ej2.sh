#!/bin/bash

ls -lR / | egrep -- ------rwx > archivos_peligrosos.txt
