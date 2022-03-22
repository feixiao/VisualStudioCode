# VisualStudioCode
使用VisualStudioCode打造Go和Cpp开发的IDE, 因为Goland和Clion真得用不起。



### Go

```shell
go get golang.org/x/tools/gopls@latest
go get -u github.com/cweill/gotests
go get github.com/go-delve/delve/cmd/dlv
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/golang/lint/golint
go get -u -v github.com/lukehoban/go-find-references
go get -u -v github.com/lukehoban/go-outline
go get -u -v github.com/tpng/gopkgs 
go get -u -v github.com/newhook/go-symbols

# tools/cmd/gorename
cd $GOPATH/src/golang.org
git clone https://github.com/golang/tools
cd cmd/gorename
go install
```
##### 参考资料
+ [《Windows通过VisualStudioCode中配置GO开发环境》](https://www.cnblogs.com/it-tsz/p/9021752.html)
+ [《VSCode 开发 Go 程序》](https://www.toutiao.com/i6870497110341452300/?tt_from=weixin&utm_campaign=client_share&wxshare_count=1&timestamp=1599706426&app=news_article&utm_source=weixin&utm_medium=toutiao_ios&use_new_style=1&req_id=202009101053460101310990270200F1B7&group_id=6870497110341452300)



### C++
##### 推荐使用cmake-tools插件
+ [《例子》](https://github.com/feixiao/cmake-catch-vsc-template)
+ [《Get started with CMake Tools on Linux》](https://code.visualstudio.com/docs/cpp/cmake-linux)

##### ToDo
+ [ ] 支持静态库
+ [ ] 支持单元测试

##### 参考资料
+ [《Visual Studio Code远程调试》](https://www.cnblogs.com/mightycode/p/10876119.html) WSL、SSH、Containers）
+ [《把你的 VS Code 打造成 C++ 开发利器》](https://mp.weixin.qq.com/s/zA3HWWq-R0PT40CuLIbGsQ)
+ [《VS Code与CMake》](https://www.cnblogs.com/iwiniwin/p/13705456.html)
+ [《VS Code 搭建 C++ 开发环境(OSX系统)》](https://xie.infoq.cn/article/1dd3fe369ec9f3db5661570fa)
