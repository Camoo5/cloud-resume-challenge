#!/bin/bash

REPO="Camoo5/cloud-resume-challenge"
BRANCH="main"

# Get all deployments associated with the main branch
DEPLOYMENTS=$(gh api -H "Accept: application/vnd.github+json" -X GET "/repos/$REPO/deployments" | jq -r --arg branch "$BRANCH" '.[] | select(.ref == $branch) | .id')

# Loop through each deployment ID and delete it
for DEPLOYMENT_ID in $DEPLOYMENTS; do
  echo "Deleting deployment $DEPLOYMENT_ID"
  gh api --method DELETE -H "Accept: application/vnd.github+json" "repos/$REPO/deployments/$DEPLOYMENT_ID"
done
