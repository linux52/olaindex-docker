# olaindex-docker
本地环境 ubuntu 16.04 
wget -qO- https://get.docker.com/ | sh  安装docker

项目源码 https://github.com/WangNingkai/OLAINDEX.git
本地执行准备

git clone -b release https://github.com/WangNingkai/OLAINDEX.git tmp 
mv tmp/.git . 
rm -rf tmp 
git reset --hard
cp .env.example .env

修改 .env
  DB_CONNECTION=sqlite

请差考 https://github.com/WangNingkai/OLAINDEX/wiki
  
  
