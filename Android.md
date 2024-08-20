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
            "name": "Mac",
            "includePath": [
                "${workspaceFolder}",
                "${workspaceFolder}/core/include",
                "${workspaceFolder}/core/base/include",
                "${workspaceFolder}/core/logd/",
                "${workspaceFolder}/core/libutils/include",
                "${workspaceFolder}/core/liblog/include",
                "${workspaceFolder}/core/libcutils/include",
                "${workspaceFolder}/core/libsystem/include",
                "/Volumes/case-sensitive/android-os/platform/bionic/libc/include",
                "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/uapi",
                "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/uapi/asm-x86",
                "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/android/uapi",
                "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1",
                "/usr/local/include",
                "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.0.0/include",
                "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include",
                "/usr/include"
            ],
            "defines": [
                "__ANDROID__"
            ],
            "intelliSenseMode": "clang-x64",
            "browse": {
                "path": [
                    "${workspaceFolder}",
                    "${workspaceFolder}/core/include",
                    "${workspaceFolder}/core/base/include",
                    "${workspaceFolder}/core/logd/",
                    "${workspaceFolder}/core/libutils/include",
                    "${workspaceFolder}/core/liblog/include",
                    "${workspaceFolder}/core/libcutils/include",
                    "${workspaceFolder}/core/libsystem/include",
                    "/Volumes/case-sensitive/android-os/platform/bionic/libc/include",
                    "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/uapi",
                    "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/uapi/asm-x86",
                    "/Volumes/case-sensitive/android-os/platform/bionic/libc/kernel/android/uapi",
                    "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1",
                    "/usr/local/include",
                    "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/9.0.0/include",
                    "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include",
                    "/usr/include"
                ],
                "limitSymbolsToIncludedHeaders": true,
                "databaseFilename": ""
            },
            "macFrameworkPath": [
                "/System/Library/Frameworks",
                "/Library/Frameworks"
            ],
            "compilerPath": "/usr/bin/clang",
            "cStandard": "c11",
            "cppStandard": "c++17"
        },
        {
            "name": "Linux",
            "includePath": [
                "/usr/include",
                "/usr/local/include",
                "${workspaceFolder}"
            ],
            "defines": [],
            "intelliSenseMode": "clang-x64",
            "browse": {
                "path": [
                    "/usr/include",
                    "/usr/local/include",
                    "${workspaceFolder}"
                ],
                "limitSymbolsToIncludedHeaders": true,
                "databaseFilename": ""
            }
        },
        {
            "name": "Win32",
            "includePath": [
                "C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/include",
                "${workspaceFolder}"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "intelliSenseMode": "msvc-x64",
            "browse": {
                "path": [
                    "C:/Program Files (x86)/Microsoft Visual Studio 14.0/VC/include/*",
                    "${workspaceFolder}"
                ],
                "limitSymbolsToIncludedHeaders": true,
                "databaseFilename": ""
            }
        }
    ],
    "version": 4
}
```

#### 参考资料

- [ctags-support](https://marketplace.visualstudio.com/items?itemName=jaydenlin.ctags-support)
- [《如何使用 Visual Studio Code 阅读 Android 源码》](https://jekton.github.io/2018/05/11/how-to-read-android-source-code/)
- [《使用VScode阅读Android Kernel代码并调试》](https://juejin.cn/post/7247167103874007077)