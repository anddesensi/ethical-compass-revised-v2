# 🚀 Quick Start Guide

Get your Pharmaceutical Case Studies site live in 5 minutes!

## ⚡ Fastest Method: GitHub Pages

### Step 1: Create GitHub Repository (2 minutes)

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** icon → **"New repository"**
3. Fill in:
   - **Repository name**: `pharma-ethics-cases` (or your choice)
   - **Description**: "Interactive pharmaceutical ethics case studies"
   - **Public** (required for free GitHub Pages)
   - ✅ **Add a README file** (optional, we have one)
4. Click **"Create repository"**

### Step 2: Upload Files (1 minute)

**Option A: Using the Web Interface**
1. Click **"Add file"** → **"Upload files"**
2. Drag all files from the THERANOS SITE folder
3. Write commit message: "Initial commit"
4. Click **"Commit changes"**

**Option B: Using Command Line**
```bash
cd "/Users/andreadesensi/Downloads/THERANOS SITE"

# Run the automated deploy script
bash deploy.sh

# Follow the prompts
```

### Step 3: Enable GitHub Pages (1 minute)

1. Go to your repository on GitHub
2. Click **"Settings"** (top menu)
3. Click **"Pages"** (left sidebar)
4. Under **"Source"**:
   - Select **"Deploy from a branch"**
   - Choose **"main"** branch
   - Choose **"/ (root)"** folder
5. Click **"Save"**

### Step 4: Access Your Site (1 minute)

Wait 1-2 minutes, then visit:
```
https://YOUR-USERNAME.github.io/pharma-ethics-cases/
```

**Done!** 🎉 Your site is live!

---

## 🖥️ Test Locally First

Before deploying, test on your computer:

### Mac/Linux:
```bash
cd "/Users/andreadesensi/Downloads/THERANOS SITE"
python3 -m http.server 8000
```

### Windows:
```bash
cd "C:\Users\YourName\Downloads\THERANOS SITE"
python -m http.server 8000
```

Then open: http://localhost:8000

---

## 📋 Pre-Deployment Checklist

Before going live, verify:

- [ ] Open `index.html` in browser - does it load?
- [ ] Click each case study card - do they open?
- [ ] Click "Back to Overview" - does it work?
- [ ] Click "Start Assessment" - does it load?
- [ ] Test on mobile (or use browser DevTools)
- [ ] Check for console errors (F12 → Console)

---

## 🎨 Customization (Optional)

### Change Site Title
Edit in each HTML file:
```html
<title>Your Custom Title</title>
<h1>Your Custom Title</h1>
```

### Change Colors
Find and replace in CSS sections:
- Black: `#000000` → Your color
- White: `#ffffff` → Your color
- Gray: `#f8f8f8` → Your color

### Add Your Logo
Add to header in `index.html`:
```html
<header>
    <img src="logo.png" alt="Logo" style="height: 50px;">
    <h1>Pharmaceutical Case Studies</h1>
</header>
```

---

## 🔧 Troubleshooting

### Site Not Loading?
- Wait 2-3 minutes after enabling Pages
- Check Settings → Pages shows green checkmark
- Verify URL is correct (username.github.io/repo-name)

### Styles Not Working?
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Check all files uploaded correctly
- Verify no console errors

### Links Broken?
- Ensure all HTML files are in root directory
- Check file names match exactly (case-sensitive)
- Test locally first

---

## 🌐 Alternative Hosting (Even Faster!)

### Netlify (Drag & Drop)
1. Go to [netlify.com](https://netlify.com)
2. Sign up (free)
3. Drag the entire THERANOS SITE folder to Netlify
4. Done! Site is live instantly

### Vercel (One Click)
1. Go to [vercel.com](https://vercel.com)
2. Sign up with GitHub
3. Click "New Project"
4. Select your repository
5. Click "Deploy"
6. Done!

---

## 📱 Share Your Site

Once live, share with:
- Students and educators
- Ethics committees
- Healthcare professionals
- Journalism students
- Anyone interested in pharmaceutical ethics

---

## 🆘 Need Help?

1. **Check Documentation**:
   - `README.md` - Full overview
   - `DEPLOYMENT.md` - Detailed deployment guide
   - `FILE_STRUCTURE.md` - File explanations

2. **Common Issues**:
   - Files not uploading? → Check file size limits
   - Site not updating? → Clear cache, wait 2 minutes
   - Broken links? → Verify file names match

3. **Get Support**:
   - Open GitHub issue
   - Check hosting provider docs
   - Test locally to isolate problem

---

## ✅ Success Checklist

Your site is ready when:

- [ ] Main page loads with 3 case cards
- [ ] Each card opens its detailed study
- [ ] Back buttons return to main page
- [ ] Assessment tool loads and works
- [ ] Site works on mobile
- [ ] No console errors
- [ ] All animations smooth

---

## 🎓 Next Steps

After deployment:

1. **Share the URL** with your audience
2. **Add analytics** (optional - see DEPLOYMENT.md)
3. **Custom domain** (optional - see DEPLOYMENT.md)
4. **Add more cases** (see CONTRIBUTING.md)
5. **Translate** to other languages
6. **Collect feedback** and improve

---

## 📊 Monitor Your Site

### GitHub Pages
- Check Settings → Pages for deployment status
- View deployment history in Actions tab

### Netlify/Vercel
- Dashboard shows deployment status
- Analytics available in free tier
- Automatic deployments on git push

---

## 🔄 Making Updates

After initial deployment:

```bash
# Make your changes to HTML files

# Commit and push
git add .
git commit -m "Update: description of changes"
git push

# Site updates automatically in 1-2 minutes!
```

---

## 💡 Pro Tips

1. **Test Locally First**: Always test changes before pushing
2. **Use Branches**: Create feature branches for major changes
3. **Backup Regularly**: Keep local copy of all files
4. **Monitor Performance**: Use Lighthouse in Chrome DevTools
5. **Get Feedback**: Ask users to test on different devices

---

## 🎉 You're Ready!

Your pharmaceutical ethics case studies platform is ready to educate and inform. 

**Time to deploy**: ~5 minutes  
**Cost**: $0 (free hosting)  
**Reach**: Global audience  

Go make an impact! 🌍

---

**Questions?** Check the other documentation files or open an issue on GitHub.

**Ready to deploy?** Run `bash deploy.sh` or follow Step 1 above!
