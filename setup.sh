#!/bin/bash

# Setup script for Hugo Academic Website

echo "🎓 Setting up your academic website..."
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo is not installed."
    echo "Please install Hugo first:"
    echo "  - macOS: brew install hugo"
    echo "  - Linux: sudo apt install hugo"
    echo "  - Windows: Download from https://github.com/gohugoio/hugo/releases"
    exit 1
fi

echo "✅ Hugo found: $(hugo version)"
echo ""

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add PaperMod theme as submodule
if [ ! -d themes/PaperMod/.git ]; then
    echo "🎨 Adding PaperMod theme..."
    git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
    git submodule update --init --recursive
    echo "✅ PaperMod theme added"
else
    echo "✅ PaperMod theme already exists"
    echo "   Updating theme..."
    git submodule update --remote --merge
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit hugo.toml to add your information"
echo "2. Update content in content/ directory"
echo "3. Run 'hugo server -D' to preview locally"
echo "4. Push to GitHub to deploy"
echo ""
echo "Happy building! 🚀"
