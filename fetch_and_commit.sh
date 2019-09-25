set -eux

curl  https://developer.apple.com/app-store/review/guidelines/ > results/en.html
curl  https://developer.apple.com/jp/app-store/review/guidelines/ > results/ja.html

git config --global user.email ohno@toreta.in
git config --global user.name hira

git checkout master
git add .
git commit -m "Updated at `date`"

git remote add origin2 "https://yamazaki-sensei:${GITHUB_ACTION_TOKEN}@github.com/yamazaki-sensei/review-guideline"
git push -u origin2 `git rev-parse --abbrev-ref HEAD`

