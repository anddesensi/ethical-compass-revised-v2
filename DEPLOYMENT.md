# Deployment Guide

Complete guide for deploying the Pharmaceutical Case Studies platform to various hosting services.

## 📋 Pre-Deployment Checklist

- [ ] All HTML files are in the root directory
- [ ] No broken internal links
- [ ] All images/assets are properly referenced
- [ ] Test locally in multiple browsers
- [ ] Review content for accuracy
- [ ] Check mobile responsiveness

## 🌐 Deployment Options

### 1. GitHub Pages (Recommended - Free)

**Advantages:**
- Free hosting
- Custom domain support
- Automatic HTTPS
- Direct integration with GitHub
- Easy updates via git push

**Steps:**

1. **Create GitHub Repository**
```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Pharmaceutical Ethics Case Studies"

# Create repository on GitHub (via web interface)
# Then connect and push:
git remote add origin https://github.com/yourusername/pharma-ethics-cases.git
git branch -M main
git push -u origin main
```

2. **Enable GitHub Pages**
- Go to repository Settings
- Navigate to "Pages" in the left sidebar
- Under "Source", select "Deploy from a branch"
- Choose `main` branch and `/ (root)` folder
- Click "Save"
- Wait 1-2 minutes for deployment

3. **Access Your Site**
- URL: `https://yourusername.github.io/pharma-ethics-cases/`
- Custom domain: Add CNAME file with your domain

**Custom Domain Setup:**
```bash
# Create CNAME file
echo "yourdomain.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push
```

Then configure DNS:
- Add A records pointing to GitHub's IPs:
  - 185.199.108.153
  - 185.199.109.153
  - 185.199.110.153
  - 185.199.111.153
- Or add CNAME record: `yourusername.github.io`

---

### 2. Netlify (Easy, Free Tier)

**Advantages:**
- Drag-and-drop deployment
- Automatic HTTPS
- Form handling (if added)
- Instant rollbacks
- Branch previews

**Method A: Drag and Drop**
1. Go to [netlify.com](https://netlify.com)
2. Sign up/login
3. Drag the entire project folder to Netlify
4. Site is live instantly!

**Method B: Git Integration**
1. Push code to GitHub (see above)
2. Go to Netlify → "Add new site" → "Import an existing project"
3. Connect to GitHub
4. Select your repository
5. Build settings:
   - Build command: (leave empty)
   - Publish directory: `/`
6. Click "Deploy site"

**Custom Domain:**
- Go to Site settings → Domain management
- Add custom domain
- Follow DNS configuration instructions

---

### 3. Vercel (Fast, Free Tier)

**Advantages:**
- Lightning-fast CDN
- Automatic HTTPS
- Zero configuration
- Preview deployments
- Analytics

**Steps:**
1. Push code to GitHub
2. Go to [vercel.com](https://vercel.com)
3. Sign up with GitHub
4. Click "New Project"
5. Import your repository
6. Click "Deploy"
7. Done! Site is live

**Custom Domain:**
- Go to Project settings → Domains
- Add your domain
- Configure DNS as instructed

---

### 4. Cloudflare Pages (Free, Fast CDN)

**Advantages:**
- Global CDN
- Unlimited bandwidth
- Automatic HTTPS
- DDoS protection
- Fast builds

**Steps:**
1. Push code to GitHub
2. Go to [pages.cloudflare.com](https://pages.cloudflare.com)
3. Sign up/login
4. Click "Create a project"
5. Connect to GitHub
6. Select repository
7. Build settings:
   - Build command: (none)
   - Build output directory: `/`
8. Click "Save and Deploy"

---

### 5. Firebase Hosting (Google)

**Advantages:**
- Google infrastructure
- Free SSL
- Custom domains
- Version history
- Rollback support

**Steps:**
1. Install Firebase CLI:
```bash
npm install -g firebase-tools
```

2. Login and initialize:
```bash
firebase login
firebase init hosting
```

3. Configuration:
- Select "Use an existing project" or create new
- Public directory: `.` (current directory)
- Single-page app: No
- Overwrite index.html: No

4. Deploy:
```bash
firebase deploy
```

---

### 6. Render (Free Static Site)

**Advantages:**
- Free tier available
- Automatic deploys
- Custom domains
- HTTPS included

**Steps:**
1. Push code to GitHub
2. Go to [render.com](https://render.com)
3. Sign up/login
4. Click "New" → "Static Site"
5. Connect repository
6. Settings:
   - Build command: (leave empty)
   - Publish directory: `.`
7. Click "Create Static Site"

---

## 🔧 Configuration Files

### For Netlify (Optional)

Create `netlify.toml`:
```toml
[build]
  publish = "."

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200

[[headers]]
  for = "/*"
  [headers.values]
    X-Frame-Options = "DENY"
    X-Content-Type-Options = "nosniff"
    X-XSS-Protection = "1; mode=block"
```

### For Vercel (Optional)

Create `vercel.json`:
```json
{
  "version": 2,
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/$1"
    }
  ],
  "headers": [
    {
      "source": "/(.*)",
      "headers": [
        {
          "key": "X-Content-Type-Options",
          "value": "nosniff"
        },
        {
          "key": "X-Frame-Options",
          "value": "DENY"
        },
        {
          "key": "X-XSS-Protection",
          "value": "1; mode=block"
        }
      ]
    }
  ]
}
```

---

## 🔒 Security Headers

Add these headers for better security (most hosts support this):

```
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
X-XSS-Protection: 1; mode=block
Referrer-Policy: strict-origin-when-cross-origin
Permissions-Policy: geolocation=(), microphone=(), camera=()
```

---

## 📊 Analytics (Optional)

### Google Analytics
Add to `<head>` of all HTML files:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Plausible Analytics (Privacy-friendly)
```html
<script defer data-domain="yourdomain.com" src="https://plausible.io/js/script.js"></script>
```

---

## 🧪 Testing Before Deployment

### Local Testing
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js (if installed)
npx serve .

# PHP
php -S localhost:8000
```

### Browser Testing
- Chrome DevTools (F12) → Device toolbar
- Test all breakpoints: 320px, 768px, 1024px, 1440px
- Check all links work
- Verify animations are smooth
- Test form submissions (Ethical Compass)

---

## 🚀 Continuous Deployment

Once connected to GitHub, any push to `main` branch will auto-deploy:

```bash
# Make changes
git add .
git commit -m "Update case study content"
git push origin main

# Site automatically updates in 1-2 minutes
```

---

## 📱 Performance Optimization

### Already Optimized:
✅ No external dependencies (except Tailwind CDN in one file)
✅ Inline CSS (no extra HTTP requests)
✅ Vanilla JavaScript (no framework overhead)
✅ Semantic HTML
✅ Responsive images

### Optional Improvements:
- Minify HTML/CSS/JS before deployment
- Add service worker for offline support
- Implement lazy loading for images (if added)
- Use WebP format for images (if added)

---

## 🐛 Troubleshooting

**Issue: Site not loading**
- Check if all files are in root directory
- Verify index.html is named correctly (lowercase)
- Check browser console for errors

**Issue: Links broken**
- Ensure all internal links use relative paths
- Check file names match exactly (case-sensitive on Linux)

**Issue: Styles not applying**
- Clear browser cache
- Check CSS is inline in HTML files
- Verify no syntax errors in style tags

**Issue: Animations not working**
- Test in different browser
- Check JavaScript console for errors
- Verify JavaScript is enabled

---

## 📞 Support

If you encounter issues:
1. Check hosting provider documentation
2. Review browser console for errors
3. Test locally first
4. Open GitHub issue if problem persists

---

**Ready to deploy?** Choose your hosting platform above and follow the steps!
