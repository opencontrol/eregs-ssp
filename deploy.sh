set -e

API="https://api.fr.cloud.gov"
ORG="sandbox-gsa"
SPACE=$1

# cf login --a $API --u $CF_USERNAME --p $CF_PASSWORD --o $ORG -s $SPACE

# http://docs.cloudfoundry.org/buildpacks/python/#vendoring
mkdir -p vendor
# https://lincolnloop.com/blog/automated-no-prompt-deployment-pip/
yes i | pip download -r requirements.txt -d vendor

# cf zero-downtime-push
cf push
