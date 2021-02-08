start /min hexo clean
ping -n 20 127.0.0.1
start /min hexo g
ping -n 20 127.0.0.1
start /min hexo d
ping -n 20 127.0.0.1
cd .deploy_git
git add .
git commit -m "describe"
git remote add origin https://github.com/izjr/izjr.github.io.git
git push origin "gh-pages"
start taskkill /f /im cmd.exe