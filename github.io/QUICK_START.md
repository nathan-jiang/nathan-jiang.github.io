# Quick Start Guide

## Getting Your Site Live on GitHub Pages

### Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click the "+" icon in the top right and select "New repository"
3. Name your repository: `nathan-jiang.github.io`
   - This must match your GitHub username exactly
   - Your username is: `nathan-jiang`
4. Make it **Public**
5. Do NOT initialize with README (we already have one)
6. Click "Create repository"

### Step 2: Customize Your Site

Before deploying, update these important details:

#### In `index.html`:
- [x] GitHub username updated to: nathan-jiang
- [x] LinkedIn profile updated to: nanjiang831
- [x] Project links connected to repositories
- [x] Contact information verified

#### In `README.md`:
- [x] Username updated throughout the documentation

### Step 3: Deploy to GitHub

Open Terminal and run these commands from the `github.io` folder:

```bash
# Navigate to your github.io folder
cd /Users/NathanJiang/Documents/Files/resume\&CL/Resume/github.io

# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Add portfolio website"

# Rename branch to main
git branch -M main

# Add your GitHub repository as remote
git remote add origin https://github.com/nathan-jiang/nathan-jiang.github.io.git

# Push to GitHub
git push -u origin main
```

### Step 4: Enable GitHub Pages

GitHub Pages should automatically activate for `.github.io` repositories, but verify:

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll to **Pages** section (left sidebar)
4. Under "Source", ensure `main` branch is selected
5. Click **Save** if needed

### Step 5: Visit Your Site

Your site will be live at: `https://nathan-jiang.github.io`

It may take 1-5 minutes for the first deployment.

## Customization Tips

### Add Your Photo

1. Add your professional photo to `assets/images/profile.jpg`
2. Update `index.html` to include the image in the About section:
```html
<div class="about-photo">
    <img src="assets/images/profile.jpg" alt="Nan Jiang">
</div>
```

### Change Color Scheme

Edit `css/style.css` at the top:
```css
:root {
    --primary-color: #2563eb;  /* Change this */
    --secondary-color: #1e40af; /* And this */
}
```

### Add Project Screenshots

1. Save screenshots in `assets/images/`
2. Reference them in project cards:
```html
<img src="assets/images/project-screenshot.png" alt="Project">
```

## Updating Your Site

After making changes:

```bash
cd /Users/NathanJiang/Documents/Files/resume\&CL/Resume/github.io

git add .
git commit -m "Update content"
git push
```

Your site will update within 1-2 minutes.

## Test Locally

Before pushing updates, test locally:

```bash
# Using Python 3
python3 -m http.server 8000

# Then visit: http://localhost:8000
```

## Post-Launch Checklist

- [ ] Test all navigation links work
- [ ] Verify contact information is correct
- [ ] Check social media links open correctly
- [ ] Test on mobile device
- [ ] Add actual project GitHub repository links
- [ ] Update project descriptions as needed
- [ ] Add professional photo (optional)
- [ ] Set up custom domain (optional, see CNAME file)

## Troubleshooting

**Site not loading?**
- Wait 5 minutes after first push
- Check GitHub repository Settings > Pages
- Ensure repository is public
- Check repository name is exactly `nathan-jiang.github.io`

**Changes not showing?**
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Wait 1-2 minutes for GitHub Pages to rebuild
- Check git push was successful

**Links not working?**
- Update all `yourusername` placeholders
- Ensure URLs are correct
- Check for typos in href attributes

## Next Steps

1. **Custom Domain**: If you have a domain, update the `CNAME` file
2. **Analytics**: Add Google Analytics to track visitors
3. **SEO**: Submit sitemap to Google Search Console
4. **Blog**: Add a blog section using Jekyll
5. **Projects**: Link to your actual GitHub repositories

## Need Help?

- GitHub Pages Documentation: https://docs.github.com/pages
- GitHub Pages Support: https://github.community

---

Good luck!
