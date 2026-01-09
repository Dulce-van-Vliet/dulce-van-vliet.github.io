# Adding a Favicon to Your Site

A favicon is the small icon that appears in browser tabs. Here's how to add one to your Hugo PaperMod site.

## Option 1: Simple Favicon (Recommended)

1. Create or obtain a favicon image (512x512 px PNG or SVG recommended)
2. Save it as `static/favicon.ico` or `static/favicon.png`
3. That's it! Hugo will automatically use it.

## Option 2: Complete Favicon Set

For better compatibility across all devices and browsers:

1. Generate favicons using https://realfavicongenerator.net/
2. Upload your image (512x512 px recommended)
3. Customize settings if desired
4. Download the generated package
5. Extract files to `static/` directory:
   - `favicon.ico`
   - `favicon-16x16.png`
   - `favicon-32x32.png`
   - `apple-touch-icon.png`
   - `site.webmanifest`

6. Create `layouts/partials/extend_head.html`:

```html
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="manifest" href="/site.webmanifest">
```

## Creating a Simple Favicon

If you don't have a favicon, you can create one:

### Using Your Initial

1. Go to https://favicon.io/favicon-generator/
2. Enter your initial (e.g., "J" for Jane)
3. Choose colors and font
4. Download and follow Option 2 above

### Using an Emoji

1. Go to https://favicon.io/emoji-favicons/
2. Search for an emoji (e.g., 🎓 for graduation cap)
3. Download and save to `static/favicon.ico`

### Using a Logo

If you have a logo:
1. Resize to 512x512 px
2. Save as PNG with transparent background
3. Use https://realfavicongenerator.net/ to convert

## Verification

After adding favicon:
1. Clear your browser cache
2. Visit your site
3. Check the browser tab for your icon
4. Test on mobile devices

## Tips

- Use simple, bold designs that work at small sizes
- Ensure good contrast
- Transparent backgrounds work best
- Square images work better than rectangular
- 512x512 px gives best results across all devices
