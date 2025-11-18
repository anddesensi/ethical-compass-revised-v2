# File Structure Documentation

Complete overview of all files in the Pharmaceutical Case Studies platform.

## 📁 Root Directory Files

### HTML Pages (5 files)

#### `index.html` (Main Landing Page)
- **Purpose**: Homepage with overview of all three case studies
- **Features**:
  - Three floating cards (Theranos, Shkreli, Pfizer)
  - Layered shadow effects with parallax
  - Mouse tracking animation
  - Responsive 3-column grid
  - Links to detailed case study pages
- **Size**: ~30KB
- **Dependencies**: None (all CSS/JS inline)

#### `theranos-case-study.html` (Detailed Case Study)
- **Purpose**: Complete forensic analysis of Theranos fraud
- **Sections**:
  - Executive Summary
  - Architectural Claim
  - Timeline (10 events)
  - Corporate Deception
  - Whistleblower Suppression
  - Key Impact
  - Interactive Ethical Compass
  - Legal Remediation
  - Assessment Link
- **Size**: ~45KB
- **Dependencies**: None

#### `shkreli-case-study.html` (Detailed Case Study)
- **Purpose**: Analysis of Martin Shkreli's fraud and price gouging
- **Sections**:
  - Executive Summary
  - Daraprim Vector
  - Timeline (8 events)
  - Financial Architecture
  - Legal Remediation
  - Key Impact
  - Interactive Ethical Compass
  - Assessment Link
- **Size**: ~42KB
- **Dependencies**: None

#### `pfizer-case-study.html` (Detailed Case Study)
- **Purpose**: Investigation of Pfizer's unauthorized Nigeria trial
- **Sections**:
  - Executive Summary
  - Operational Context
  - Timeline (8 events)
  - Trovan Vector
  - Archival Deception
  - Congressional Response
  - Key Impact
  - Interactive Ethical Compass
  - Assessment Link
- **Size**: ~44KB
- **Dependencies**: None

#### `Ethical Compass.html` (Assessment Tool)
- **Purpose**: Interactive 24-question ethical assessment
- **Features**:
  - Name collection modal
  - 24 ethical questions with 5-point Likert scale
  - Real-time Ethics Matrix visualization
  - Live score calculation
  - Personalized analysis based on position
  - Results modal with detailed feedback
  - Export to JSON/CSV
  - Local storage for progress
- **Size**: ~35KB
- **Dependencies**: Tailwind CSS (via CDN)

---

## 📄 Documentation Files (6 files)

#### `README.md`
- **Purpose**: Main project documentation
- **Contents**:
  - Project overview and features
  - Quick start guide
  - Deployment options (5 platforms)
  - Technology stack
  - Browser support
  - Educational use cases
  - Case study summaries
  - Contributing guidelines
  - License information
- **Size**: ~8KB

#### `DEPLOYMENT.md`
- **Purpose**: Comprehensive deployment guide
- **Contents**:
  - Pre-deployment checklist
  - 6 hosting platform guides:
    1. GitHub Pages (detailed)
    2. Netlify
    3. Vercel
    4. Cloudflare Pages
    5. Firebase Hosting
    6. Render
  - Configuration files (netlify.toml, vercel.json)
  - Security headers
  - Analytics integration
  - Testing procedures
  - Troubleshooting guide
- **Size**: ~12KB

#### `CONTRIBUTING.md`
- **Purpose**: Guidelines for contributors
- **Contents**:
  - Ways to contribute
  - Development setup
  - Commit message guidelines
  - Code style guidelines (HTML, CSS, JS)
  - Content guidelines
  - Testing checklist
  - Bug reporting template
  - Feature request template
  - Pull request process
  - Translation guidelines
- **Size**: ~7KB

#### `LICENSE`
- **Purpose**: MIT License for the project
- **Contents**: Standard MIT License text
- **Size**: ~1KB

#### `FILE_STRUCTURE.md` (This File)
- **Purpose**: Complete file documentation
- **Contents**: Detailed description of every file
- **Size**: ~5KB

#### `.gitignore`
- **Purpose**: Specify files to ignore in Git
- **Contents**:
  - macOS files (.DS_Store)
  - Windows files (Thumbs.db)
  - IDE files (.vscode, .idea)
  - Logs and temp files
  - Environment variables
  - Build outputs
  - Dependencies
- **Size**: <1KB

---

## 🔧 Utility Files (1 file)

#### `deploy.sh`
- **Purpose**: Automated deployment script for GitHub Pages
- **Features**:
  - Checks for Git installation
  - Initializes repository if needed
  - Configures remote
  - Stages and commits files
  - Pushes to GitHub
  - Provides next steps
- **Usage**: `bash deploy.sh`
- **Size**: ~3KB
- **Platform**: macOS/Linux (use Git Bash on Windows)

---

## 📊 File Statistics

### Total Files: 12

**By Type:**
- HTML: 5 files (~196KB total)
- Markdown: 5 files (~33KB total)
- Shell Script: 1 file (~3KB)
- License: 1 file (~1KB)

**By Category:**
- Content Pages: 5 files (HTML)
- Documentation: 5 files (Markdown)
- Configuration: 1 file (.gitignore)
- Utilities: 1 file (deploy.sh)

### Total Project Size: ~233KB

---

## 🔗 File Dependencies

### No External Dependencies
All HTML files are **completely self-contained** with:
- Inline CSS (no external stylesheets)
- Inline JavaScript (no external scripts)
- No images or media files
- No build process required

**Exception:** `Ethical Compass.html` uses Tailwind CSS via CDN:
```html
<script src="https://cdn.tailwindcss.com"></script>
```

### Internal Links

**index.html** links to:
- `theranos-case-study.html`
- `shkreli-case-study.html`
- `pfizer-case-study.html`

**All case study pages** link to:
- `index.html` (back button)
- `Ethical Compass.html` (assessment button)

**Ethical Compass.html**:
- Standalone (no links to other pages)
- Users can use browser back button

---

## 📱 Responsive Breakpoints

All HTML pages use these breakpoints:

- **Mobile**: < 768px (1 column)
- **Tablet**: 768px - 1023px (2 columns)
- **Desktop**: ≥ 1024px (3 columns)
- **Large Desktop**: ≥ 1440px (optimized spacing)

---

## 🎨 Design Assets

### Colors
- **Primary**: #000000 (Black)
- **Background**: #ffffff (White)
- **Secondary**: #f8f8f8 (Light Gray)
- **Accent**: #f5f5f5 (Very Light Gray)
- **Text**: #333333, #555555, #666666 (Gray shades)

### Fonts
- **System Font Stack**: 
  ```css
  -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 
  Oxygen, Ubuntu, Cantarell, sans-serif
  ```
- **Ethical Compass**: Inter (via Google Fonts)

### Animations
- Fade-in (0.6s)
- Slide-up (0.8s)
- Scale-in (0.6s)
- Parallax (continuous)
- Hover effects (0.3s)

---

## 🔐 Security

### No Sensitive Data
- No API keys
- No database connections
- No server-side code
- No user authentication
- All processing client-side

### Privacy
- No tracking by default
- No cookies
- No external analytics (unless added)
- Local storage only for assessment progress

---

## 🚀 Deployment Readiness

### ✅ Ready for:
- GitHub Pages
- Netlify
- Vercel
- Cloudflare Pages
- Firebase Hosting
- Any static hosting service

### ✅ No Build Required
- Pure HTML/CSS/JS
- No compilation step
- No package manager needed
- No dependencies to install

### ✅ SEO Optimized
- Semantic HTML5
- Meta descriptions
- Proper heading hierarchy
- Descriptive titles

---

## 📝 Content Statistics

### Theranos Case Study
- **Words**: ~2,500
- **Timeline Events**: 10
- **Impact Cards**: 3
- **Ethical Analyses**: 4

### Shkreli Case Study
- **Words**: ~2,200
- **Timeline Events**: 8
- **Impact Cards**: 3
- **Ethical Analyses**: 4

### Pfizer Case Study
- **Words**: ~2,400
- **Timeline Events**: 8
- **Impact Cards**: 3
- **Ethical Analyses**: 4

### Ethical Compass
- **Questions**: 24
- **Frameworks**: 4
- **Analysis Zones**: 10

---

## 🔄 Version Control

### Recommended Git Workflow

```bash
# Initial setup
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin YOUR_REPO_URL
git push -u origin main

# Making updates
git add .
git commit -m "Update: description"
git push

# Creating branches
git checkout -b feature/new-case-study
# Make changes
git commit -am "Add new case study"
git push origin feature/new-case-study
# Create pull request on GitHub
```

---

## 📦 Backup Recommendations

### What to Backup
- All HTML files (primary content)
- Documentation files (README, etc.)
- Custom modifications

### Where to Backup
- GitHub repository (automatic)
- Local Git repository
- Cloud storage (Dropbox, Google Drive)
- External drive (for critical projects)

---

## 🔍 File Validation

### HTML Validation
Test at: https://validator.w3.org/
- All files should pass W3C validation
- No critical errors
- Warnings acceptable for modern HTML5

### CSS Validation
Test at: https://jigsaw.w3.org/css-validator/
- Inline CSS should validate
- Vendor prefixes may show warnings

### Accessibility
Test with:
- WAVE (https://wave.webaim.org/)
- Lighthouse (Chrome DevTools)
- Screen readers (NVDA, VoiceOver)

---

## 📞 Support

For questions about file structure:
1. Check this documentation
2. Review README.md
3. Check DEPLOYMENT.md
4. Open GitHub issue

---

**Last Updated**: November 2024  
**Version**: 1.0.0
