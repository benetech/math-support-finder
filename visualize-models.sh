#!/bin/sh
echo "Generating models.png"
railroady -o models.dot -M
dot -Tpng models.dot > models.png
echo "Success. Check out models.png. Also, you may wish to delete models.dot to clean things up."

