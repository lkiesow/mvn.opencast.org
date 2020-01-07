#!/bin/sh

echo '<html>' > index.html
echo '<head><title>mvn.opencast.org</title></head>' >> index.html
echo '<body><h1>mvn.opencast.org</h1><ul>' >> index.html
for f in $(find com org -type f); do
	echo "<li><a href='${f}'>${f}</a></li>" >> index.html
done
echo '</ul></body></html>' >> index.html
