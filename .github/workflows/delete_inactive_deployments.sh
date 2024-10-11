#!/bin/bash

REPO="Camoo5/cloud-resume-challenge"
STATUS="main" # or any other status you want to filter by

echo "Fetching deployments from repo: $REPO with status: $STATUS"

# Get deployments with the specified status
DEPLOYMENTS=$(gh api -H "Accept: application/vnd.github+json" -X GET "/repos/$REPO/deployments" | jq -r --arg status "$STATUS" '.[] | select(.environment == $status) | .id')

echo "Deployments to delete: $DEPLOYMENTS"

# Loop through each deployment ID and delete it
for DEPLOYMENT_ID in $DEPLOYMENTS; do
  echo "Deleting deployment $DEPLOYMENT_ID"
  gh api --method DELETE -H "Accept: application/vnd.github+json" "/repos/$REPO/deployments/$DEPLOYMENT_ID"
done
