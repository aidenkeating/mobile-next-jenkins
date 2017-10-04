readonly SCRIPT_PATH=$(dirname $0)
readonly SCRIPT_ABSOLUTE_PATH=$(cd $SCRIPT_PATH && pwd)

oc create -n main -f ${SCRIPT_ABSOLUTE_PATH}/../templates/android.configmap.yaml
