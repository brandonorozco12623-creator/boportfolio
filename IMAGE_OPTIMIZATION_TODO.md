# Image Optimization Guide

## Current Status
✅ Lazy loading added to all images
✅ Width/height attributes added to prevent layout shift
❌ Images still need WebP conversion and compression

## Current Image Sizes
```
brandon-profile.jpg:  780KB ⚠️ CRITICAL
blog-image1.jpg:      508KB ⚠️ HIGH
blog-image2.jpg:      188KB ⚠️ MEDIUM
blog-image3.jpg:      164KB
blog-image4.jpg:       96KB
blog-image5.jpg:       80KB
blog-image6.jpg:      140KB
resume-image.jpg:      84KB
profile-2.jpg:         56KB ✅ OK
```

## How to Optimize Images

### Option 1: Online Tools (Easiest)
1. Visit https://squoosh.app/
2. Upload each image
3. Settings:
   - Format: WebP
   - Quality: 80%
   - Resize if needed (hero image to 1200px wide max)
4. Download and replace in `/docs/images/`

### Option 2: Bulk Optimization (Recommended)
Visit https://www.iloveimg.com/compress-image/compress-jpg
1. Upload all JPGs
2. Compress at 80-90% quality
3. Download zip
4. Replace images

Then convert to WebP at https://cloudconvert.com/jpg-to-webp

### Option 3: Local Installation (If system allows)
```bash
# Fix dpkg first
sudo apt-get install --fix-broken
sudo apt-get install webp

# Then run conversion
cd /home/bo97/obportfolio/docs/images
cwebp -q 80 brandon-profile.jpg -o brandon-profile.webp
```

## Target Sizes
- brandon-profile.jpg: 780KB → 80KB (90% reduction)
- blog-image1.jpg: 508KB → 60KB
- blog-image2.jpg: 188KB → 30KB  
- blog-image3.jpg: 164KB → 25KB
- Others: <50KB each

## After Optimization

Update HTML to use WebP with fallback:
```html
<picture>
  <source srcset="images/brandon-profile.webp" type="image/webp">
  <img src="images/brandon-profile.jpg" alt="Brandon Orozco">
</picture>
```

## Expected Performance Gain
- Current total: ~2MB images
- Optimized total: ~400KB images
- **Savings: ~1.6MB (80% reduction)**
- **LCP improvement: 3-4 seconds faster**
- **Performance score: +15-20 points**

## Priority Order
1. **brandon-profile.jpg** (780KB) - Hero image, highest impact
2. **blog-image1.jpg** (508KB) - Second largest
3. **blog-image2.jpg** (188KB) - Third largest
4. Rest can wait for later optimization

## Quick Win
Just optimizing the top 3 images will give you ~70% of the benefit!
