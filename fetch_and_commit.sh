source env.sh

curl $EN_URL > results/en.html
curl $JA_URL > results/ja.html

git add .
git commit -m "Updated at `date`"
