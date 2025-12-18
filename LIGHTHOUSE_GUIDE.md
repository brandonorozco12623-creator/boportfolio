# Lighthouse Audit Guide

## Installation Status
✅ Lighthouse 11.7.1 has been installed locally to this project

## Issue
Chrome/Chromium is not available in your current environment (WSL/Linux), which Lighthouse requires to run audits.

## Solutions

### Option 1: Install Chrome in WSL (Recommended)
```bash
# Download and install Google Chrome for Linux
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Then run Lighthouse
npx lighthouse http://localhost:8080/index.html --output html --output-path ./lighthouse-report
```

### Option 2: Use Chrome DevTools (Easiest)
1. Open your site in Google Chrome browser
2. Press F12 to open DevTools
3. Click on the "Lighthouse" tab
4. Select categories to audit (Performance, Accessibility, Best Practices, SEO)
5. Click "Analyze page load"
6. View and download the report

### Option 3: Use Online PageSpeed Insights
Visit: https://pagespeed.web.dev/
- Enter your deployed website URL
- View comprehensive Lighthouse scores and recommendations
- No local installation required

### Option 4: Run the Script (After Installing Chrome)
```bash
# Make script executable
chmod +x run-lighthouse.sh

# Run the audit
./run-lighthouse.sh
```

This will audit all your pages and save reports in `./lighthouse-reports/`

## Manual Lighthouse Commands

### Audit Single Page
```bash
# Start local server first
cd docs && python3 -m http.server 8080 &

# Run audit
npx lighthouse http://localhost:8080/index.html --output html --output-path ./report
```

### Audit with Multiple Outputs
```bash
npx lighthouse http://localhost:8080/index.html \
  --output html \
  --output json \
  --output csv \
  --output-path ./lighthouse-report
```

### Audit Specific Categories
```bash
# Only performance and accessibility
npx lighthouse http://localhost:8080/index.html \
  --only-categories=performance,accessibility \
  --output html
```

### Audit All Pages
```bash
# Audit every page in your site
for page in index about blog contact; do
  npx lighthouse http://localhost:8080/${page}.html \
    --output html \
    --output-path ./lighthouse-reports/${page}
done
```

## What Lighthouse Checks

### Performance (0-100)
- First Contentful Paint
- Largest Contentful Paint
- Speed Index
- Time to Interactive
- Total Blocking Time
- Cumulative Layout Shift

### Accessibility (0-100)
- ARIA attributes
- Color contrast
- Form labels
- Image alt text
- Heading order
- Keyboard navigation

### Best Practices (0-100)
- HTTPS usage
- Console errors
- Image aspect ratios
- Security vulnerabilities
- Browser compatibility

### SEO (0-100)
- Meta descriptions
- Title tags
- Mobile-friendly
- Structured data
- Crawlability

### PWA (Progressive Web App)
- Service worker
- Offline functionality
- App manifest
- HTTPS

## Viewing Reports

After running Lighthouse, open the generated `.html` files in any browser:
```bash
# Linux/WSL
xdg-open lighthouse-report.html

# Or just open directly in Windows browser
explorer.exe lighthouse-report.html
```

## Current Project Setup
- Node.js: v18.19.1
- npm: 9.2.0
- Lighthouse: 11.7.1 (installed locally)
- Local server: Python HTTP server on port 8080

## Next Steps
1. Install Chrome for Linux (Option 1)
2. OR use Chrome DevTools (Option 2) - **Quickest option!**
3. Run audits on all pages
4. Review recommendations
5. Implement fixes
6. Re-run audits to verify improvements
