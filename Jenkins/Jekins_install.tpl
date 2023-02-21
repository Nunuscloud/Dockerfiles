#!/bin/bash
docker pull jenkins/jenkins:lts &&
docker run -itd -p 8085:8080 -v /jenkins:/var/jenkins_home –name jenkins -u root jenkins/jenkins:lts &&
#Admin Password
docker exec -it jenkins /bin/bash &&
# docker logs jenkins -f
echo "
 _________________________
 ( Jekins install Done !)
 -------------------------
        o   ^__^
         o  (oo)\_______
            (__)\       )\/
                ||----w |
                ||     ||
"
exit 0
