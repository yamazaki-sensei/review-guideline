set -ux

git checkout master

curl  https://developer.apple.com/app-store/review/guidelines/ > results/en.html
curl  https://developer.apple.com/jp/app-store/review/guidelines/ > results/ja.html

git config --global user.email ohno@toreta.in
git config --global user.name hira

git add .
git commit -m "Updated at `date`"

if [ $? != 0 ]; then
  echo 'No change. Exit.'
  exit 0
fi

git remote add origin2 "https://yamazaki-sensei:${GITHUB_TOKEN}@github.com/yamazaki-sensei/review-guideline"
git push -u origin2 `git rev-parse --abbrev-ref HEAD`

