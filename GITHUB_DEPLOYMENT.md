# GitHub Pages 部署指南 - 舒室国际物流网站

## ✅ 已完成准备工作

网站文件已在本地 Git 仓库中提交：
- ✅ 移动端优化完成
- ✅ SEO 优化完成
- ✅ 性能优化完成
- ✅ Git 仓库初始化完成
- ✅ README.md 创建完成

## 🚀 部署步骤

### 第 1 步：创建 GitHub 账号（如已有可跳过）

1. 访问 https://github.com
2. 点击 "Sign up"
3. 注册账号（建议使用公司邮箱：sales@cosylogistics.net）

---

### 第 2 步：创建 GitHub 仓库

**方法 A：使用 GitHub 网页（推荐）**

1. 登录 GitHub
2. 点击右上角 **"+"** → **"New repository"**
3. 填写信息：
   - **Repository name**: `cosy-logistics-website`
   - **Description**: `Shenzhen Cosy International Logistics - Company Website`
   - **Visibility**: Public（公开）
   - ❌ 不要勾选 "Initialize this repository with a README"
4. 点击 **"Create repository"**

**方法 B：使用命令行**
```bash
# 安装 GitHub CLI（如未安装）
# 然后运行：
gh repo create cosy-logistics-website --public --source=. --remote=origin --push
```

---

### 第 3 步：推送代码到 GitHub

创建仓库后，GitHub 会显示推送指令。按以下步骤操作：

```bash
cd /home/admin/openclaw/workspace/cosy-logistics-website

# 添加远程仓库（将 YOUR_USERNAME 替换为你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/cosy-logistics-website.git

# 推送代码
git push -u origin main
```

**如果遇到认证问题**，使用 Personal Access Token：

1. 访问 https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选权限：`repo`（全部）、`workflow`
4. 生成后复制 token
5. 推送时使用 token 代替密码：
```bash
git push -u origin main
# 用户名：YOUR_USERNAME
# 密码：粘贴刚才复制的 token
```

---

### 第 4 步：启用 GitHub Pages

1. 进入仓库页面：https://github.com/YOUR_USERNAME/cosy-logistics-website
2. 点击 **"Settings"**（设置）
3. 左侧菜单点击 **"Pages"**
4. **Build and deployment** 部分：
   - **Source**: Deploy from a branch
   - **Branch**: 选择 `main` / `root`
5. 点击 **"Save"**

---

### 第 5 步：等待部署完成

- GitHub 会自动构建并部署网站
- 通常 1-2 分钟内完成
- 刷新 Pages 设置页，会看到部署成功的链接

**访问地址**：
```
https://YOUR_USERNAME.github.io/cosylogistics-website/
```

---

### 第 6 步：配置自定义域名（可选）

如果想使用 `www.cosylogistics.net`：

#### A. GitHub 仓库设置
1. Settings → Pages → Custom domain
2. 输入：`www.cosylogistics.net`
3. 点击 **Save**

#### B. 域名 DNS 配置
在域名服务商（如阿里云、GoDaddy）添加 DNS 记录：

```
类型    主机记录    记录值
CNAME   www         YOUR_USERNAME.github.io
A       @           185.199.108.153
A       @           185.199.109.153
A       @           185.199.110.153
A       @           185.199.111.153
```

#### C. 创建 CNAME 文件
在网站根目录创建 `CNAME` 文件：
```bash
echo "www.cosylogistics.net" > /home/admin/openclaw/workspace/cosy-logistics-website/CNAME
git add CNAME
git commit -m "Add custom domain"
git push
```

---

## 📱 测试网站

部署完成后，测试以下内容：

### 1. 基础测试
- [ ] 打开 https://YOUR_USERNAME.github.io/cosy-logistics-website/
- [ ] 点击 "中文" 和 "English" 按钮
- [ ] 检查所有页面加载正常

### 2. 移动端测试
- [ ] 用手机访问网站
- [ ] 测试汉堡菜单
- [ ] 检查布局是否正常

### 3. SEO 测试
- [ ] Google 搜索：`site:YOUR_USERNAME.github.io cosy logistics`
- [ ] 使用 Google Mobile-Friendly Test：
  https://search.google.com/test/mobile-friendly

### 4. 性能测试
- [ ] 使用 PageSpeed Insights：
  https://pagespeed.web.dev/

---

## 🔄 更新网站

后续更新内容后，推送即可自动部署：

```bash
cd /home/admin/openclaw/workspace/cosy-logistics-website

# 修改文件后
git add .
git commit -m "Update: 修改内容描述"
git push
```

GitHub Pages 会在 1-2 分钟内自动更新。

---

## ⚠️ 常见问题

### 1. 404 错误
- 等待几分钟（部署需要时间）
- 检查 Branch 设置是否为 `main`
- 确认 `index.html` 在根目录

### 2. 样式/图片不加载
- 检查文件路径是否正确
- 清除浏览器缓存
- 使用相对路径（已配置）

### 3. 推送失败
- 检查 GitHub 用户名是否正确
- 使用 Personal Access Token 代替密码
- 确认仓库存在且你有权限

### 4. HTTPS 混合内容警告
- 确保所有资源使用 HTTPS 或相对路径
- 已配置（Tailwind CDN 使用 HTTPS）

---

## 📊 添加访问统计（可选）

### Google Analytics
1. 访问 https://analytics.google.com/
2. 创建账号和媒体资源
3. 获取跟踪代码
4. 添加到每个 HTML 文件的 `<head>` 部分

### GitHub Traffic
仓库 → Insights → Traffic
- 查看访问者数量
- 热门内容
- 来源网站

---

## 🎯 下一步建议

1. **提交到搜索引擎**
   - Google Search Console: https://search.google.com/search-console
   - 提交 sitemap.xml

2. **添加联系表单后端**
   - 使用 Formspree（免费）
   - 或 Netlify Forms

3. **定期更新内容**
   - 添加新闻动态
   - 更新运价信息
   - 发布行业洞察

---

## 📞 需要帮助？

如果在部署过程中遇到问题，请告诉我：
- 错误信息
- 当前步骤
- GitHub 用户名（可选）

我会帮你解决！

---

**祝你部署顺利！** 🚀
