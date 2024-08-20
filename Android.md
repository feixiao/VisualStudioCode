## AOSP

#### 配置VisualStudioCode
##### Java 代码的跳转
frameworks/base 里面大多是 Java 代码，VS Code 打开后，你需要告诉它对应的 classpath。这个可以通过创建一个 build.gradle 解决。
```gradle
# frameworks/base/build.gradle
# 其他的自己按需加入 

apply plugin: 'java'

sourceSets {
    main {
        java {
            srcDirs 'core/java'
            srcDirs 'graphics/java'
        }
    }
}
```

##### C++代码跳转
+ 在 Mac 上，使用 Shift + Command + P 打开 Command Pallette。找到 C/Cpp: Edit configurations。然后就会打开一个 c_cpp_properties.json 文件。

+ 配置c_cpp_properties.json文件
```json
{
    "configurations": [
        {
            "name": "Linux",
            "includePath": [
                "${workspaceFolder}/**",
                "/usr/local/include",
                "/usr/include",
                "${workspaceFolder}/frameworks/av/include",
                "${workspaceFolder}/frameworks/av/media/libmedia/include"
            ],
            
            "defines": [
                "__ANDROID__"
            ],

            "browse": {
                "path": [
                    "${workspaceFolder}",
                    "${workspaceFolder}/**",
                    "/usr/local/include",
                    "/usr/include"
                ],
                "limitSymbolsToIncludedHeaders": true,
                "databaseFilename": ""
            },
            "compilerPath": "/usr/bin/clang",
            "cStandard": "c17",
            "intelliSenseMode": "linux-clang-x64"
        }
    ],
    "version": 4
}

```

#### 参考资料

- [ctags-support](https://marketplace.visualstudio.com/items?itemName=jaydenlin.ctags-support)
- [《如何使用 Visual Studio Code 阅读 Android 源码》](https://jekton.github.io/2018/05/11/how-to-read-android-source-code/)
- [《使用VScode阅读Android Kernel代码并调试》](https://juejin.cn/post/7247167103874007077)