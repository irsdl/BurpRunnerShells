# Author: @irsdl
# 1GB memory - you can change it
java -Xmx1024m -jar $(ls -t $(dirname $(readlink -f ${BASH_SOURCE[0]}))/burpsuite*.jar|head -1)