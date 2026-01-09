# Hugo Academic Website - Complete Setup Guide

This guide will walk you through setting up your academic portfolio website with Hugo and PaperMod theme.

## Prerequisites

- Git installed
- Hugo installed (v0.100.0 or later)
- A GitHub account
- Basic familiarity with command line

## Step-by-Step Setup

### Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Name your repository: `yourusername.github.io` (replace `yourusername` with your actual GitHub username)
3. Make it public
4. **Do NOT** initialize with README, .gitignore, or license (we'll add these)
5. Click "Create repository"

### Step 2: Clone and Setup Locally

```bash
# Navigate to where you want your project
cd ~/projects  # or wherever you keep your code

# Clone the files from this package
# (Copy all files from the academic-site folder to your repository folder)

# Navigate to your repository
cd yourusername.github.io

# Run the setup script
./setup.sh
```

Or manually:

```bash
# Initialize git
git init

# Add PaperMod theme
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive
```

### Step 3: Customize Your Site

#### Update hugo.toml

Open `hugo.toml` and update:

```toml
baseURL = 'https://yourusername.github.io/'  # Your actual username
title = 'Your Name - Research Portfolio'      # Your name

[params]
  author = "Your Full Name"
  description = "Academic researcher in [Your Field]"
  
  [params.homeInfoParams]
    Title = "Welcome to My Research"
    Content = "Brief introduction about yourself"

  [[params.socialIcons]]
    name = "github"
    url = "https://github.com/yourusername"  # Your GitHub

  [[params.socialIcons]]
    name = "email"
    url = "mailto:your.email@university.edu"  # Your email

  [[params.socialIcons]]
    name = "googlescholar"
    url = "https://scholar.google.com/citations?user=YOUR_ID"  # Your Scholar ID
```

#### Update Content Files

1. **Home Page** (`content/_index.md`):
   - Add your introduction
   - List recent updates
   - Highlight key projects

2. **About** (`content/about/index.md`):
   - Your background
   - Research interests
   - Education
   - Contact information

3. **Publications** (`content/publications/index.md`):
   - List your papers
   - Include links to PDFs, code, etc.
   - Add BibTeX citations

4. **Conferences** (`content/conferences/index.md`):
   - List conferences attended
   - Talks given
   - Service activities

5. **Data & Vis** (`content/data-vis/index.md`):
   - Datasets you've created
   - Visualizations
   - Tools and software

### Step 4: Add Your Files

Create these directories in `static/`:

```bash
mkdir -p static/{images,papers,data,slides}
```

Then add your files:
- `static/images/` - Profile photo, figures, screenshots
- `static/papers/` - PDF versions of papers
- `static/data/` - Dataset files
- `static/slides/` - Presentation slides

Reference them in markdown:
```markdown
![My Photo](/images/profile.jpg)
[[Download Paper]](/papers/my-paper.pdf)
```

### Step 5: Test Locally

```bash
# Start Hugo development server
hugo server -D

# Visit http://localhost:1313 in your browser
```

The `-D` flag includes draft content. Remove it to see only published content.

### Step 6: Deploy to GitHub

```bash
# Add all files
git add .

# Commit
git commit -m "Initial commit: Academic website"

# Add remote (if not already added)
git remote add origin https://github.com/yourusername/yourusername.github.io.git

# Push to GitHub
git push -u origin main
```

### Step 7: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages** (in left sidebar)
3. Under **Source**, select "GitHub Actions"
4. Wait 2-3 minutes for deployment

Your site will be live at: `https://yourusername.github.io`

## Making Updates

### Edit Content

1. Edit markdown files in `content/`
2. Test locally: `hugo server -D`
3. Commit and push:
   ```bash
   git add .
   git commit -m "Update publications"
   git push
   ```
4. Site automatically rebuilds (takes 2-3 minutes)

### Update Theme

```bash
git submodule update --remote --merge
git add themes/PaperMod
git commit -m "Update PaperMod theme"
git push
```

## Common Tasks

### Add a New Publication

Edit `content/publications/index.md`:

```markdown
**Your New Paper Title**  
*Your Name*, Co-author One, Co-author Two  
*Conference/Journal Name*, 2026  
[[Paper]](/papers/new-paper.pdf) [[Code]](https://github.com/you/project)

**Abstract:** Brief description of the paper.
```

### Add Profile Photo

1. Add image to `static/images/profile.jpg`
2. Edit `content/about/index.md`:
   ```markdown
   ![Profile Photo](/images/profile.jpg)
   ```

### Change Color Scheme

Create `assets/css/extended/custom.css`:

```css
:root {
    --primary: #your-color;
    --theme: #your-color;
}
```

### Add a Blog (Optional)

1. Update `hugo.toml` menu:
   ```toml
   [[menu.main]]
     identifier = "blog"
     name = "Blog"
     url = "/blog/"
     weight = 50
   ```

2. Create blog posts:
   ```bash
   hugo new blog/my-first-post.md
   ```

## Troubleshooting

### Theme Not Found

```bash
git submodule update --init --recursive
```

### Site Not Deploying

1. Check GitHub Actions tab for errors
2. Verify Pages is set to "GitHub Actions"
3. Check `baseURL` in `hugo.toml` matches your URL

### Changes Not Appearing

1. Hard refresh: Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
2. Wait 2-3 minutes for GitHub Actions to complete
3. Check commit pushed successfully

### Local Preview Issues

```bash
# Clear Hugo cache
rm -rf /tmp/hugo_cache
hugo server --disableFastRender
```

## Tips & Best Practices

1. **Use meaningful commit messages**: "Add ICML 2026 paper" not "update"
2. **Keep images optimized**: Compress before adding to reduce site size
3. **Test locally first**: Always preview changes before pushing
4. **Regular backups**: Your repo is backed up, but download important files
5. **Update regularly**: Keep content and theme up to date

## Advanced Customization

### Custom CSS

Create `assets/css/extended/custom.css` for custom styles.

### Custom JavaScript

Create `layouts/partials/extend_head.html`:

```html
<script>
// Your custom JavaScript
</script>
```

### Analytics

Add to `hugo.toml`:

```toml
[params]
  googleAnalytics = "G-XXXXXXXXXX"
```

### Custom Domain

1. Add `CNAME` file to `static/`:
   ```
   www.yourname.com
   ```
2. Configure DNS with your domain provider
3. Update `baseURL` in `hugo.toml`

## Resources

- **Hugo Docs**: https://gohugo.io/documentation/
- **PaperMod Wiki**: https://github.com/adityatelange/hugo-PaperMod/wiki
- **Markdown Guide**: https://www.markdownguide.org/
- **GitHub Pages**: https://docs.github.com/en/pages

## Getting Help

- Hugo Forum: https://discourse.gohugo.io/
- PaperMod Issues: https://github.com/adityatelange/hugo-PaperMod/issues
- Stack Overflow: Tag questions with `hugo` and `hugo-papermod`

## Example Sites

Look at other academic sites using PaperMod for inspiration:
- Search GitHub for "hugo papermod academic"
- Browse PaperMod showcase

---

**Need more help?** Open an issue on your repository or check the resources above.

Good luck with your academic website! 🎓
