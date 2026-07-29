# GitHub 部署配置

## 仓库信息

- 仓库地址：https://github.com/andylalex/cdf-dhzx
- GitHub Pages：https://andylalex.github.io/cdf-dhzx/
- 用户端原型：exchange-prototype/index.html
- 管理端原型：exchange-admin/index.html

## 更新流程

```bash
cd /workspace

# 1. 添加修改的文件
git add exchange-prototype/ exchange-admin/

# 2. 提交
git commit -m "update: 更新描述"

# 3. 推送（自动触发 GitHub Pages 构建）
git push
```

## 注意事项

- push 后 GitHub Pages 需要 1-2 分钟生效
