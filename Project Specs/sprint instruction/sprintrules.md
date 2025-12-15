# Sprint Rules: Deterministic Development System
## Brandon Orozco AI Consultant Portfolio


**Version**: 1.0  
**Date**: December 15, 2025  
**Purpose**: Define exact execution methodology for outcome-validated development  
**Project**: AI Consultant Portfolio Website


---


## Overview


This document establishes the **mandatory execution framework** for all development work on the Brandon Orozco AI Consultant Portfolio. It ensures:

1. **Deterministic Outcomes** - Every task has clear, testable success criteria
2. **Quality Assurance** - No task is complete until verified
3. **Consistent Progress** - Incremental, validated development
4. **Context Preservation** - All decisions documented for future reference


### Core Philosophy

**"No task is complete until verified. No sprint is done until reviewed."**


---


## Core Principles


### 1. Outcome-Driven Development

Every task must have:
- **Specific outcome**: What will exist when this is done?
- **Verification checklist**: How do we know it's complete?
- **Acceptance criteria**: What tests must pass?


### 2. Specification Adherence

All work must align with:
- `Important References/Reference.md` - Client vision and preferences
- `Important References/UXDesignsKey.md` - Design principles
- `Project Specs/backlog/project_spec.md` - Technical requirements


### 3. Test-Before-Complete

Before marking any task complete:
- Run all acceptance tests
- Check off all verification items
- Test on multiple devices/browsers
- Document any known issues


### 4. Progressive Enhancement

Build in layers:
- Foundation first (semantic HTML)
- Styling second (mobile-first CSS)
- Interactivity third (JavaScript)
- Ensure core functionality works without JavaScript


---


## Sprint Execution Framework


Each sprint follows a structured phase approach. Work sequentially through phases, completing all tasks in one phase before moving to the next.


---


## SPRINT 1: FOUNDATION & CORE STRUCTURE


**Sprint Goal**: Establish project foundation with responsive layout, navigation, hero section, and about section.


**Duration**: 1 week (estimated)


---


### PHASE 1: PROJECT FOUNDATION


#### 1.1 Project Setup


**Outcome**: Working development environment with proper file structure


**Verification**:
- [ ] All directories created per architecture
- [ ] Base HTML file with proper doctype and meta tags
- [ ] CSS architecture files created and linked
- [ ] JavaScript files created and linked
- [ ] Opens in browser without errors


**Acceptance Criteria**:
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="[Description]">
  <title>Brandon Orozco - AI Consultant</title>
  <link rel="stylesheet" href="css/main.css">
</head>
<body>
  <script src="js/main.js"></script>
</body>
</html>
```


**Directory Structure**:
```
sprint1/
├── index.html
├── css/
│   ├── reset.css
│   ├── variables.css
│   ├── base.css
│   ├── layout.css
│   ├── components.css
│   └── main.css
├── js/
│   ├── navigation.js
│   └── main.js
└── images/
```


**Test Command**:
```bash
# Verify all files exist
ls -la sprint1/
ls -la sprint1/css/
ls -la sprint1/js/

# Open in browser
# Should load with no console errors
```


---


#### 1.2 CSS Architecture & Design System


**Outcome**: Complete design system with variables, reset, and base styles


**Verification**:
- [ ] CSS custom properties defined for colors, typography, spacing
- [ ] CSS reset applied (normalize.css or custom)
- [ ] Base styles for typography established
- [ ] Consistent spacing system implemented
- [ ] Responsive typography using clamp()


**Acceptance Criteria**:


**variables.css**:
```css
:root {
  /* Colors - TO BE UPDATED after client input */
  --color-primary: #0066cc;
  --color-secondary: #333333;
  --color-accent: #00cc66;
  --color-text: #333333;
  --color-text-light: #666666;
  --color-background: #ffffff;
  --color-background-alt: #f5f5f5;
  
  /* Typography */
  --font-heading: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
  --font-body: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  
  /* Spacing (8px base unit) */
  --spacing-xs: 0.5rem;   /* 8px */
  --spacing-sm: 1rem;     /* 16px */
  --spacing-md: 2rem;     /* 32px */
  --spacing-lg: 3rem;     /* 48px */
  --spacing-xl: 4rem;     /* 64px */
  --spacing-2xl: 6rem;    /* 96px */
  
  /* Layout */
  --container-max: 1200px;
  --container-padding: var(--spacing-md);
  
  /* Transitions */
  --transition-fast: 0.2s ease;
  --transition-normal: 0.3s ease;
  --transition-slow: 0.6s ease;
}
```


**base.css**:
```css
/* Typography scale */
h1 { font-size: clamp(2rem, 5vw, 3.5rem); }
h2 { font-size: clamp(1.5rem, 4vw, 2.5rem); }
h3 { font-size: clamp(1.25rem, 3vw, 1.75rem); }
p  { 
  font-size: clamp(1rem, 2vw, 1.125rem); 
  line-height: 1.6;
}

/* Base link styles */
a {
  color: var(--color-primary);
  text-decoration: none;
  transition: color var(--transition-fast);
}
```


**Test Command**:
```bash
# Verify CSS loads
grep -r "var(--" sprint1/css/
# Should show CSS custom properties being used
```


---


#### 1.3 Semantic HTML Structure


**Outcome**: Complete HTML structure with semantic elements for all sections


**Verification**:
- [ ] Proper document structure (header, main, footer)
- [ ] Semantic HTML5 elements used (nav, section, article)
- [ ] Heading hierarchy correct (single H1, proper H2/H3)
- [ ] ARIA landmarks where appropriate
- [ ] All sections have meaningful IDs for navigation


**Acceptance Criteria**:
```html
<body>
  <header class="site-header">
    <nav class="navigation" aria-label="Main navigation">
      <!-- Navigation content -->
    </nav>
  </header>
  
  <main>
    <section id="hero" class="hero">
      <h1><!-- Main headline --></h1>
    </section>
    
    <section id="about" class="about">
      <h2>About</h2>
    </section>
    
    <!-- Additional sections -->
  </main>
  
  <footer class="site-footer">
    <!-- Footer content -->
  </footer>
</body>
```


**Test**:
- Validate HTML: https://validator.w3.org/
- Check heading hierarchy with browser DevTools
- Verify semantic structure with accessibility tools


---


### PHASE 2: NAVIGATION


#### 2.1 Desktop Navigation


**Outcome**: Functional desktop navigation with links to all sections


**Verification**:
- [ ] Navigation bar spans full width
- [ ] Logo/name on left, menu items on right
- [ ] All section links present
- [ ] Active state for current section
- [ ] Smooth scroll to sections
- [ ] Hover effects on links


**Acceptance Criteria**:
```html
<nav class="navigation">
  <a href="#home" class="navigation__logo">Brandon Orozco</a>
  <ul class="navigation__menu">
    <li><a href="#about">About</a></li>
    <li><a href="#services">Services</a></li>
    <li><a href="#portfolio">Portfolio</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>
```


```css
.navigation {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: var(--spacing-sm) var(--container-padding);
}

.navigation__menu {
  display: flex;
  gap: var(--spacing-md);
  list-style: none;
}
```


**Test**:
- All links navigate to correct sections
- Hover effects trigger smoothly
- Layout doesn't break at various desktop widths


---


#### 2.2 Mobile Navigation


**Outcome**: Hamburger menu that reveals navigation on mobile devices


**Verification**:
- [ ] Hamburger icon visible on mobile (<768px)
- [ ] Desktop menu hidden on mobile
- [ ] Menu opens when hamburger clicked
- [ ] Menu closes when link clicked
- [ ] Menu closes when clicking outside
- [ ] Smooth open/close animation
- [ ] Body scroll disabled when menu open


**Acceptance Criteria**:
```html
<nav class="navigation">
  <a href="#home" class="navigation__logo">Brandon Orozco</a>
  <button class="navigation__toggle" aria-label="Toggle menu" aria-expanded="false">
    <span></span>
    <span></span>
    <span></span>
  </button>
  <ul class="navigation__menu">
    <!-- Menu items -->
  </ul>
</nav>
```


```javascript
// navigation.js
const toggle = document.querySelector('.navigation__toggle');
const menu = document.querySelector('.navigation__menu');

toggle.addEventListener('click', () => {
  const isOpen = toggle.getAttribute('aria-expanded') === 'true';
  toggle.setAttribute('aria-expanded', !isOpen);
  menu.classList.toggle('navigation__menu--open');
  document.body.classList.toggle('menu-open');
});
```


**Test**:
- Hamburger functions on mobile viewport
- Keyboard accessible (Enter key toggles)
- Menu slides in smoothly
- All functionality works on touch devices


---


### PHASE 3: HERO SECTION


#### 3.1 Hero Content & Layout


**Outcome**: Compelling hero section with headline, subheading, and CTA


**Verification**:
- [ ] Hero section spans full viewport height
- [ ] Content centered (vertically and horizontally)
- [ ] Headline clearly visible and readable
- [ ] Subheading provides context
- [ ] Primary CTA button prominent
- [ ] Responsive across all breakpoints
- [ ] Professional appearance


**Acceptance Criteria**:
```html
<section class="hero">
  <div class="hero__content">
    <h1 class="hero__headline">
      <!-- Client-provided headline -->
      AI Implementation Strategy for Enterprise Leaders
    </h1>
    <p class="hero__subheading">
      <!-- Client-provided subheading -->
      Transform AI potential into measurable business outcomes
    </p>
    <a href="#contact" class="cta cta--primary">
      Schedule Strategy Session
    </a>
  </div>
</section>
```


```css
.hero {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: var(--spacing-xl) var(--container-padding);
}

.hero__content {
  max-width: 800px;
  text-align: center;
}

.cta--primary {
  display: inline-block;
  padding: 1rem 2rem;
  background: var(--color-primary);
  color: white;
  border-radius: 4px;
  font-weight: 600;
  min-height: 44px; /* Touch-friendly */
  transition: transform var(--transition-fast);
}

.cta--primary:hover {
  transform: translateY(-2px);
}
```


**Test**:
- Hero displays correctly on mobile, tablet, desktop
- CTA is easily clickable (min 44x44px)
- Text is readable against background
- Layout doesn't break at any width


---


### PHASE 4: ABOUT SECTION


#### 4.1 About Layout & Content


**Outcome**: Professional about section with bio and photo


**Verification**:
- [ ] Section has clear heading
- [ ] Professional photo displayed (if provided)
- [ ] Bio text readable and well-formatted
- [ ] Responsive layout (stacked on mobile, side-by-side on desktop)
- [ ] Proper spacing and alignment
- [ ] Expertise highlights or credentials visible


**Acceptance Criteria**:
```html
<section id="about" class="about">
  <div class="container">
    <h2 class="section__heading">About Brandon</h2>
    <div class="about__content">
      <div class="about__image">
        <img src="images/brandon-photo.jpg" alt="Brandon Orozco" />
      </div>
      <div class="about__text">
        <p><!-- Client-provided bio --></p>
        <p><!-- Additional paragraphs --></p>
        <ul class="about__highlights">
          <li><!-- Expertise area 1 --></li>
          <li><!-- Expertise area 2 --></li>
          <li><!-- Expertise area 3 --></li>
        </ul>
      </div>
    </div>
  </div>
</section>
```


```css
.about__content {
  display: grid;
  grid-template-columns: 1fr;
  gap: var(--spacing-lg);
}

@media (min-width: 768px) {
  .about__content {
    grid-template-columns: 1fr 2fr;
    align-items: center;
  }
}

.about__image img {
  width: 100%;
  max-width: 400px;
  border-radius: 8px;
}
```


**Test**:
- Image loads correctly
- Text is readable and well-spaced
- Layout adapts properly to different screen sizes
- Image has appropriate alt text


---


### PHASE 5: RESPONSIVE DESIGN VERIFICATION


#### 5.1 Cross-Device Testing


**Outcome**: Site functions perfectly on all device sizes


**Verification**:
- [ ] Mobile portrait (320px - 480px) tested
- [ ] Mobile landscape (481px - 767px) tested
- [ ] Tablet portrait (768px - 1023px) tested
- [ ] Desktop (1024px+) tested
- [ ] No horizontal scroll on any breakpoint
- [ ] All text readable without zooming
- [ ] Touch targets minimum 44x44px
- [ ] Images scale appropriately


**Test Devices**:
- iPhone SE (375px)
- iPhone 12/13 (390px)
- iPad (768px)
- Desktop (1920px)


**Browser DevTools**:
- Test all breakpoints using responsive design mode
- Verify layout integrity at every 100px increment
- Check for overflow issues


**Acceptance Criteria**:
- No layout breaks at any width
- All functionality works on touch devices
- Performance remains smooth on mobile


---


### PHASE 6: ACCESSIBILITY & PERFORMANCE


#### 6.1 Accessibility Implementation


**Outcome**: WCAG 2.1 AA compliant site


**Verification**:
- [ ] Color contrast ratios meet 4.5:1 minimum
- [ ] All images have descriptive alt text
- [ ] Keyboard navigation fully functional
- [ ] Focus indicators clearly visible
- [ ] ARIA labels on icon-only buttons
- [ ] Semantic HTML structure maintained
- [ ] Skip navigation link implemented
- [ ] Form labels properly associated


**Test Tools**:
- WAVE browser extension
- axe DevTools
- Lighthouse accessibility audit
- Keyboard-only navigation test


**Acceptance Criteria**:
```html
<!-- Skip navigation for screen readers -->
<a href="#main-content" class="skip-link">Skip to main content</a>

<!-- Proper button labeling -->
<button aria-label="Toggle mobile menu" aria-expanded="false">
  <span aria-hidden="true">☰</span>
</button>

<!-- Image alt text -->
<img src="photo.jpg" alt="Brandon Orozco presenting at AI conference" />
```


**Test**:
- Run WAVE scan (0 errors required)
- Navigate entire site using only keyboard
- Test with screen reader (VoiceOver, NVDA, or JAWS)


---


#### 6.2 Performance Optimization


**Outcome**: Fast-loading, performant website


**Verification**:
- [ ] Images optimized (WebP format, compressed)
- [ ] CSS minified
- [ ] JavaScript minified
- [ ] No unused CSS or JS
- [ ] Lighthouse performance score 90+
- [ ] First Contentful Paint < 2s
- [ ] No console errors
- [ ] Smooth animations (60fps)


**Test Tools**:
- Lighthouse (Chrome DevTools)
- WebPageTest
- GTmetrix


**Acceptance Criteria**:
```bash
# Check image sizes
find images/ -type f -exec ls -lh {} \;
# All images should be < 500KB

# Lighthouse scores
# Performance: 90+
# Accessibility: 90+
# Best Practices: 90+
# SEO: 90+
```


**Optimization Checklist**:
- [ ] Images compressed (TinyPNG, Squoosh)
- [ ] Images converted to WebP
- [ ] Lazy loading for below-fold images
- [ ] CSS combined into main.css
- [ ] JavaScript deferred where possible
- [ ] No render-blocking resources


---


## SPRINT 1: VERIFICATION CHECKLIST


### Complete Before Moving to Review


#### Functional Requirements
- [ ] Navigation works on desktop
- [ ] Navigation works on mobile (hamburger menu)
- [ ] Smooth scrolling to sections
- [ ] Hero section displays correctly
- [ ] About section displays correctly
- [ ] All links functional
- [ ] No broken images


#### Design Requirements
- [ ] Consistent spacing throughout
- [ ] Typography hierarchy clear
- [ ] Colors aligned with design system
- [ ] Responsive on all breakpoints
- [ ] Professional appearance


#### Technical Requirements
- [ ] HTML validates (W3C validator)
- [ ] CSS follows architecture
- [ ] JavaScript has no errors
- [ ] No console warnings
- [ ] Accessibility tests pass
- [ ] Performance targets met


#### Documentation
- [ ] Code is commented
- [ ] README.md updated
- [ ] VERIFICATION.md completed
- [ ] Known issues documented


---


## SPRINT 2: SERVICES & PORTFOLIO


**Sprint Goal**: Add services section, portfolio/case studies section, and initial contact section.


**Duration**: 1 week (estimated)


---


### PHASE 1: SERVICES SECTION


#### 1.1 Service Card Layout


**Outcome**: Grid of service offerings with descriptions


**Verification**:
- [ ] Services displayed in grid layout
- [ ] Each service has icon, title, description
- [ ] Responsive grid (1 column mobile, 2-3 desktop)
- [ ] Hover effects on service cards
- [ ] Clear typography hierarchy


**Acceptance Criteria**:
```html
<section id="services" class="services">
  <div class="container">
    <h2 class="section__heading">Services</h2>
    <div class="services__grid">
      <article class="service-card">
        <div class="service-card__icon">
          <!-- Icon -->
        </div>
        <h3 class="service-card__title"><!-- Service name --></h3>
        <p class="service-card__description"><!-- Description --></p>
      </article>
      <!-- Additional service cards -->
    </div>
  </div>
</section>
```


```css
.services__grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: var(--spacing-md);
}

@media (min-width: 768px) {
  .services__grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (min-width: 1024px) {
  .services__grid {
    grid-template-columns: repeat(3, 1fr);
  }
}
```


**Test**:
- Grid adapts properly to all screen sizes
- Cards are consistent in size and spacing
- Hover effects work smoothly


---


#### 1.2 Service Detail Expansion (Optional)


**Outcome**: Expandable sections for detailed service information


**Verification**:
- [ ] Accordion or modal for detailed info
- [ ] Smooth expand/collapse animation
- [ ] Keyboard accessible
- [ ] Proper ARIA attributes
- [ ] Mobile-friendly interaction


**Acceptance Criteria**:
```html
<div class="service-detail">
  <button class="service-detail__trigger" aria-expanded="false">
    <h3>AI Strategy & Roadmapping</h3>
    <span class="icon" aria-hidden="true">+</span>
  </button>
  <div class="service-detail__content" hidden>
    <p><!-- Detailed description --></p>
    <ul>
      <li><!-- Deliverable 1 --></li>
      <li><!-- Deliverable 2 --></li>
    </ul>
  </div>
</div>
```


**Test**:
- Accordion expands/collapses smoothly
- Keyboard navigation works (Enter, Space)
- Screen reader announces state changes


---


### PHASE 2: PORTFOLIO/CASE STUDIES


#### 2.1 Case Study Card Grid


**Outcome**: Portfolio section with case study cards


**Verification**:
- [ ] Case studies in grid layout
- [ ] Each card shows: title, industry, brief results
- [ ] Link to full case study details
- [ ] Responsive grid layout
- [ ] Visual hierarchy clear


**Acceptance Criteria**:
```html
<section id="portfolio" class="portfolio">
  <div class="container">
    <h2 class="section__heading">Case Studies</h2>
    <div class="portfolio__grid">
      <article class="case-study-card">
        <div class="case-study-card__image">
          <!-- Optional image -->
        </div>
        <div class="case-study-card__content">
          <span class="case-study-card__industry">Manufacturing</span>
          <h3 class="case-study-card__title">
            Automated Quality Control System
          </h3>
          <div class="case-study-card__results">
            <span class="metric">
              <strong>40%</strong> Cost Reduction
            </span>
            <span class="metric">
              <strong>6 months</strong> Implementation
            </span>
          </div>
          <a href="#case-study-1" class="case-study-card__link">
            Read Full Case Study →
          </a>
        </div>
      </article>
      <!-- Additional case studies -->
    </div>
  </div>
</section>
```


**Test**:
- Grid layout works on all devices
- Cards are visually balanced
- Links navigate correctly


---


#### 2.2 Case Study Detail View


**Outcome**: Full case study pages or modals


**Verification**:
- [ ] Detailed view for each case study
- [ ] Problem/Solution/Results format
- [ ] Quantifiable outcomes highlighted
- [ ] Client testimonial (if available)
- [ ] Navigation between case studies


**Acceptance Criteria**:
```html
<article class="case-study-detail">
  <header class="case-study-detail__header">
    <h2><!-- Project title --></h2>
    <span class="case-study-detail__industry"><!-- Industry --></span>
  </header>
  
  <section class="case-study-detail__section">
    <h3>The Challenge</h3>
    <p><!-- Problem statement --></p>
  </section>
  
  <section class="case-study-detail__section">
    <h3>The Solution</h3>
    <p><!-- Solution overview --></p>
  </section>
  
  <section class="case-study-detail__section">
    <h3>The Results</h3>
    <div class="case-study-detail__metrics">
      <!-- Quantifiable outcomes -->
    </div>
  </section>
  
  <blockquote class="case-study-detail__testimonial">
    <!-- Client quote if available -->
  </blockquote>
</article>
```


**Test**:
- Full case study is readable and well-formatted
- Navigation works between studies
- Testimonials are properly attributed


---


### PHASE 3: CONTACT SECTION


#### 3.1 Contact Form


**Outcome**: Functional contact form with validation


**Verification**:
- [ ] Form has name, email, message fields
- [ ] Email validation working
- [ ] Required field indicators
- [ ] Submit button functional
- [ ] Success message displays
- [ ] Error messages clear and helpful
- [ ] Form accessible (labels, focus management)


**Acceptance Criteria**:
```html
<section id="contact" class="contact">
  <div class="container">
    <h2 class="section__heading">Let's Talk</h2>
    <form class="contact-form" action="/submit" method="POST">
      <div class="form-group">
        <label for="name">Name</label>
        <input 
          type="text" 
          id="name" 
          name="name" 
          required 
          aria-required="true"
        />
      </div>
      
      <div class="form-group">
        <label for="email">Email</label>
        <input 
          type="email" 
          id="email" 
          name="email" 
          required 
          aria-required="true"
        />
      </div>
      
      <div class="form-group">
        <label for="message">Message</label>
        <textarea 
          id="message" 
          name="message" 
          rows="6" 
          required 
          aria-required="true"
        ></textarea>
      </div>
      
      <button type="submit" class="cta cta--primary">
        Send Message
      </button>
    </form>
    
    <div class="contact__alternatives">
      <p>Or reach out directly:</p>
      <a href="mailto:brandon@example.com">brandon@example.com</a>
      <a href="https://linkedin.com/in/brandonorozco">LinkedIn</a>
    </div>
  </div>
</section>
```


**JavaScript Validation**:
```javascript
// form.js
const form = document.querySelector('.contact-form');

form.addEventListener('submit', async (e) => {
  e.preventDefault();
  
  // Validate fields
  const name = form.name.value.trim();
  const email = form.email.value.trim();
  const message = form.message.value.trim();
  
  if (!name || !email || !message) {
    showError('Please fill in all fields');
    return;
  }
  
  if (!isValidEmail(email)) {
    showError('Please enter a valid email');
    return;
  }
  
  // Submit form
  try {
    await submitForm({ name, email, message });
    showSuccess('Message sent! I\'ll respond within 24 hours.');
    form.reset();
  } catch (error) {
    showError('Something went wrong. Please try again.');
  }
});
```


**Test**:
- All validation works correctly
- Error messages are clear
- Success message displays
- Form resets after submission
- Keyboard navigation works


---


#### 3.2 Contact Alternatives


**Outcome**: Multiple ways to contact (email, LinkedIn, calendar)


**Verification**:
- [ ] Direct email link (click-to-email)
- [ ] LinkedIn profile link
- [ ] Calendar booking link (if implemented)
- [ ] Expected response time stated
- [ ] All links open correctly


**Test**:
- Email link opens mail client
- LinkedIn opens in new tab
- Calendar integration works (if implemented)


---


### PHASE 4: FOOTER


#### 4.1 Footer Content & Layout


**Outcome**: Complete footer with navigation, contact, social links


**Verification**:
- [ ] Footer navigation links
- [ ] Contact information
- [ ] Social media links
- [ ] Copyright notice
- [ ] Privacy policy link (if applicable)
- [ ] Responsive layout
- [ ] Clear visual separation from main content


**Acceptance Criteria**:
```html
<footer class="site-footer">
  <div class="container">
    <div class="site-footer__content">
      <div class="site-footer__section">
        <h3>Brandon Orozco</h3>
        <p>AI Implementation Consultant</p>
      </div>
      
      <nav class="site-footer__section">
        <h4>Quick Links</h4>
        <ul>
          <li><a href="#about">About</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#portfolio">Portfolio</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav>
      
      <div class="site-footer__section">
        <h4>Connect</h4>
        <div class="social-links">
          <a href="mailto:brandon@example.com" aria-label="Email">Email</a>
          <a href="https://linkedin.com" aria-label="LinkedIn">LinkedIn</a>
        </div>
      </div>
    </div>
    
    <div class="site-footer__bottom">
      <p>&copy; 2025 Brandon Orozco. All rights reserved.</p>
    </div>
  </div>
</footer>
```


**Test**:
- All footer links work
- Layout adapts to mobile
- Social links open correctly
- Copyright year is current


---


## SPRINT 2: VERIFICATION CHECKLIST


### Complete Before Moving to Review


#### Functional Requirements
- [ ] Services section displays correctly
- [ ] Portfolio/case studies render properly
- [ ] Contact form validates input
- [ ] Contact form submits successfully
- [ ] Footer navigation works
- [ ] All external links open correctly


#### Design Requirements
- [ ] Consistent visual style throughout
- [ ] Service cards well-designed
- [ ] Case studies visually appealing
- [ ] Contact section inviting
- [ ] Footer professional


#### Technical Requirements
- [ ] Form validation working
- [ ] No JavaScript errors
- [ ] Accessibility maintained
- [ ] Performance still 90+
- [ ] Responsive on all devices


---


## SPRINT 3: POLISH & OPTIMIZATION


**Sprint Goal**: Final refinements, animations, SEO, and deployment preparation.


---


### PHASE 1: ANIMATIONS & INTERACTIONS


#### 1.1 Scroll Animations


**Outcome**: Smooth fade-in animations as sections enter viewport


**Verification**:
- [ ] Elements fade in when scrolled into view
- [ ] Animations are subtle and professional
- [ ] Performance remains smooth (60fps)
- [ ] Respects prefers-reduced-motion
- [ ] Works on all devices


**Acceptance Criteria**:
```javascript
// animations.js
const observerOptions = {
  threshold: 0.1,
  rootMargin: '0px 0px -100px 0px'
};

const observer = new IntersectionObserver((entries) => {
  entries.forEach(entry => {
    if (entry.isIntersecting) {
      entry.target.classList.add('animate-in');
      observer.unobserve(entry.target);
    }
  });
}, observerOptions);

// Observe all sections
document.querySelectorAll('section').forEach(section => {
  observer.observe(section);
});
```


```css
/* Fade-in animation */
section {
  opacity: 0;
  transform: translateY(30px);
  transition: opacity 0.6s ease, transform 0.6s ease;
}

section.animate-in {
  opacity: 1;
  transform: translateY(0);
}

/* Respect user preferences */
@media (prefers-reduced-motion: reduce) {
  section {
    opacity: 1;
    transform: none;
    transition: none;
  }
}
```


**Test**:
- Animations trigger at correct scroll position
- Performance remains smooth
- No janky animations
- Reduced motion preference respected


---


#### 1.2 Interactive Elements Polish


**Outcome**: Refined hover states and micro-interactions


**Verification**:
- [ ] All buttons have hover effects
- [ ] Links have clear hover states
- [ ] Card hover effects implemented
- [ ] Smooth transitions throughout
- [ ] Focus states clearly visible


**Test**:
- All interactive elements respond to hover
- Transitions are smooth
- No visual glitches


---


### PHASE 2: SEO OPTIMIZATION


#### 2.1 Meta Tags & Structured Data


**Outcome**: Complete SEO meta tags and Schema.org markup


**Verification**:
- [ ] Title tags optimized
- [ ] Meta descriptions written
- [ ] Open Graph tags for social sharing
- [ ] Twitter Card tags
- [ ] Canonical URLs
- [ ] Schema.org markup for Professional Service
- [ ] Robots meta tags appropriate


**Acceptance Criteria**:
```html
<head>
  <!-- Primary Meta Tags -->
  <title>Brandon Orozco - AI Implementation Consultant | AI Strategy & Consulting</title>
  <meta name="title" content="Brandon Orozco - AI Implementation Consultant">
  <meta name="description" content="Expert AI consulting services for enterprises. Transform AI potential into measurable business outcomes with proven implementation strategies.">
  
  <!-- Open Graph / Facebook -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://brandonorozco.com/">
  <meta property="og:title" content="Brandon Orozco - AI Implementation Consultant">
  <meta property="og:description" content="Expert AI consulting services for enterprises.">
  <meta property="og:image" content="https://brandonorozco.com/og-image.jpg">
  
  <!-- Twitter -->
  <meta property="twitter:card" content="summary_large_image">
  <meta property="twitter:url" content="https://brandonorozco.com/">
  <meta property="twitter:title" content="Brandon Orozco - AI Implementation Consultant">
  <meta property="twitter:description" content="Expert AI consulting services for enterprises.">
  <meta property="twitter:image" content="https://brandonorozco.com/og-image.jpg">
  
  <!-- Canonical -->
  <link rel="canonical" href="https://brandonorozco.com/">
</head>
```


**Schema.org Markup**:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ProfessionalService",
  "name": "Brandon Orozco AI Consulting",
  "description": "AI implementation and strategy consulting services",
  "url": "https://brandonorozco.com",
  "founder": {
    "@type": "Person",
    "name": "Brandon Orozco"
  },
  "areaServed": "Worldwide",
  "sameAs": [
    "https://linkedin.com/in/brandonorozco"
  ]
}
</script>
```


**Test**:
- Validate structured data: https://search.google.com/test/rich-results
- Preview social sharing cards
- Check meta tags with SEO tools


---


#### 2.2 sitemap.xml & robots.txt


**Outcome**: Proper sitemap and robots.txt for search engines


**Verification**:
- [ ] sitemap.xml generated
- [ ] robots.txt configured
- [ ] Submitted to Google Search Console
- [ ] No indexing issues


**sitemap.xml**:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://brandonorozco.com/</loc>
    <lastmod>2025-12-15</lastmod>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
```


**robots.txt**:
```
User-agent: *
Allow: /

Sitemap: https://brandonorozco.com/sitemap.xml
```


---


### PHASE 3: FINAL TESTING


#### 3.1 Cross-Browser Testing


**Outcome**: Site works perfectly in all major browsers


**Verification**:
- [ ] Chrome (latest 2 versions)
- [ ] Firefox (latest 2 versions)
- [ ] Safari (latest 2 versions)
- [ ] Edge (latest 2 versions)
- [ ] Mobile Safari (iOS)
- [ ] Chrome Mobile (Android)


**Test Checklist per Browser**:
- [ ] All sections render correctly
- [ ] Navigation works
- [ ] Forms function
- [ ] Animations work
- [ ] No console errors


---


#### 3.2 Performance Audit


**Outcome**: Final performance optimization and validation


**Verification**:
- [ ] Lighthouse score 90+ all categories
- [ ] Core Web Vitals pass
- [ ] Images optimized
- [ ] CSS/JS minified
- [ ] No unused code
- [ ] Caching configured


**Performance Targets**:
- First Contentful Paint: < 2s
- Largest Contentful Paint: < 3s
- Time to Interactive: < 4s
- Total Blocking Time: < 300ms
- Cumulative Layout Shift: < 0.1


---


#### 3.3 Accessibility Final Check


**Outcome**: WCAG 2.1 AA compliance verified


**Verification**:
- [ ] WAVE scan: 0 errors
- [ ] axe DevTools: 0 violations
- [ ] Keyboard navigation complete
- [ ] Screen reader test passed
- [ ] Color contrast verified
- [ ] Form accessibility confirmed


**Final Test**:
- Navigate entire site using only keyboard
- Test with screen reader
- Verify all interactive elements accessible


---


### PHASE 4: DEPLOYMENT PREPARATION


#### 4.1 Production Build


**Outcome**: Optimized production-ready files


**Verification**:
- [ ] CSS minified
- [ ] JavaScript minified
- [ ] Images compressed
- [ ] Unused code removed
- [ ] Source maps generated (if needed)
- [ ] Environment variables configured


**Build Checklist**:
- [ ] Update all absolute URLs to production domain
- [ ] Remove development-only code
- [ ] Verify all paths are correct
- [ ] Test production build locally


---


#### 4.2 Deployment


**Outcome**: Site live and accessible


**Verification**:
- [ ] Domain configured
- [ ] DNS propagated
- [ ] SSL certificate active (HTTPS)
- [ ] All pages load correctly
- [ ] Forms submit successfully
- [ ] Analytics tracking
- [ ] No broken links


**Post-Deployment Checklist**:
- [ ] Test all functionality on live site
- [ ] Verify analytics tracking
- [ ] Check mobile responsiveness
- [ ] Test contact form submission
- [ ] Submit sitemap to search engines


---


## SPRINT 3: VERIFICATION CHECKLIST


### Complete Before Launch


#### Polish & Refinement
- [ ] All animations working smoothly
- [ ] Micro-interactions refined
- [ ] Visual consistency throughout
- [ ] Professional appearance


#### SEO & Discoverability
- [ ] All meta tags implemented
- [ ] Schema.org markup validated
- [ ] Sitemap submitted
- [ ] robots.txt configured
- [ ] Open Graph tags tested


#### Technical Excellence
- [ ] Lighthouse scores 90+
- [ ] Cross-browser tested
- [ ] Accessibility verified
- [ ] Performance optimized
- [ ] No console errors/warnings


#### Deployment
- [ ] Production build created
- [ ] Domain configured
- [ ] SSL certificate active
- [ ] Live site tested
- [ ] Analytics configured


---


## Definition of Done (Universal)


**A task/sprint is ONLY complete when ALL of the following are true**:


### Code Quality
- [ ] Code follows established patterns and architecture
- [ ] All code is commented where necessary
- [ ] No console errors or warnings
- [ ] HTML validates (W3C)
- [ ] CSS follows naming conventions
- [ ] JavaScript is clean and organized


### Functionality
- [ ] All acceptance criteria met
- [ ] Manual testing completed
- [ ] Works on all target devices
- [ ] All edge cases handled
- [ ] Error states implemented


### Design
- [ ] Matches design specifications
- [ ] Consistent with design system
- [ ] Responsive across breakpoints
- [ ] Visual polish complete
- [ ] Professional appearance


### Accessibility
- [ ] WCAG 2.1 AA compliant
- [ ] Keyboard accessible
- [ ] Screen reader tested
- [ ] ARIA labels correct
- [ ] Color contrast verified


### Performance
- [ ] Lighthouse score requirements met
- [ ] Images optimized
- [ ] No performance regressions
- [ ] Smooth animations (60fps)
- [ ] Fast load times


### Documentation
- [ ] Code commented appropriately
- [ ] README.md updated
- [ ] VERIFICATION.md completed
- [ ] Known issues documented


### Client Approval
- [ ] Client has reviewed deliverable
- [ ] Feedback addressed
- [ ] Final approval received


---


## Quality Gates


**Mandatory checkpoints that MUST be passed before proceeding**:


### Before Ending Any Sprint
1. **Self-Review**: Developer reviews all verification items
2. **Testing**: All acceptance criteria tests run and pass
3. **Documentation**: All required docs completed
4. **Clean Code**: No errors, warnings, or TODOs remain


### Before Moving to "Ready for Review"
1. **Complete Sprint**: All sprint tasks 100% done
2. **Quality Check**: All Definition of Done items checked
3. **Documentation**: SUMMARY.md and VISUAL_GUIDE.md created
4. **Self-Test**: Full site tested by developer


### Before Deployment
1. **Client Approval**: Explicit approval received
2. **Final Testing**: Production build tested thoroughly
3. **Monitoring**: Analytics and error tracking configured
4. **Backup**: Previous version backed up


---


## How AI Should Use This Document


### Starting a New Sprint
1. Read sprint goal and understand objectives
2. Review all phases and tasks
3. Set up verification checklist
4. Begin Phase 1, Task 1


### During Sprint Execution
1. Work through tasks sequentially
2. Complete each verification checklist before proceeding
3. Run acceptance tests immediately after implementation
4. Document decisions in code comments
5. Cross-reference Reference.md for design decisions


### Before Marking Task Complete
1. Re-read verification checklist
2. Run all acceptance tests
3. Test on multiple devices/browsers
4. Check off all items
5. Only then move to next task


### Before Sprint Review
1. Verify 100% of tasks complete
2. Run full site test
3. Complete all documentation
4. Create SUMMARY.md
5. Copy to "ready for review" folder


### Handling Blockers
1. Document the blocker in detail
2. Propose alternative approaches
3. Ask client for guidance
4. Don't improvise solutions that contradict specifications


---


## Continuous Improvement


This document may be updated based on:
- Client feedback during sprints
- Technical discoveries during implementation
- Performance or accessibility findings
- New requirements or features


**All changes must be**:
- Documented with version history
- Communicated to client
- Applied consistently going forward


---


**Document Status**: Active  
**Last Updated**: December 15, 2025  
**Version**: 1.0  
**Next Review**: After Sprint 1 completion
