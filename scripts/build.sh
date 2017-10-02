readonly SCRIPT_PATH=$(dirname $0)
readonly SCRIPT_ABSOLUTE_PATH=$(cd $SCRIPT_PATH && pwd)

. ${SCRIPT_ABSOLUTE_PATH}/util.sh

oc process jenkins-persistent -n openshift | oc create -n main -f -
wait_for_scale "jenkins" 1
