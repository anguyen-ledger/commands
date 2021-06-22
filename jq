curl -s -H "Authorization: Token XXX" https://netbox.aws.prd.ldg-tech.com/api/dcim/cables/ | jq '.results | map(.id) | to_entries | map ( {"id":.key} )' -c
curl -s -H "Authorization: Token xxx" https://netbox.aws.prd.ldg-tech.com/api/dcim/devices/\?limit=none | jq '.results as $parent | .results | map(select(.site.id != 1)) | map( {"id":.id} )' -c | curl -i -X DELETE \
-H "Authorization: Token xxx" \
-H "Content-Type: application/json" \
https://netbox.aws.prd.ldg-tech.com/api/dcim/devices/ \

