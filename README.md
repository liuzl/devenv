# devenv

## .vimrc

* https://stackoverflow.com/questions/25444680/unknown-function-vundlebegin
* `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## 配置多个Java版本

* https://segmentfault.com/a/1190000013131276

## golang安装

```sh
cd ~
git clone https://github.com/liuzl/devenv
wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
tar -xvzf go1.13.linux-amd64.tar.gz
cat devenv/goenv.bashrc >> .bashrc
```

## 设置windows终端的环境变量
```sh
$env:HTTPS_PROXY="http://127.0.0.1:8001"
$env:HTTP_PROXY="http://127.0.0.1:8001"
```

## 设置Mac在命令行打开vscode
```sh
# 在zshrc中添加
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
```
