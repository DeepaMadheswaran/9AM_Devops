# !bin/bash

#To find all file ends with .java
find /home/deepa/dir1/*.java -mtime -10

rm -r $(find /home/deepa/dir1/*.java -mtime -10)

find /home/deepa/dir1/*.java -mtime -10

