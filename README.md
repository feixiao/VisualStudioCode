# VisualStudioCode
使用VisualStudioCode打造Go和Cpp开发的IDE, 因为Goland和Clion真得用不起。



### Golang

```shell
go get -u -v github.com/nsf/gocode
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



#### Windows

+ [《Windows通过VisualStudioCode中配置GO开发环境》](https://www.cnblogs.com/it-tsz/p/9021752.html)



### C++
+ [《 Visual Studio Code 配置C/C++环境》](https://blog.csdn.net/saga1979/article/details/87938161)
+ [《Visual Studio Code远程调试》](https://www.cnblogs.com/mightycode/p/10876119.html) WSL、SSH、Containers
