# 🚀 Deployment Checklist

Use this checklist to ensure your academic website is ready to go live.

## Pre-Launch Checklist

### Configuration
- [ ] Updated `baseURL` in `hugo.toml` with your GitHub Pages URL
- [ ] Changed site `title` to your name
- [ ] Updated `author` information
- [ ] Added correct social media links (GitHub, email, Scholar)
- [ ] Removed placeholder text from `homeInfoParams`

### Content
- [ ] Completed About page with your information
- [ ] Added at least one publication
- [ ] Updated conference/talks section (or removed if not applicable)
- [ ] Added content to Data & Vis section (or removed if not applicable)
- [ ] Updated home page with your introduction
- [ ] Removed template placeholder text

### Files & Assets
- [ ] Added profile photo to `static/images/`
- [ ] Added paper PDFs to `static/papers/` (if linking locally)
- [ ] Added any other static files needed
- [ ] Tested all internal links work

### GitHub Setup
- [ ] Created repository named `yourusername.github.io`
- [ ] Added PaperMod theme as submodule
- [ ] Created all required files
- [ ] `.github/workflows/hugo.yml` exists for auto-deployment
- [ ] `.gitignore` file present

### Testing
- [ ] Run `hugo server -D` and preview locally
- [ ] Checked all pages load correctly
- [ ] Verified navigation menu works
- [ ] Tested responsive design (mobile view)
- [ ] Checked for broken links
- [ ] Verified images display correctly
- [ ] Tested in multiple browsers

### Optional Enhancements
- [ ] Added favicon
- [ ] Added Google Analytics (if desired)
- [ ] Customized colors in `custom.css`
- [ ] Added custom fonts
- [ ] Set up custom domain (if applicable)

## Deployment Steps

1. **Commit all changes**
   ```bash
   git add .
   git commit -m "Initial website setup"
   ```

2. **Push to GitHub**
   ```bash
   git remote add origin https://github.com/yourusername/yourusername.github.io.git
   git branch -M main
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Set Source to "GitHub Actions"
   - Wait 2-3 minutes for first deployment

4. **Verify deployment**
   - Visit `https://yourusername.github.io`
   - Check all pages work
   - Test on mobile device

## Post-Launch Checklist

### After Site is Live
- [ ] Verified site loads at correct URL
- [ ] Tested all pages and links
- [ ] Checked mobile responsiveness
- [ ] Shared URL with colleagues for feedback
- [ ] Added site URL to your email signature
- [ ] Updated CV/resume with website link
- [ ] Listed site on academic profiles (Scholar, ResearchGate, etc.)

### Ongoing Maintenance
- [ ] Set reminder to update publications regularly
- [ ] Keep theme updated: `git submodule update --remote --merge`
- [ ] Monitor GitHub Actions for build failures
- [ ] Update About page as career progresses
- [ ] Add new conference talks/presentations
- [ ] Refresh "Recent Updates" on home page

## Common Issues & Solutions

### Site Not Deploying
- Check GitHub Actions tab for errors
- Verify Pages is set to "GitHub Actions" not "Branch"
- Ensure `baseURL` in `hugo.toml` is correct

### Theme Not Loading
```bash
git submodule update --init --recursive
git add themes/PaperMod
git commit -m "Initialize theme submodule"
git push
```

### Changes Not Appearing
- Hard refresh browser: Ctrl+Shift+R (Cmd+Shift+R on Mac)
- Wait 2-3 minutes for GitHub Actions to complete
- Check that commit was pushed: `git status`

### Images Not Showing
- Verify images are in `static/` directory
- Check image paths start with `/` (e.g., `/images/photo.jpg`)
- Ensure image files are committed and pushed

### Links Broken
- Use absolute paths: `/papers/file.pdf` not `papers/file.pdf`
- Test locally first with `hugo server -D`
- Verify files exist in `static/` directory

## Performance Tips

- Optimize images before uploading (compress, resize)
- Use WebP format for images when possible
- Keep total site size under 10 MB
- Minimize number of external resources
- Use Hugo's built-in image processing

## Security & Privacy

- Don't commit API keys or secrets
- Review what you're sharing publicly
- Use institutional email if preferred
- Consider what data you make available
- Check privacy settings on social links

## Need Help?

- Review SETUP-GUIDE.md for detailed instructions
- Check Hugo documentation: https://gohugo.io/documentation/
- Visit PaperMod wiki: https://github.com/adityatelange/hugo-PaperMod/wiki
- Search existing issues on GitHub
- Ask on Hugo forum: https://discourse.gohugo.io/

---

**Pro tip**: Keep this checklist handy for future updates and additions to your site!
