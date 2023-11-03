### Python


#### WSL配置conda
```shell
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo chmod 777 Miniconda3-latest-Linux-x86_64.sh 
./Miniconda3-latest-Linux-x86_64.sh


echo "export PATH=${HOME}/miniconda3/bin/conda:$PATH" >> ~/.bashrc

# 创建虚拟环境
conda create -n env_name python=3.6
#进入该虚拟环境
conda activate env_name
#退出该虚拟环境
conda deactivate env_name
conda install package_name
```

#### 如何运行在WSL的Python环境
+ 打开方式不能是直接打开文件夹，而是应该先连接到WSL，然后打开的时候就是在WSL路径。
+ 插件重新在这个环境安装。



#### 参考资料
+ [《win10+wsl2+vs code+python平台搭建笔记》](https://zhuanlan.zhihu.com/p/394535900)