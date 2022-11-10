while getopts i:m:r: flag
do
    case "${flag}" in
        i) image=${OPTARG} && yq e '.spec.template.spec.containers[0].image="'$image'"' ../template/deployment.yaml | tee production.yaml;;
        m) name=${OPTARG} && yq e '.metadata.name="'$name'"' ../template/deployment.yaml | tee production.yaml;;
        r) replicas=${OPTARG} && yq e '.spec.replicas='$replicas'' ../template/deployment.yaml | tee production.yaml;;
    esac
done



