curl  https://developer.apple.com/app-store/review/guidelines/ > results/en.html
curl  https://developer.apple.com/jp/app-store/review/guidelines/ > results/ja.html

git config --global user.email ohno@toreta.in
git config --global user.name hira

git add .
git commit -m "Updated at `date`"
