# 🚀 快速部署指南 - 3 步上线

## 前提条件
- ✅ 已有 GitHub 账号（没有的话先注册：https://github.com/signup）
- ✅ 网站文件已准备就绪（当前目录）

---

## 第 1 步：创建 GitHub 仓库（2 分钟）

1. 访问：**https://github.com/new**
2. 填写：
   - **Repository name**: `cosy-logistics-website`
   - **Description**: `Shenzhen Cosy International Logistics - Company Website`
   - **Visibility**: ✅ Public
   - ❌ **不要**勾选 "Initialize with README"
3. 点击 **"Create repository"**

---

## 第 2 步：推送代码（1 分钟）

在终端执行以下命令（替换 `YOUR_USERNAME` 为你的 GitHub 用户名）：

```bash
cd /home/admin/openclaw/workspace/cosy-logistics-website

# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/cosy-logistics-website.git

# 推送代码
git push -u origin main
```

**如果提示认证失败**：
- 用户名：你的 GitHub 用户名
- 密码：使用 [Personal Access Token](https://github.com/settings/tokens)（不是账户密码）

---

## 第 3 步：启用 GitHub Pages（1 分钟）

1. 进入仓库设置页：
   ```
   https://github.com/YOUR_USERNAME/cosy-logistics-website/settings/pages
   ```

2. **Build and deployment**:
   - Source: `Deploy from a branch`
   - Branch: 选择 `main` → `root`
   - 点击 **Save**

3. 等待 1-2 分钟，刷新页面

---

## 🎉 完成！

访问你的网站：
```
https://YOUR_USERNAME.github.io/cosy-logistics-website/
```

---

## 📱 测试清单

- [ ] 打开网站，看到语言选择页面
- [ ] 点击 "中文"，查看中文版
- [ ] 点击 "English"，查看英文版
- [ ] 用手机访问，测试响应式布局
- [ ] 测试导航菜单
- [ ] 测试联系表单

---

## 🔧 可选：绑定自定义域名

如果想使用 `www.cosylogistics.net`：

### 1. 创建 CNAME 文件
```bash
echo "www.cosylogistics.net" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push
```

### 2. 配置 DNS
在域名服务商添加：
```
类型    主机记录    记录值
CNAME   www         YOUR_USERNAME.github.io
A       @           185.199.108.153
A       @           185.199.109.153
A       @           185.199.110.153
A       @           185.199.111.153
```

### 3. GitHub 设置
- Settings → Pages → Custom domain
- 输入：`www.cosylogistics.net`
- 点击 Save

---

## ❓ 遇到问题？

查看详细指南：`GITHUB_DEPLOYMENT.md`

或告诉我具体问题，我会帮你解决！

---

**预计总耗时**: 5-10 分钟
**费用**: 完全免费 ☕
