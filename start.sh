#!/bin/bash
# 图片 Prompt 逆向生成器 - 本地启动脚本

PORT=8888
FILE="image-prompt-reverser.html"

# 检查文件是否存在
if [ ! -f "$FILE" ]; then
    echo "错误: 找不到 $FILE"
    exit 1
fi

# 查找可用端口
while lsof -Pi :$PORT -sTCP:LISTEN -t >/dev/null 2>&1; do
    PORT=$((PORT + 1))
done

echo "正在启动图片 Prompt 逆向生成器..."
echo "本地地址: http://localhost:$PORT/$FILE"
echo ""
echo "按 Ctrl+C 停止服务"
echo ""

# 启动 Python HTTP 服务器
python3 -m http.server $PORT &
SERVER_PID=$!

# 等待服务器启动
sleep 1

# 用默认浏览器打开
open "http://localhost:$PORT/$FILE"

# 等待用户按 Ctrl+C
trap "echo ''; echo '正在停止服务...'; kill $SERVER_PID 2>/dev/null; exit 0" INT
wait $SERVER_PID
