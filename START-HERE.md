# 🎓 Your Hugo Academic Website - Quick Start

Your complete Hugo academic website with PaperMod theme is ready! This package includes everything you need to create a professional academic portfolio on GitHub Pages.

## 📦 What's Included

```
academic-site/
├── .github/workflows/hugo.yml    # Auto-deployment to GitHub Pages
├── content/                      # Your website content
│   ├── about/                   # About page
│   ├── publications/            # Publications list
│   ├── conferences/             # Conferences & talks
│   ├── data-vis/               # Data & visualizations
│   └── _index.md               # Home page
├── assets/css/extended/         # Custom CSS (optional)
├── hugo.toml                    # Main configuration
├── README.md                    # Project documentation
├── SETUP-GUIDE.md              # Detailed setup instructions
├── CHECKLIST.md                # Deployment checklist
├── PUBLICATION-TEMPLATE.md     # Templates for adding content
├── FAVICON-GUIDE.md            # How to add favicons
└── setup.sh                    # Automated setup script
```

## 🚀 Quick Start (5 Minutes)

### 1. Install Hugo

**macOS:**
```bash
brew install hugo
```

**Linux:**
```bash
sudo apt install hugo
```

**Windows:** Download from https://github.com/gohugoio/hugo/releases

### 2. Create GitHub Repository

1. Go to https://github.com/new
2. Name it: `yourusername.github.io` (use your actual GitHub username)
3. Make it public
4. Don't initialize with README

### 3. Set Up Your Site

```bash
# Copy the academic-site folder contents to your computer
cd academic-site

# Run setup script
./setup.sh

# Or manually:
git init
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
```

### 4. Customize Content

Edit these files:
- `hugo.toml` - Your name, URL, social links
- `content/_index.md` - Home page
- `content/about/index.md` - About page
- `content/publications/index.md` - Your publications

### 5. Preview Locally

```bash
hugo server -D
```

Visit http://localhost:1313 to see your site

### 6. Deploy to GitHub

```bash
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/yourusername/yourusername.github.io.git
git push -u origin main
```

### 7. Enable GitHub Pages

1. Go to your repo → Settings → Pages
2. Under Source, select "GitHub Actions"
3. Wait 2-3 minutes

Your site will be live at: `https://yourusername.github.io`

## 📝 Next Steps

1. **Read SETUP-GUIDE.md** for detailed instructions
2. **Use CHECKLIST.md** to ensure everything is configured
3. **Check PUBLICATION-TEMPLATE.md** for adding publications
4. **Review FAVICON-GUIDE.md** to add a favicon

## 🎨 Website Sections

Your site includes these sections:

1. **Home** - Welcome message and research highlights
2. **About** - Your background, education, interests
3. **Publications** - Papers, preprints, and citations
4. **Conferences** - Talks, presentations, and service
5. **Data & Vis** - Datasets, visualizations, and tools

## 🔧 Key Features

- ✅ Clean, professional academic design
- ✅ Mobile-responsive
- ✅ Dark mode support
- ✅ Fast loading
- ✅ SEO optimized
- ✅ Auto-deploys on push to GitHub
- ✅ Easy to update and maintain

## 📚 Essential Files to Edit

### hugo.toml
```toml
baseURL = 'https://yourusername.github.io/'  # Your URL
title = 'Your Name'                           # Your name
author = "Your Full Name"                     # Author info
```

### content/_index.md
Your home page - add introduction and highlights

### content/about/index.md
Your background, education, and contact info

### content/publications/index.md
List your publications (see PUBLICATION-TEMPLATE.md for format)

## 🆘 Common Issues

**Theme not found?**
```bash
git submodule update --init --recursive
```

**Changes not showing?**
- Hard refresh browser (Ctrl+Shift+R)
- Wait 2-3 minutes for GitHub Actions
- Clear browser cache

**Site not deploying?**
- Check Settings → Pages is set to "GitHub Actions"
- Verify baseURL in hugo.toml matches your URL
- Check GitHub Actions tab for errors

## 📖 Resources

- **Detailed Guide**: SETUP-GUIDE.md (in this folder)
- **Hugo Docs**: https://gohugo.io/documentation/
- **PaperMod Theme**: https://github.com/adityatelange/hugo-PaperMod
- **GitHub Pages**: https://docs.github.com/en/pages

## 💡 Pro Tips

1. **Test locally first**: Always run `hugo server -D` before pushing
2. **Commit often**: Make small, frequent commits
3. **Use templates**: Copy from PUBLICATION-TEMPLATE.md for consistency
4. **Optimize images**: Compress images before adding to site
5. **Keep updated**: Update theme occasionally: `git submodule update --remote --merge`

## 📧 What to Update in hugo.toml

Replace these placeholders:
- `yourusername` → your GitHub username
- `Your Name` → your full name  
- `your.email@university.edu` → your email
- `YOUR_ID` → your Google Scholar ID (from your profile URL)
- `[Your Research Area]` → your field of study

## ✅ Pre-Launch Checklist

- [ ] Updated all personal information in hugo.toml
- [ ] Replaced placeholder content in all markdown files
- [ ] Added profile photo to static/images/
- [ ] Tested site locally with `hugo server -D`
- [ ] Created GitHub repository
- [ ] Pushed code to GitHub
- [ ] Enabled GitHub Pages
- [ ] Verified site loads correctly

## 🎉 You're All Set!

Your academic website is ready to go. Follow the steps above, and you'll have a professional online presence in minutes.

For detailed instructions, see **SETUP-GUIDE.md**.

Good luck! 🚀

---

**Questions?** Check the guides included in this package or visit the Hugo/PaperMod documentation.
