function wait_for_scale {
  for i in {0..30}; do
    sleep 5
    if [ $(oc get dc "${1}" -o jsonpath="{.status.availableReplicas}") == "${2}" ]; then
      break
    fi
    echo "Waiting for ${1} to scale to ${2}"
  done
}
