# Academic Website Complete Package

## 🎯 Overview

This is a complete, ready-to-deploy Hugo static website using the PaperMod theme, designed specifically for academic portfolios. It includes sections for publications, conferences, data/visualizations, and an about page.

## 📁 Package Contents

### Core Files
- **hugo.toml** - Main configuration file
- **setup.sh** - Automated setup script
- **.gitmodules** - Theme submodule configuration
- **.gitignore** - Git ignore rules

### Documentation
- **START-HERE.md** - Quick start guide (read this first!)
- **SETUP-GUIDE.md** - Detailed setup instructions
- **README.md** - Project documentation
- **CHECKLIST.md** - Pre-deployment checklist
- **PUBLICATION-TEMPLATE.md** - Templates for adding content
- **FAVICON-GUIDE.md** - How to add site icons

### Content Files
- **content/_index.md** - Home page
- **content/about/index.md** - About page
- **content/publications/index.md** - Publications list
- **content/conferences/index.md** - Conferences & talks
- **content/data-vis/index.md** - Data & visualizations

### Deployment
- **.github/workflows/hugo.yml** - GitHub Actions workflow for auto-deployment

### Customization
- **assets/css/extended/custom.css** - Custom CSS (optional styling)

### Static Assets (empty, ready for your files)
- **static/images/** - For photos, figures
- **static/papers/** - For PDF papers
- **static/data/** - For datasets
- **static/slides/** - For presentation slides

## 🚀 Three Ways to Get Started

### Method 1: Use Setup Script (Easiest)
```bash
cd academic-site
./setup.sh
```

### Method 2: Manual Setup
```bash
cd academic-site
git init
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive
```

### Method 3: Follow START-HERE.md
Open START-HERE.md for step-by-step instructions.

## 📋 Quick Start Checklist

1. [ ] Install Hugo
2. [ ] Create GitHub repository: `yourusername.github.io`
3. [ ] Run setup script or manual setup
4. [ ] Edit hugo.toml with your information
5. [ ] Update content files with your information
6. [ ] Test locally: `hugo server -D`
7. [ ] Push to GitHub
8. [ ] Enable GitHub Pages (Settings → Pages → GitHub Actions)
9. [ ] Wait 2-3 minutes for deployment
10. [ ] Visit https://yourusername.github.io

## 🎨 What You Get

### Features
- Clean, professional academic design
- Mobile-responsive layout
- Dark mode support
- Fast loading times
- SEO optimized
- Automatic deployment via GitHub Actions
- Easy to update and maintain

### Sections
1. **Home** - Welcome and research highlights
2. **About** - Background, education, contact
3. **Publications** - Papers with links to PDFs, code, etc.
4. **Conferences** - Talks, presentations, service
5. **Data & Vis** - Datasets, visualizations, tools

## 🔧 Configuration Required

You must update these in **hugo.toml**:
```toml
baseURL = 'https://yourusername.github.io/'  # Your GitHub username
title = 'Your Name - Academic Portfolio'     # Your name
author = "Your Full Name"                     # Your full name

[[params.socialIcons]]
  name = "github"
  url = "https://github.com/yourusername"   # Your GitHub

[[params.socialIcons]]
  name = "email"  
  url = "mailto:your.email@university.edu"  # Your email

[[params.socialIcons]]
  name = "googlescholar"
  url = "https://scholar.google.com/citations?user=YOUR_ID"  # Your Scholar ID
```

## 📝 Content Updates

### Home Page (content/_index.md)
- Add your introduction
- List recent updates
- Highlight key projects

### About Page (content/about/index.md)
- Your background and bio
- Research interests
- Education history
- Contact information

### Publications (content/publications/index.md)
- List papers by year
- Include links to PDFs, code, project pages
- Add BibTeX citations
- See PUBLICATION-TEMPLATE.md for format

### Conferences (content/conferences/index.md)
- List talks and presentations
- Include slides and videos
- Add service activities

### Data & Vis (content/data-vis/index.md)
- List datasets
- Share visualizations
- Document tools and software

## 🌐 Deployment Process

1. **Local Development**
   ```bash
   hugo server -D
   ```
   Visit http://localhost:1313

2. **Commit Changes**
   ```bash
   git add .
   git commit -m "Your message"
   ```

3. **Push to GitHub**
   ```bash
   git push origin main
   ```

4. **Automatic Deployment**
   - GitHub Actions builds and deploys
   - Wait 2-3 minutes
   - Site updates automatically

## 🎯 File Organization

```
academic-site/
├── Documentation (Read these!)
│   ├── START-HERE.md         ← Read first
│   ├── SETUP-GUIDE.md        ← Detailed instructions
│   ├── CHECKLIST.md          ← Pre-launch checklist
│   ├── PUBLICATION-TEMPLATE.md
│   └── FAVICON-GUIDE.md
│
├── Configuration
│   ├── hugo.toml             ← Main config (update this!)
│   ├── .gitmodules           ← Theme configuration
│   └── .gitignore
│
├── Content (Update all!)
│   └── content/
│       ├── _index.md         ← Home page
│       ├── about/
│       ├── publications/
│       ├── conferences/
│       └── data-vis/
│
├── Deployment
│   └── .github/workflows/
│       └── hugo.yml           ← Auto-deployment
│
├── Customization (Optional)
│   └── assets/css/extended/
│       └── custom.css         ← Custom styles
│
└── Assets (Add your files here)
    └── static/
        ├── images/            ← Photos, figures
        ├── papers/            ← PDF papers
        ├── data/              ← Datasets
        └── slides/            ← Presentations
```

## 📚 Documentation Guide

### For First-Time Setup
1. **START-HERE.md** - Quick 5-minute start guide
2. **SETUP-GUIDE.md** - Complete detailed instructions
3. **CHECKLIST.md** - Verify everything is ready

### For Content Creation
1. **PUBLICATION-TEMPLATE.md** - Copy/paste templates for publications
2. Content markdown files in content/ directory

### For Customization
1. **FAVICON-GUIDE.md** - Add site icon
2. **custom.css** - Custom styling
3. hugo.toml - Theme configuration

## 🆘 Troubleshooting

### Theme Not Found
```bash
git submodule update --init --recursive
```

### Site Not Building
- Check GitHub Actions tab for errors
- Verify hugo.toml syntax
- Ensure content files have valid frontmatter

### Changes Not Showing
- Hard refresh: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
- Clear browser cache
- Wait 2-3 minutes for GitHub Actions

### Local Preview Issues
```bash
hugo server --disableFastRender
```

## 🔗 Important URLs

- Your site: `https://yourusername.github.io`
- Repository: `https://github.com/yourusername/yourusername.github.io`
- Hugo Docs: https://gohugo.io/documentation/
- PaperMod Theme: https://github.com/adityatelange/hugo-PaperMod
- PaperMod Wiki: https://github.com/adityatelange/hugo-PaperMod/wiki

## ✅ Pre-Launch Verification

Use CHECKLIST.md for complete list, but at minimum verify:
- [ ] hugo.toml has your information
- [ ] All placeholder text replaced
- [ ] Links work
- [ ] Images display
- [ ] Mobile responsive
- [ ] Tested locally

## 💡 Best Practices

1. **Always test locally first** before pushing to GitHub
2. **Use descriptive commit messages** for tracking changes
3. **Keep backups** of important content
4. **Update regularly** - publications, talks, etc.
5. **Optimize images** before adding (compress, resize)
6. **Check mobile view** - many visitors use mobile
7. **Update theme occasionally** for bug fixes and features

## 📧 Support & Resources

- **Hugo Forum**: https://discourse.gohugo.io/
- **PaperMod Issues**: https://github.com/adityatelange/hugo-PaperMod/issues
- **GitHub Pages Docs**: https://docs.github.com/en/pages

## 🎓 Academic-Specific Tips

1. **Publications**
   - List in reverse chronological order (newest first)
   - Include preprints and working papers
   - Add links to PDFs, code, data
   - Provide BibTeX citations

2. **About Page**
   - Keep bio concise but informative
   - List current affiliation prominently
   - Include profile photo
   - Add contact information

3. **Professional Presence**
   - Use institutional email if possible
   - Link to Google Scholar, ORCID, etc.
   - Keep content professional
   - Update regularly

4. **Maintenance**
   - Add new publications promptly
   - Update conference presentations
   - Refresh "Recent Updates" section
   - Keep theme and content current

## 🎉 Ready to Launch!

You have everything you need to create a professional academic website. Follow START-HERE.md for the quickest path to deployment, or dive into SETUP-GUIDE.md for detailed instructions.

**Remember**: This is your professional online presence. Take time to personalize it and keep it updated!

Good luck with your academic website! 🚀

---

**Quick Start**: Open START-HERE.md  
**Detailed Guide**: Open SETUP-GUIDE.md  
**Before Deploy**: Check CHECKLIST.md
