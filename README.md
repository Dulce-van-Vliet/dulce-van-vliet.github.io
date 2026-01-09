# Academic Portfolio Website

Hugo website with PaperMod theme for academic portfolio, publications, and research.

## Quick Start

### 1. Clone and Setup

```bash
# Clone your repository
git clone https://github.com/yourusername/yourusername.github.io.git
cd yourusername.github.io

# Add PaperMod theme as submodule
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
git submodule update --init --recursive
```

### 2. Install Hugo

**macOS:**
```bash
brew install hugo
```

**Linux:**
```bash
sudo apt install hugo
```

**Windows:**
Download from [Hugo Releases](https://github.com/gohugoio/hugo/releases)

### 3. Local Development

```bash
# Run local server
hugo server -D

# Build site
hugo
```

Visit http://localhost:1313 to preview your site.

## Configuration

### Update hugo.toml

1. Change `baseURL` to your GitHub Pages URL
2. Update `title` and author information
3. Add your social media links
4. Customize menu items

### Customize Content

- **About:** Edit `content/about/index.md`
- **Publications:** Edit `content/publications/index.md`
- **Conferences:** Edit `content/conferences/index.md`
- **Data & Vis:** Edit `content/data-vis/index.md`
- **Home:** Edit `content/_index.md`

## GitHub Pages Deployment

### Enable GitHub Pages

1. Go to your repository settings
2. Navigate to **Pages** section
3. Under **Source**, select "GitHub Actions"

### Automatic Deployment

The site will automatically deploy when you push to the `main` branch using the included GitHub Actions workflow (`.github/workflows/hugo.yml`).

## Directory Structure

```
.
├── .github/
│   └── workflows/
│       └── hugo.yml          # GitHub Actions deployment
├── content/
│   ├── about/
│   │   └── index.md          # About page
│   ├── publications/
│   │   └── index.md          # Publications
│   ├── conferences/
│   │   └── index.md          # Conferences & talks
│   ├── data-vis/
│   │   └── index.md          # Data & visualizations
│   └── _index.md             # Home page
├── themes/
│   └── PaperMod/             # Theme submodule
├── static/                    # Static files (images, PDFs)
├── hugo.toml                  # Main configuration
└── README.md
```

## Adding Content

### Add a New Publication

Edit `content/publications/index.md` and add:

```markdown
**Paper Title**  
*Your Name*, Co-authors  
*Journal/Conference*, Year  
[[Paper]](link) [[Code]](link)

**Abstract:** Description
```

### Add Images/Files

Place files in the `static/` directory:
- `static/images/` for images
- `static/papers/` for PDFs
- `static/data/` for datasets

Reference them in markdown: `![Alt text](/images/filename.png)`

### Add a Blog Post (Optional)

```bash
hugo new posts/my-post.md
```

## PaperMod Theme Features

- Clean, minimal design
- Dark mode support
- Fast loading
- SEO optimized
- Social icons
- Reading time
- Table of contents
- Code syntax highlighting

## Customization

### Change Colors

Create `assets/css/extended/custom.css` with your color overrides.

### Update Navigation

Edit the `[menu]` section in `hugo.toml`.

### Add Search

PaperMod includes built-in search. Ensure `outputs` includes "JSON" in `hugo.toml`.

## Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [PaperMod Theme](https://github.com/adityatelange/hugo-PaperMod)
- [PaperMod Wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## License

Content: [Your License]  
Theme: MIT (PaperMod)

## Contact

[Your Name] - your.email@university.edu
