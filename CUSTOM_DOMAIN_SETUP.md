# 🌐 Custom Domain Setup Guide

## Domain: www.cosylogistics.net

---

## ✅ GitHub Side (COMPLETED)

- [x] CNAME file added to repository
- [x] Committed and pushed
- [x] GitHub Pages configured for custom domain
- [x] HTTPS enforcement ready (will auto-enable after DNS verification)

**Current Status**: Building...

---

## 🔧 DNS Configuration (YOUR ACTION REQUIRED)

You need to configure DNS records at your **domain registrar** where you purchased `cosylogistics.net`.

### Option 1: CNAME Record (Recommended for www subdomain)

```
Type:    CNAME
Name:    www
Value:   cosylogistics.github.io
TTL:     3600 (or default)
```

### Option 2: A Records (For root domain cosylogistics.net)

If you also want the root domain to work, add these A records:

```
Type:    A
Name:    @
Value:   185.199.108.153
TTL:     3600

Type:    A
Name:    @
Value:   185.199.109.153
TTL:     3600

Type:    A
Name:    @
Value:   185.199.110.153
TTL:     3600

Type:    A
Name:    @
Value:   185.199.111.153
TTL:     3600
```

---

## 📋 Step-by-Step Instructions

### 1. Login to Your Domain Registrar

Common registrars:
- GoDaddy
- Namecheap
- Alibaba Cloud (万网)
- Tencent Cloud (DNSPod)
- Cloudflare
- etc.

### 2. Find DNS Management

Look for:
- "DNS Management"
- "DNS Settings"
- "Name Server Management"
- "域名解析" (Chinese registrars)

### 3. Add CNAME Record

| Field | Value |
|-------|-------|
| **Type** | CNAME |
| **Host/Name** | www |
| **Value/Points to** | cosylogistics.github.io |
| **TTL** | 3600 (or automatic) |

### 4. Save Changes

DNS propagation takes **5 minutes to 48 hours** (usually 10-30 minutes).

---

## ✅ Verification

After configuring DNS, I can verify with:

```bash
# Check DNS propagation
nslookup www.cosylogistics.net
# or
dig www.cosylogistics.net

# Check GitHub Pages status
gh api /repos/cosylogistics/cosy-logistics-website/pages
```

---

## 🔒 HTTPS Certificate

GitHub will automatically provision an HTTPS certificate after:
1. DNS is configured correctly
2. GitHub verifies domain ownership
3. Certificate is issued (usually within 1-2 hours)

HTTPS will be enforced automatically.

---

## 🎯 Expected Result

After DNS propagation:

```
https://www.cosylogistics.net
↓
GitHub Pages
↓
Your website content
```

---

## 📞 Common Registrar Instructions

### Alibaba Cloud (阿里云万网)

1. 登录阿里云控制台
2. 进入"域名与网站" → "域名"
3. 点击 `cosylogistics.net` → "解析"
4. 添加记录：
   - 记录类型：CNAME
   - 主机记录：www
   - 记录值：cosylogistics.github.io
   - TTL：10 分钟

### Tencent Cloud (DNSPod)

1. 登录 DNSPod 控制台
2. 选择 `cosylogistics.net`
3. 点击"添加记录"
4. 填写：
   - 类型：CNAME
   - 主机记录：www
   - 记录值：cosylogistics.github.io
   - TTL：10 分钟

### GoDaddy

1. Go to DNS Management
2. Click "Add"
3. Select CNAME
4. Host: www
5. Points to: cosylogistics.github.io
6. TTL: 1 Hour
7. Save

---

## ⏱️ Timeline

| Step | Time |
|------|------|
| DNS propagation | 5-30 minutes (usually) |
| GitHub verification | 5-10 minutes |
| HTTPS certificate | 1-2 hours |
| **Total** | **~30 minutes** |

---

## 📧 Need Help?

Tell me:
1. Which registrar you're using
2. If you need help with DNS configuration
3. When DNS is configured, I can verify the setup

---

**Next Step**: Configure DNS at your domain registrar, then let me know! 🚀
