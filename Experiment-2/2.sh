cp ~/.mozilla/firefox/id7fekl4.default-esr/places.sqlite mozilla_history.sqlite

sqlite3 ./mozilla_history.sqlite <<EOF > history.txt
.headers on
.mode column
SELECT * FROM moz_places limit 1;
EOF

cat history.txt