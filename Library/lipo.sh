#!/bin/bash

frameworkName="ZDBaseKit"

#合并
lipo -create ./armv7/${frameworkName}.framework/${frameworkName}  ./x86/${frameworkName}.framework/${frameworkName} -output ${frameworkName}

#检查支持的平台
lipo -info  ${frameworkName}

#cp
rm -rf ${frameworkName}.framework
cp -rf ./armv7/${frameworkName}.framework ./${frameworkName}.framework

#替换可执行文件
cp -rf ${frameworkName} ./${frameworkName}.framework
rm -rf ${frameworkName}
