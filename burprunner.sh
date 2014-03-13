# Author: @irsdl
# 1GB memory - you can change it
java -Xmx1024m -jar $(ls -t $(dirname $(readlink -f ${BASH_SOURCE[0]}))/burpsuite*.jar|head -1)

# if you had ssl problem, use this:
# java -Xmx1024m -Djsse.enableSNIExtension=false -jar $(ls -t $(dirname $(readlink -f ${BASH_SOURCE[0]}))/burpsuite*.jar|head -1)
