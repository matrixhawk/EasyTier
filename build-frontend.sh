#!/bin/bash

# 定义目录路径
dir1="/opt/buildhome/repo/easytier-web/frontend-lib/"
dir2="/opt/buildhome/repo/easytier-web/frontend/"

# 处理第一个目录
cd "$dir1"
pnpm -r install
pnpm -r build


# 处理第二个目录
cd "$dir2"
pnpm -r install
pnpm -r build
