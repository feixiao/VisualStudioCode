## Android Debugging with Visual Studio Code

#### 准备好工程
参考android

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
```json
{
            "name": "Remote GDB",
            "type": "cppdbg",
            "request": "launch",
            "preLaunchTask": "Forward_Debug_Port",  # 同上，依赖性
            "cwd": "${workspaceRoot}",
            "program": "${workspaceRoot}/android/build_arm64-v8a/hello",
            "additionalSOLibSearchPath": "${workspaceRoot}", # 这边其实没有依赖库
            "miDebuggerServerAddress": "localhost:5039",
            "setupCommands": [
                {
                    // "text": "set solib-absolute-prefix ${workspaceRoot}/app/path/android",
                    "ignoreFailures": false
                }
            ],
            "windows": {
                "miDebuggerPath": "C:/Tools/android-ndk-r13b/prebuilt/windows-x86_64/bin/gdb.exe",
                "MIMode": "gdb"
            }
        }
```



#### 参考资料
+ [《Android Debugging with Visual Studio Code》](https://www.gamedev.net/tutorials/programming/general-and-gameplay-programming/android-debugging-with-visual-studio-code-r4820/)