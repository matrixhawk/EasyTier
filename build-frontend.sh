#!/bin/bash

# 定义目录路径
dir1="/opt/buildhome/repo/easytier-web/frontend-lib/"
dir2="/opt/buildhome/repo//easytier-web/frontend/"

# 判断并处理第一个目录
if [ -d "$dir1" ]; then
    echo "Entering directory: $dir1"
    cd "$dir1"
    echo "Executing pnpm -r install..."
    pnpm -r install
    if [ $? -eq 0 ]; then
        echo "pnpm -r install succeeded."
        echo "Executing pnpm -r build..."
        pnpm -r build
        if [ $? -eq 0 ]; then
            echo "pnpm -r build succeeded."
        else
            echo "pnpm -r build failed."
        fi
    else
        echo "pnpm -r install failed."
    fi
else
    echo "Directory $dir1 does not exist."
fi

# 判断并处理第二个目录
if [ -d "$dir2" ]; then
    echo "Entering directory: $dir2"
    cd "$dir2"
    echo "Executing pnpm -r install..."
    pnpm -r install
    if [ $? -eq 0 ]; then
        echo "pnpm -r install succeeded."
        echo "Executing pnpm -r build..."
        pnpm -r build
        if [ $? -eq 0 ]; then
            echo "pnpm -r build succeeded."
        else
            echo "pnpm -r build failed."
        fi
    else
        echo "pnpm -r install failed."
    fi
else
    echo "Directory $dir2 does not exist."
fi
