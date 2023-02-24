### Go

```shell
export GO111MODULE=on
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/rogpeppe/godef@latest
go install github.com/golang/lint/golint@latest
go install github.com/lukehoban/go-find-references@latest
go install github.com/lukehoban/go-outline@latest
go install github.com/tpng/gopkgs@latest
go install github.com/newhook/go-symbols@latest
go install sourcegraph.com/sqs/goreturns@latest
go install golang.org/x/tools/cmd/gorename@latest
go install github.com/mdempsky/gocode@latest
go install golang.org/x/tools/cmd/guru@latest
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/cweill/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/davidrjenni/reftools/cmd/fillstruct@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
# # tools/cmd/gorename
# cd $GOPATH/src/golang.org
# git clone https://github.com/golang/tools
# cd cmd/gorename
# go install
```

#### 多版本管理
```shell
curl -sSL https://github.com/soulteary/gvm/raw/master/binscripts/gvm-installer | bash

gvm install go1.19.6 -B
gvm use go1.19.6
gvm use go1.19.6 --default

gvm install go1.20.1 -B
gvm use go1.20.1
```
+ [《M1 芯片 Mac 上更好的 Golang 使用方案》](https://segmentfault.com/a/1190000041899585)

#### 参考项目
+ [《go-zero-demo》](https://github.com/feixiao/go-zero-demo.git)



##### 参考资料
+ [《Windows通过VisualStudioCode中配置GO开发环境》](https://www.cnblogs.com/it-tsz/p/9021752.html)
+ [《VSCode 开发 Go 程序》](https://www.toutiao.com/i6870497110341452300/?tt_from=weixin&utm_campaign=client_share&wxshare_count=1&timestamp=1599706426&app=news_article&utm_source=weixin&utm_medium=toutiao_ios&use_new_style=1&req_id=202009101053460101310990270200F1B7&group_id=6870497110341452300)
+ [《VsCode Go插件配置最佳实践指南》](https://zhuanlan.zhihu.com/p/320343679)
+ [《VS Code 中的代码自动补全和自动导入包》](https://maiyang.me/post/2018-09-14-tips-vscode/)