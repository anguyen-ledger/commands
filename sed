#Delete commentaires
sed '/^#/d' config.txt > config1.txt

etcdctl endpoint status --endpoints=$(etcdctl member list -w json | jq '.members[].clientURLs[]' -r | tr -d '\n' | sed 's/^http:\/\///g; s/http:\/\//,/g')
