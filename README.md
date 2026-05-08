# 图片 Prompt 逆向生成器

一个单页 Web 应用，支持上传图片逆向生成 AI 绘图 Prompt，以及使用 Prompt 直接生成图片。

## 功能

- **逆向 Prompt**：上传图片，通过多模态大模型（GPT-4o 等）分析图片结构，输出中英双语的生产级 Prompt 模板
- **生成图片**：输入 Prompt，选择模型和尺寸，生成新图片；支持上传模版图和参考图来控制风格和主体

## 技术栈

- 纯前端：HTML + CSS + JavaScript（单文件）
- 后端 API：apimart.ai（OpenAI 兼容接口）
- 本地服务：Python `http.server` + Bash 启动脚本

## 快速启动

```bash
./start.sh
```

或手动：

```bash
python3 -m http.server 8888
# 然后访问 http://localhost:8888/image-prompt-reverser.html
```

## 文件结构

```
.
├── image-prompt-reverser.html   # 主页面（单文件应用）
├── start.sh                     # 本地启动脚本
├── .gitignore                   # Git 忽略配置
├── README.md                    # 本文件
└── PROGRESS.md                  # 项目进度与版本记录
```

## 远程仓库

- GitHub：`https://github.com/Lam129/-`
