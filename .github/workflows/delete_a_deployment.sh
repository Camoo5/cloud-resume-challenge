
deployments=$(gh api -H "Accept: application/vnd.github+json" /repos/Camoo5/cloud-resume-challenge/deployments | jq '.[].id')
for deployment_id in $deployments; do
  gh api --method DELETE -H "Accept: application/vnd.github+json" /repos/Camoo5/cloud-resume-challenge/deployments/$deployment_id
