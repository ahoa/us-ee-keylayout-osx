#!/bin/bash

set -e

iconutil -c icns --output us_ee.icns icon.iconset

cp us_ee.icns 'us_ee.bundle/Contents/Resources/U.S. klaviatuur Eesti klahvidega.icns'
cp us_ee.keylayout 'us_ee.bundle/Contents/Resources/U.S. klaviatuur Eesti klahvidega.keylayout'
sed -i '' 's/with Estonian keys/klaviatuur Eesti klahvidega/' 'us_ee.bundle/Contents/Resources/U.S. klaviatuur Eesti klahvidega.keylayout'

cp us_ee.icns 'us_ee.bundle/Contents/Resources/U.S. with Estonian keys.icns'
cp us_ee.keylayout 'us_ee.bundle/Contents/Resources/U.S. with Estonian keys.keylayout'
sed -i '' 's/id="-31342"/id="-14429"/' 'us_ee.bundle/Contents/Resources/U.S. with Estonian keys.keylayout'

zip -r -FS ../us_ee.bundle.zip us_ee.bundle
