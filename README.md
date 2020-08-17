# awtk-ios

awtk ios 移植

> 编译awtk ios版本，需要MacOS 电脑，并安装Xcode。

## 下载 awtk 和 awtk-ios 源码

```
git clone https://github.com/zlgopen/awtk.git
git clone https://github.com/zlgopen/awtk-ios.git
```

## 创建并编译 demoui 的工程

* 进入awtk-ios

```
cd awtk-ios 
```

* 创建CMakefile工程

```
python create_project.py ../awtk/build.json
```

* 生成Xcode工程

```
cd build/demoui && ./generate-project.sh
```

* 编译工程

生成的Xcode工程文件为Xcode/awtk.xcodeproj，用Xcode打开即可。

```
open Xcode/awtk.xcodeproj
```


## 创建并编译自己的工程

创建并编译自己的工程需要先写一个配置文件，请参考 [平台编译配置](https://github.com/zlgopen/awtk/blob/master/docs/build_config.md)

后续过程和 demoui 完全一样。

## 其它参考

* [无证书真机调试](https://blog.csdn.net/zhenggaoxing/article/details/79042382)

* [真机调试或打包](https://juejin.im/post/5d1c6b2051882541fc2e096e)
