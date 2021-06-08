curl -s -H "Authorization: Token XXX" https://netbox.aws.prd.ldg-tech.com/api/dcim/cables/ | jq '.results | map(.id) | to_entries | map ( {"id":.key} )' -c
