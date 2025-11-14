# Nan Jiang - Portfolio

My personal website showcasing quantitative research and data science projects.

## Live Site

Visit: `https://nathan-jiang.github.io`

## Features

- Responsive design that works on all devices
- Clean, professional layout
- Smooth scrolling navigation
- Fast loading performance

## Structure

```
github.io/
├── index.html          # Main HTML file
├── css/
│   └── style.css      # Stylesheet
├── js/
│   └── main.js        # JavaScript functionality
├── assets/
│   └── images/        # Image assets
├── data/              # Data files (if needed)
└── README.md          # This file
```

## Technologies

- HTML5, CSS3, JavaScript
- Font Awesome for icons
- Responsive Grid & Flexbox layouts

## Sections

1. **Home/Hero**: Introduction and quick links
2. **About**: Professional summary and key statistics
3. **Experience**: Professional work history with timeline
4. **Projects**: Research projects and key achievements
5. **Education**: Academic background
6. **Skills**: Technical skills and expertise
7. **Contact**: Contact information

## Customization

### Update Personal Information

Edit the following in `index.html`:
- Contact information (email, phone, location)
- Social media links (GitHub, LinkedIn)
- Project links and descriptions

### Change Colors

Update CSS variables in `css/style.css`:
```css
:root {
    --primary-color: #2563eb;
    --secondary-color: #1e40af;
    /* ... other colors */
}
```

### Add/Remove Sections

Sections can be added or removed by editing `index.html` and updating the navigation menu accordingly.

## Responsive Breakpoints

- Desktop: > 768px
- Tablet: 481px - 768px
- Mobile: ≤ 480px

## Getting Started

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/nathan-jiang/nathan-jiang.github.io.git
cd nathan-jiang.github.io
```

2. Open `index.html` in your browser or use a local server:
```bash
# Using Python 3
python -m http.server 8000

# Using Node.js
npx http-server
```

3. Visit `http://localhost:8000` in your browser

### Deployment to GitHub Pages

1. Create a new repository named `nathan-jiang.github.io` on GitHub

2. Push your code:
```bash
git init
git add .
git commit -m "Add portfolio website"
git branch -M main
git remote add origin https://github.com/nathan-jiang/nathan-jiang.github.io.git
git push -u origin main
```

3. Enable GitHub Pages:
   - Go to repository Settings
   - Navigate to Pages section
   - Select `main` branch as source
   - Save

4. Your site will be available at `https://nathan-jiang.github.io` within a few minutes

## Contact

Nan Jiang
- Email: bluesnj@gmail.com
- Phone: 951-902-7310
- Location: Cedar Grove, NJ

---

Last updated: Apr 6, 2025
