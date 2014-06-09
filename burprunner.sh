# Author: @irsdl
# 1GB memory, 256MB perm size - you can change them - you can change it
java -Xmx1024m -XX:MaxPermSize=256m -jar $(ls -t $(dirname $(readlink -f ${BASH_SOURCE[0]}))/burpsuite*.jar|head -1)

# if you had ssl problem, use this:
# java -Xmx1024m -XX:MaxPermSize=512m -Djsse.enableSNIExtension=false -jar $(ls -t $(dirname $(readlink -f ${BASH_SOURCE[0]}))/burpsuite*.jar|head -1)
