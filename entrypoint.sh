#!/bin/sh

curl -x HTTP_PROXY -v https://www.browserstack.com/ || true

echo "run_id: $RUN_ID"
npm run test:browserstack
test_exit_code=$?

npm run report:publish
publish_exit_code=$?

if [ $publish_exit_code -ne 0 ]; then
  echo "failed to publish test results"
  exit $publish_exit_code
fi

echo "checking browserstack local"
ls -lah ~/.browserstack || true
cat ~/.browserstack/BrowserStackLocal || true
echo "local.log"
cat local.log || true
exit $test_exit_code
