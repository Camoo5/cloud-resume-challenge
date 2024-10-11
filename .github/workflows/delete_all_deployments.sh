
#!/bin/bash

REPO="Camoo5/cloud-resume-challenge"
DEPLOYMENTS=$(gh api -H "Accept: application/vnd.github+json" -X GET "/repos/$REPO/deployments" | jq '.[].id')

for DEPLOYMENT_ID in $DEPLOYMENTS; do
  gh api --method DELETE -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" "/repos/$REPO/deployments/$DEPLOYMENT_ID"
done


