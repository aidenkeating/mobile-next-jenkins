readonly SCRIPT_PATH=$(dirname $0)
readonly SCRIPT_ABSOLUTE_PATH=$(cd $SCRIPT_PATH && pwd)

. ${SCRIPT_ABSOLUTE_PATH}/util.sh
readonly jenkins_pod=$(oc get pods | grep jenkins- | awk '{ print $1 }')

oc cp ./plugins/android-signing main/${jenkins_pod}:/var/lib/jenkins/plugins/
oc cp ./plugins/android-signing.jpi main/${jenkins_pod}:/var/lib/jenkins/plugins/

oc scale dc jenkins --replicas=0
wait_for_scale "jenkins" 0
oc scale dc jenkins --replicas=1
wait_for_scale "jenkins" 1
