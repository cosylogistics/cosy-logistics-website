# Cosy Logistics Website - 部署指南

## 📋 网站文件结构

```
cosy-logistics-website/
├── index.html              # 语言选择入口页
├── index_cn.html           # 中文版网站（原始版本）
├── index_en.html           # 英文版网站（原始版本）
├── index_cn_optimized.html # 中文版网站（优化版本 - 推荐）
├── index_en_optimized.html # 英文版网站（优化版本 - 推荐）
├── logo.jpg                # 原始 Logo
└── logo_white.jpg          # 白色背景 Logo
```

## ✅ 已完成的优化

### 1. 移动端优化
- ✅ 响应式设计（手机/平板/电脑完美适配）
- ✅ 移动端菜单（汉堡菜单）
- ✅ 触摸友好的按钮大小
- ✅ 自适应字体大小
- ✅ 移动端图片优化

### 2. SEO 优化
- ✅ Meta 标签（title, description, keywords）
- ✅ Open Graph 社交分享标签
- ✅ 结构化数据（Schema.org/LogisticsService）
- ✅ 语义化 HTML 标签
- ✅ 图片 alt 属性
- ✅ 规范 URL（canonical）
- ✅ 多语言支持（hreflang）
- ✅ robots 索引设置

### 3. 性能优化
- ✅ CSS 异步加载（Font Awesome）
- ✅ 预连接 CDN 资源（preconnect）
- ✅ 关键 CSS 内联
- ✅ 图片懒加载支持
- ✅ 图片尺寸指定（避免布局偏移）
- ✅ 最小化 HTTP 请求
- ✅ 移动端优化加载

## 🚀 部署方案

### 方案 1: GitHub Pages（推荐 - 免费）

#### 步骤：
1. **创建 GitHub 仓库**
   ```bash
   cd /home/admin/openclaw/workspace/cosy-logistics-website
   git init
   git add .
   git commit -m "Initial commit - Cosy Logistics website"
   ```

2. **创建 GitHub 仓库并推送**
   - 访问 https://github.com/new
   - 创建仓库名：`cosy-logistics-website`
   - 推送代码：
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/cosy-logistics-website.git
   git branch -M main
   git push -u origin main
   ```

3. **启用 GitHub Pages**
   - 进入仓库 Settings → Pages
   - Source 选择：`main branch`
   - 保存后获得网址：`https://YOUR_USERNAME.github.io/cosy-logistics-website/`

4. **绑定自定义域名（可选）**
   - 在仓库 Settings → Pages → Custom domain
   - 输入：`www.cosylogistics.net`
   - 在域名 DNS 服务商添加 CNAME 记录

---

### 方案 2: Netlify（推荐 - 免费 + 自动部署）

#### 步骤：
1. **访问** https://www.netlify.com/
2. **注册/登录**
3. **创建新站点**
   - 选择 "Deploy manually"
   - 上传 `cosy-logistics-website` 文件夹
   - 或连接 GitHub 仓库自动部署

4. **配置自定义域名**
   - Domain settings → Add custom domain
   - 输入：`www.cosylogistics.net`
   - 按提示配置 DNS

---

### 方案 3: Vercel（推荐 - 免费 + 快速）

#### 步骤：
1. **访问** https://vercel.com/
2. **注册/登录**
3. **Import Project**
   - 连接 GitHub 仓库
   - 或拖拽上传文件夹

4. **配置域名**
   - Settings → Domains
   - 添加：`www.cosylogistics.net`

---

### 方案 4: 传统主机部署

#### 要求：
- 支持静态 HTML 的 Web 服务器（Apache/Nginx）
- FTP/SFTP 访问权限

#### 步骤：
1. **上传文件到服务器**
   ```bash
   # 使用 scp 上传
   scp -r /home/admin/openclaw/workspace/cosy-logistics-website/* user@your-server:/var/www/html/
   
   # 或使用 FTP 客户端（FileZilla 等）
   ```

2. **配置服务器（如需要）**
   - 确保 index.html 是默认首页
   - 配置 HTTPS 证书（Let's Encrypt 免费）

---

## 🔧 部署前检查清单

- [ ] 替换优化版本（`index_cn_optimized.html` → `index_cn.html`）
- [ ] 替换优化版本（`index_en_optimized.html` → `index_en.html`）
- [ ] 测试所有链接正常工作
- [ ] 测试移动端显示
- [ ] 测试表单提交功能
- [ ] 压缩图片（可选，使用 TinyPNG 等工具）
- [ ] 添加 Google Analytics（可选）
- [ ] 配置 HTTPS

## 📊 SEO 检查清单

- [ ] 每个页面有唯一的 title 和 description
- [ ] 添加了结构化数据
- [ ] 图片有 alt 属性
- [ ] 内部链接正常
- [ ] 移动端友好（已优化）
- [ ] 页面加载速度快（已优化）
- [ ] 提交到 Google Search Console
- [ ] 创建并提交 sitemap.xml

## 🌐 域名 DNS 配置

如果使用自定义域名 `www.cosylogistics.net`：

### GitHub Pages:
```
类型    主机记录    记录值
CNAME   www         YOUR_USERNAME.github.io
A       @           185.199.108.153
A       @           185.199.109.153
A       @           185.199.110.153
A       @           185.199.111.153
```

### Netlify:
```
类型    主机记录    记录值
CNAME   www         YOUR_SITE.netlify.app
A       @           75.2.60.5
```

### Vercel:
```
类型    主机记录    记录值
CNAME   www         cname.vercel-dns.com
A       @           76.76.21.21
```

## 📱 测试工具

- **移动端测试**: https://search.google.com/test/mobile-friendly
- **页面速度**: https://pagespeed.web.dev/
- **SEO 检查**: https://search.google.com/search-console
- **结构化数据**: https://search.google.com/structured-data/testing-tool

## 🎯 推荐使用

**最佳方案：GitHub Pages + 自定义域名**
- ✅ 完全免费
- ✅ 自动 HTTPS
- ✅ 全球 CDN 加速
- ✅ 版本控制
- ✅ 易于更新

## 📞 技术支持

如有问题，请联系：
- Email: sales@cosylogistics.net
- 网站：www.cosylogistics.net

---

**最后更新**: 2026-03-09
**版本**: 1.0
