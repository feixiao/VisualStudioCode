## Android Debugging with Visual Studio Code

#### 准备好工程
参考android


#### 配置Python环境
```shell
# 使用NDK r23c,24开始就没gdb了
/Applications/AndroidNDK8568313.app/Contents/NDK/prebuilt/darwin-x86_64/bin/gdb


```

#### 配置工程
##### 配置task，在.vscode的task.json文件中
```json
 	{
            "label": "Forward_Debug_Port",
            "type": "shell",
            "command": "adb",
            "args": [
                "forward",
                "tcp:5039",
                "tcp:5039"
            ],
            "presentation": {
                "reveal": "never"
            },
            "problemMatcher": []
    }
```
#### 配置工程启动，在.vscode的launch.json中
+ 注：osx 有问题Debugger executable '/usr/local/bin/gdb' is not signed.
```json
{
    "name": "Remote GDB",
    "type": "cppdbg",
    "request": "launch",
            
    "preLaunchTask": "Build_Android",
    "cwd": "${workspaceRoot}",
    "program": "${workspaceRoot}/android/build_arm64-v8a/hello",
    "additionalSOLibSearchPath": "${workspaceRoot}", 
    "miDebuggerServerAddress": "172.19.101.17:5039",
    "windows": {
        "miDebuggerPath": "",
        "MIMode": "gdb"
    },
    "osx": {
        "miDebuggerPath": "/Applications/AndroidNDK8568313.app/Contents/NDK/prebuilt/darwin-x86_64/bin/gdb",
        "MIMode": "gdb"
    }
}
        
```


#### 客户端配置
```shell
# 推送gdbserver到设备
export ANROID_NDK="/Applications/AndroidNDK8568313.app/Contents/NDK"
adb push ${ANROID_NDK}/prebuilt/android-arm64/gdbserver/gdbserver /data/local/tmp
# 使用adb命令来forward tcp端口是最常用的
adb forward tcp:5039 tcp:5039
```


#### 参考资料
+ [《Android 使用 gdb 搭配 Visual Studio Code 遠端除錯教學》](https://shengyu7697.github.io/android-debugging-with-vscode/)
+ [《Android Debugging with Visual Studio Code》](https://www.gamedev.net/tutorials/programming/general-and-gameplay-programming/android-debugging-with-visual-studio-code-r4820/)