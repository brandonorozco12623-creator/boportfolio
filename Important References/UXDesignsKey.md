# UX Design Analysis: AI Consultant Portfolio Best Practices
## Notan + Swiss Style Integration

**Project**: Brandon Orozco AI Consultant Portfolio  
**Design System**: Notan (Japanese Positive/Negative Space) + Swiss Style (International Typographic Style)  
**Purpose**: Create bold, sophisticated design that communicates AI expertise through visual clarity  
**Date Created**: December 15, 2025  
**Last Updated**: December 15, 2025


---


## Executive Summary

This document defines the **Notan-Swiss design system** for the Brandon Orozco AI Consultant portfolio—a fusion of Japanese aesthetic minimalism with Swiss typographic precision. This combination creates a distinctive visual identity that stands apart from typical consultant websites while maintaining professional authority.


### Design Philosophy

**"Dramatic clarity through reduction to essence"**

- **Notan Contribution**: High-contrast positive/negative space, bold geometric compositions, limited color palette
- **Swiss Contribution**: Mathematical precision, grid-based layouts, typographic hierarchy, functional clarity
- **Combined Result**: Visually striking yet professionally authoritative—perfect for communicating AI consulting expertise


### Why This Design System for AI Consulting

1. **Authority Through Simplicity**: Bold Notan contrasts = confident expertise; Swiss precision = technical mastery
2. **Memorable Identity**: High-contrast, clean aesthetics stand out in a sea of generic consultant sites
3. **Timeless Aesthetic**: Both styles proven over 50+ years—won't look dated
4. **Communicates Core Value**: "I simplify complexity" expressed visually through reduction to essential elements


---


## Part 1: Core Design Principles (Notan + Swiss Fusion)


### 1. High-Contrast Composition (Notan)


**Core Philosophy**: "Positive and negative space create each other through dramatic contrast"


**Visual Characteristics**:
- Pure black (#000000) and white (#FFFFFF) as primary colors
- Single accent color (blue #0066FF) for CTAs and emphasis
- Alternating section backgrounds (black → white → black → white)
- Bold geometric shapes with clean, defined edges
- Negative space treated as active design element (not just "empty")
- High visual impact through contrast, not decoration


**Design Heritage**:
- **Notan**: Japanese aesthetic principle emphasizing light-dark harmony
- Influenced by Japanese woodblock prints and ink paintings
- Adapted to modernist design by Arthur Wesley Dow
- Contemporary applications in bold minimalist branding


**User Experience Impact**:
- Immediate visual impact—visitors remember the site
- High contrast ensures readability and accessibility
- Dramatic but not chaotic—sophisticated energy
- Conveys confidence: "I make bold decisions with clarity"


**Technical Implementation**:
```css
/* Notan color system - extreme contrast */
:root {
  --notan-black: #000000;
  --notan-white: #FFFFFF;
  --notan-accent-blue: #0066FF;
  
  /* Minimal supporting grays */
  --swiss-gray-dark: #1A1A1A;
  --swiss-gray-light: #F5F5F5;
}

/* Alternating section contrast */
.section-black {
  background: var(--notan-black);
  color: var(--notan-white);
}

.section-white {
  background: var(--notan-white);
  color: var(--notan-black);
}

.section-accent {
  background: var(--notan-accent-blue);
  color: var(--notan-white);
}

/* Bold shapes with defined edges */
.notan-card {
  background: var(--notan-black);
  color: var(--notan-white);
  border: 2px solid var(--notan-black);
  border-radius: 0; /* Sharp corners */
  padding: var(--space-xl);
}
```


**Performance Considerations**:
- Pure black/white loads instantly (no gradients or complex colors)
- High contrast improves readability, reducing cognitive load
- Minimal color palette = smaller CSS footprint


---


### 2. Mathematical Precision (Swiss Style)


**Core Philosophy**: "Every measurement is intentional; beauty through proportion and grid"


**Visual Characteristics**:
- 12-column grid system for all layouts
- 8px base spacing unit (all spacing is multiple of 8)
- Perfect alignment—no off-by-1px errors
- Consistent spacing ratios (8px, 16px, 32px, 48px, 64px, 96px)
- Mathematical type scale (Perfect Fourth ratio: 1.333)
- Baseline grid for vertical rhythm


**Design Heritage**:
- **Swiss Style**: 1950s modernist movement from Switzerland
- Pioneers: Josef Müller-Brockmann, Armin Hofmann, Emil Ruder
- Foundation of International Typographic Style
- Emphasizes objectivity, clarity, and grid-based layouts


**User Experience Impact**:
- Predictable, easy-to-scan layouts
- Professional, trustworthy appearance
- Reduces cognitive load through consistency
- Conveys technical competence through precision


**Technical Implementation**:
```css
/* Swiss spacing system - 8px base unit */
:root {
  --space-unit: 0.5rem;    /* 8px */
  --space-xs: 0.5rem;      /* 8px */
  --space-sm: 1rem;        /* 16px */
  --space-md: 2rem;        /* 32px */
  --space-lg: 3rem;        /* 48px */
  --space-xl: 4rem;        /* 64px */
  --space-2xl: 6rem;       /* 96px */
  --space-3xl: 8rem;       /* 128px */
}

/* Swiss grid system - 12 columns */
.swiss-grid {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: var(--space-md);
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 var(--space-md);
}

/* Proportional type scale */
--text-base: 1rem;       /* 16px */
--text-lg: 1.125rem;     /* 18px */
--text-xl: 1.5rem;       /* 24px */
--text-2xl: 2rem;        /* 32px */
--text-3xl: 2.666rem;    /* ~43px */
--text-4xl: 3.555rem;    /* ~57px */
--text-5xl: 4.74rem;     /* ~76px */
```


**Grid Usage Rules**:
- All content aligns to 12-column grid
- Text blocks span 6-8 columns maximum (optimal reading width)
- Images/visuals can span full 12 columns
- Asymmetric layouts within grid (not centered)


---


### 3. Typography as Primary Design Element (Swiss Style)


**Core Philosophy**: "Typography is information made visible; it must be perfect"


**Visual Characteristics**:
- Single sans-serif typeface (Helvetica Neue or Inter)
- Hierarchy through size and weight only (not color or decoration)
- Flush left, ragged right alignment
- Generous whitespace around text
- Precise letter-spacing and line-height
- Large, bold headlines (up to 100px+ for architectural impact)


**Type Selection**:
- **Primary**: Helvetica Neue (classic Swiss choice)
- **Alternative**: Inter (modern, optimized for screens)
- **Why sans-serif**: Clarity, readability, timeless professionalism


**Hierarchy Rules**:
```
H1: 76-101px, Bold (900), Line-height 1.0 - Architectural statements
H2: 43-57px, Bold (700), Line-height 1.1 - Section headers
H3: 32px, Semibold (600), Line-height 1.2 - Subsections
Body: 18px, Regular (400), Line-height 1.6 - Optimal readability
Caption: 14px, Regular (400), Line-height 1.4 - Supporting text
```


**User Experience Impact**:
- Clear hierarchy guides reader through content
- Large headlines create visual anchors
- Excellent readability reduces cognitive load
- Professional, authoritative tone


**Technical Implementation**:
```css
/* Swiss typography system */
:root {
  --font-primary: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  --font-weight-regular: 400;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
  --font-weight-black: 900;
}

/* Architectural headline (Notan scale + Swiss precision) */
h1 {
  font-family: var(--font-primary);
  font-size: clamp(3rem, 10vw, 6.32rem); /* Responsive: 48-101px */
  font-weight: var(--font-weight-black);
  line-height: 1.0;
  letter-spacing: -0.03em; /* Tighter for large sizes */
  text-transform: uppercase; /* Optional: adds geometric quality */
}

/* Section headline */
h2 {
  font-family: var(--font-primary);
  font-size: clamp(2rem, 5vw, 3.555rem); /* 32-57px */
  font-weight: var(--font-weight-bold);
  line-height: 1.1;
  letter-spacing: -0.02em;
}

/* Body text - optimized readability */
p {
  font-family: var(--font-primary);
  font-size: 1.125rem; /* 18px */
  font-weight: var(--font-weight-regular);
  line-height: 1.6; /* Optimal for reading */
  letter-spacing: 0;
  max-width: 65ch; /* Swiss principle: optimal line length */
  text-align: left; /* Flush left, ragged right */
}
```


**Typography as Shape (Notan Integration)**:
- Headlines treated as bold geometric forms
- Large letters create positive/negative space patterns
- Text blocks become architectural elements in layout


---


### 4. Asymmetrical Balance (Notan + Swiss)


**Core Philosophy**: "Visual weight distributed unevenly but harmoniously within structured grids"


**Visual Characteristics**:
- Not mirrored or centered, but balanced
- Large mass on one side balanced by smaller, denser element on other
- Dynamic, energetic compositions
- Swiss grid provides structure; Notan contrast creates tension
- Bold shapes positioned for spatial drama


**User Experience Impact**:
- Creates visual interest and movement
- Draws eye through deliberate composition
- More engaging than symmetrical layouts
- Conveys confidence and intentionality


**Technical Implementation**:
```css
/* Asymmetrical hero layout */
.hero-asymmetric {
  display: grid;
  grid-template-columns: repeat(12, 1fr); /* Swiss grid */
  gap: var(--space-md);
  min-height: 100vh;
  align-items: center;
}

.hero-content {
  grid-column: 1 / 8; /* Large text block: 7 columns */
}

.hero-visual {
  grid-column: 9 / 13; /* Smaller accent: 4 columns */
  background: var(--notan-accent-blue); /* Bold shape */
  padding: var(--space-xl);
}

/* Offset card grid - asymmetrical but balanced */
.card-grid-asymmetric {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: var(--space-md);
}

.card:nth-child(1) {
  grid-column: 1 / 6; /* Spans 5 columns */
  grid-row: 1 / 3; /* Double height */
}

.card:nth-child(2) {
  grid-column: 7 / 10; /* Spans 3 columns */
}

.card:nth-child(3) {
  grid-column: 10 / 13; /* Spans 3 columns */
}
```


**Layout Principles**:
- Use Swiss grid for structure, but don't center everything
- Create visual tension through offset positioning
- Balance large/bold with small/dense
- Maintain overall harmony despite asymmetry


---


### 5. Elimination of Ornamentation (Shared Principle)


**Core Philosophy**: "If it doesn't serve function, remove it—both styles reject decoration"


**Visual Characteristics**:
- No gradients, shadows, or visual effects
- No decorative patterns or textures
- Flat design aesthetic (pure colors, no depth illusions)
- No rounded corners (sharp, geometric edges)
- Beauty through proportion and space, not embellishment
- Icons reduced to simplest geometric forms


**User Experience Impact**:
- Loads faster (no complex visual effects)
- Ages better (no trendy effects that date quickly)
- Focuses attention on content and hierarchy
- Conveys professionalism and seriousness


**Technical Implementation**:
```css
/* NO decorative effects */
.element {
  /* Avoid these: */
  /* box-shadow: none; */
  /* border-radius: 0; */
  /* background: linear-gradient(...); - NO gradients */
  /* filter: blur/drop-shadow; - NO filters */
  
  /* YES to clean, flat design: */
  background: var(--notan-black);
  border: 2px solid var(--notan-black);
  border-radius: 0; /* Sharp corners */
}

/* Buttons are simple, bold shapes */
.btn-notan-swiss {
  background: var(--notan-accent-blue);
  color: var(--notan-white);
  padding: 1rem 2rem;
  border: none;
  border-radius: 0;
  /* No shadow, no gradient, no effects */
  transition: background 0.2s ease; /* Only simple state changes */
}

.btn-notan-swiss:hover {
  background: var(--notan-black); /* Contrast shift */
}
```


---


### 6. Mobile-First Responsive System


**Core Philosophy**: "Swiss grid scales mathematically; Notan contrast works at any size"


**Visual Characteristics**:
- Swiss 12-column grid scales to 6, 4, or 1 column on smaller screens
- Notan high contrast maintains impact at all sizes
- Touch-friendly tap targets (minimum 44x44px)
- Typography scales proportionally using clamp()
- Spacing system maintains mathematical relationships


**Breakpoint Strategy**:
```
Mobile: 320px - 639px → 1-column grid, stacked sections
Tablet: 640px - 1023px → 2-3 column grid, some asymmetry
Desktop: 1024px+ → Full 12-column grid, complex asymmetry
```


**User Experience Impact**:
- Consistency across devices (same visual language)
- High contrast ensures readability on any screen
- Mathematical spacing feels coherent at all sizes


**Technical Implementation**:
```css
/* Swiss responsive grid */
.swiss-grid {
  display: grid;
  gap: var(--space-md);
  padding: var(--space-sm);
}

/* Mobile: Single column */
@media (min-width: 320px) {
  .swiss-grid {
    grid-template-columns: 1fr;
  }
  
  /* Typography scales down but remains hierarchical */
  h1 { font-size: clamp(2.5rem, 10vw, 6.32rem); }
  p { font-size: 1rem; } /* Minimum readable size */
}

/* Tablet: Partial grid */
@media (min-width: 640px) {
  .swiss-grid {
    grid-template-columns: repeat(6, 1fr);
    padding: var(--space-md);
  }
  
  h1 { font-size: clamp(3rem, 10vw, 6.32rem); }
}

/* Desktop: Full 12-column system */
@media (min-width: 1024px) {
  .swiss-grid {
    grid-template-columns: repeat(12, 1fr);
    padding: var(--space-lg);
  }
}

/* Touch-friendly (Notan bold shapes work for fingers) */
.btn-notan {
  min-height: 44px;
  min-width: 120px;
  padding: 1rem 2rem;
  font-size: 1rem; /* 16px minimum - no iOS zoom */
}
```


**Performance for Mobile**:
- Pure black/white colors = instant rendering
- Minimal CSS (no complex styles)
- System fonts load immediately (Helvetica/Arial)
- High contrast = readable in any lighting


---


### 6. Progressive Disclosure


**Core Philosophy**: "Show essentials first, details on demand"


**Visual Characteristics**:
- Expandable sections for detailed information
- "Learn more" links for deep dives
- Tabbed interfaces for service categories
- Hover states that reveal additional context


**User Experience Impact**:
- Prevents overwhelming visitors with information
- Allows casual browsers and serious prospects to self-select depth
- Keeps pages scannable while providing depth


**Technical Implementation**:
```html
<!-- Accordion pattern for services -->
<div class="service-accordion">
  <button class="service-accordion__trigger" aria-expanded="false">
    <h3>AI Strategy & Roadmapping</h3>
    <span class="icon" aria-hidden="true">+</span>
  </button>
  <div class="service-accordion__content" hidden>
    <p>Detailed service description...</p>
    <ul class="service-accordion__deliverables">
      <li>Deliverable 1</li>
      <li>Deliverable 2</li>
    </ul>
  </div>
</div>
```


**Accessibility Considerations**:
- Use semantic HTML (buttons for interactive elements)
- Implement ARIA attributes (aria-expanded, aria-controls)
- Ensure keyboard navigation works perfectly
- Provide visible focus indicators


---


## Design Patterns Specific to AI/Tech Consulting


### 7. Demystifying Technical Complexity


**Challenge**: AI is intimidating to non-technical decision-makers


**Design Solution**:
- Visual process diagrams (step-by-step methodology)
- Plain language explanations (avoid jargon)
- Before/after comparisons
- ROI calculators or value estimators


**Implementation Example**:
```html
<!-- Process visualization -->
<section class="process">
  <h2>How We Work Together</h2>
  <ol class="process__steps">
    <li class="process__step">
      <span class="process__number">1</span>
      <h3>Discovery</h3>
      <p>Understand your business challenges and AI opportunities</p>
    </li>
    <li class="process__step">
      <span class="process__number">2</span>
      <h3>Strategy</h3>
      <p>Design custom AI roadmap aligned with business goals</p>
    </li>
    <!-- Additional steps -->
  </ol>
</section>
```


### 8. Building Personal Connection


**Challenge**: Consulting is a personal service (people hire people, not companies)


**Design Solution**:
- Prominent personal photo (professional but approachable)
- First-person voice in copy ("I help..." not "We provide...")
- Personal story or "About" section
- Video introduction (optional but powerful)


**Implementation Considerations**:
- Photo should be high-quality, well-lit, professional attire
- Facial expression: confident but warm (slight smile)
- Background: clean, uncluttered, relevant to work
- Consider different photos for different contexts (hero vs about page)


---


## Color Psychology for Professional Services


### Trust & Authority Colors


**Blue**: Most used in professional services for good reason
- Conveys: Trust, stability, expertise, reliability
- Tech industry standard (IBM, Intel, Facebook, LinkedIn)
- Best for: Primary brand color, CTAs


**Gray/Neutral**: Professional and timeless
- Conveys: Sophistication, professionalism, neutrality
- Works well as: Background, text, supporting UI


**Green**: Growth and positive outcomes
- Conveys: Success, growth, innovation
- Best for: Highlighting results, success metrics


**Avoid**:
- Red (urgency, warning)
- Purple (too creative/whimsical for B2B)
- Bright yellow (unprofessional, hard to read)


**Color Accessibility**:
- Minimum 4.5:1 contrast ratio for body text
- 3:1 for large text and UI elements
- Test with tools like WebAIM Contrast Checker
- Provide non-color indicators (icons, patterns)


---


## Typography Best Practices


### Font Pairing Strategies


**Classic Professional**:
- Heading: Serif (Georgia, Merriweather, Lora)
- Body: Sans-serif (Inter, Open Sans, Roboto)
- Effect: Traditional, trustworthy, established


**Modern Tech**:
- Heading: Sans-serif (Poppins, Montserrat, Work Sans)
- Body: Sans-serif (Inter, System UI)
- Effect: Contemporary, clean, approachable


**Expert Authority**:
- Heading: Strong sans-serif (Space Grotesk, Outfit)
- Body: Readable sans-serif (Source Sans Pro)
- Effect: Confident, bold, distinctive


**Technical Implementation**:
```css
/* System font stack for performance */
--font-body: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, 
             "Helvetica Neue", Arial, sans-serif;

/* Google Fonts for distinctive headings */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700&display=swap');

--font-heading: 'Inter', var(--font-body);
```


---


## Animation & Interaction Principles


### When to Use Animation


**DO animate**:
- Page transitions (smooth, subtle)
- Scroll-triggered reveals (fade in, slide up)
- Hover states on interactive elements
- Loading states
- Success confirmations


**DON'T animate**:
- Continuous/infinite loops (distracting)
- Anything that impacts readability
- Elements that should be immediately visible
- Heavy animations on mobile (battery drain)


**Technical Guidelines**:
```css
/* Performance-optimized animations */
/* Only animate transform and opacity */
.fade-in {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.6s ease-out, transform 0.6s ease-out;
}

.fade-in.visible {
  opacity: 1;
  transform: translateY(0);
}

/* Respect user preferences */
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}
```


---


## SEO & Discoverability Considerations


### Technical SEO Musts


1. **Semantic HTML Structure**
   - Use heading hierarchy (H1 → H2 → H3)
   - Descriptive alt text for images
   - Schema.org markup for professional services


2. **Performance Optimization**
   - Core Web Vitals (LCP, FID, CLS)
   - Minimize JavaScript
   - Optimize images (WebP, lazy loading)


3. **Content Strategy**
   - Target keywords: "AI consultant", "AI implementation", "AI strategy"
   - Location-based keywords if local (e.g., "AI consultant [city]")
   - Service-specific landing pages


**Schema Markup Example**:
```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "ProfessionalService",
  "name": "Brandon Orozco - AI Consulting",
  "description": "AI implementation and strategy consulting",
  "url": "https://brandonorozco.com",
  "telephone": "+1-XXX-XXX-XXXX",
  "priceRange": "$$",
  "areaServed": "Worldwide"
}
</script>
```


---


## Accessibility Checklist


### WCAG 2.1 AA Compliance


- [ ] Color contrast meets 4.5:1 minimum
- [ ] All interactive elements keyboard accessible
- [ ] Focus indicators clearly visible
- [ ] ARIA labels for icon-only buttons
- [ ] Semantic HTML structure
- [ ] Alt text for all meaningful images
- [ ] Forms have clear labels and error messages
- [ ] No auto-playing media
- [ ] Skip navigation link for screen readers
- [ ] Responsive text sizing (no fixed px under 16px)


**Testing Tools**:
- axe DevTools (browser extension)
- WAVE (web accessibility evaluation tool)
- Keyboard-only navigation test
- Screen reader test (NVDA, JAWS, VoiceOver)


---


## Performance Budget


### Target Metrics


| Metric | Target | Maximum |
|--------|--------|---------|
| First Contentful Paint | < 1.5s | 2.0s |
| Largest Contentful Paint | < 2.5s | 3.0s |
| Total Page Weight | < 1.5MB | 2.0MB |
| JavaScript Bundle | < 200KB | 300KB |
| Time to Interactive | < 3.0s | 4.0s |


### Optimization Strategies


1. **Image Optimization**
   - Use next-gen formats (WebP, AVIF)
   - Responsive images with srcset
   - Lazy loading below fold
   - Maximum width: 2000px


2. **CSS Optimization**
   - Remove unused CSS
   - Minify and compress
   - Critical CSS inline
   - Defer non-critical


3. **JavaScript Optimization**
   - Minimize dependencies
   - Code splitting
   - Defer non-critical scripts
   - Use vanilla JS where possible


---


## Conversion Optimization Research


### CTA Best Practices


**Button Copy Research**:
| Generic | Better | Best |
|---------|--------|------|
| Submit | Contact | Schedule Strategy Call |
| Learn More | See Results | View Case Studies |
| Get Started | Talk to Us | Book Free Consultation |


**Button Design**:
- Primary CTA: High contrast, bold, prominent
- Secondary CTA: Outlined or subtle fill
- Minimum size: 44x44px (touch-friendly)
- Spacing: 16px minimum between buttons


**Placement Strategy**:
- Hero section (above fold)
- After each major section
- Sticky button (bottom or top of viewport)
- Footer as final opportunity


---


## How AI Should Use This Document


1. **Reference when making design decisions**
   - Check which principle applies to current task
   - Implement recommended patterns


2. **Understand the "why" behind choices**
   - Don't just copy patterns blindly
   - Adapt principles to specific context


3. **Balance competing principles**
   - Trust-building vs. personality
   - Simplicity vs. comprehensive information
   - Performance vs. visual richness


4. **Make informed trade-offs**
   - When performance impacts design, cite research
   - When accessibility conflicts with aesthetics, prioritize accessibility
   - When client preference conflicts with best practice, explain rationale


5. **Stay current with updates**
   - This document may be updated as client preferences are established
   - New research or A/B test results may refine recommendations


---


## Next Steps


This document will be expanded with:
1. Specific design direction once client preferences are established
2. Competitor analysis of similar AI consultant portfolios
3. A/B testing insights if multiple design directions are tested
4. Client feedback and preference documentation


---


## Part 2: Notan-Swiss Design System Integration


### Complete Color System


**Primary Palette** (Notan Foundation):
```css
:root {
  /* Pure contrast colors */
  --notan-black: #000000;
  --notan-white: #FFFFFF;
  --notan-accent-blue: #0066FF; /* Trust, technology, innovation */
}
```


**Supporting Palette** (Swiss Functional):
```css
:root {
  /* Only for UI necessity (borders, disabled states) */
  --swiss-gray-900: #1A1A1A;
  --swiss-gray-700: #333333;
  --swiss-gray-500: #666666;
  --swiss-gray-300: #CCCCCC;
  --swiss-gray-100: #F5F5F5;
}
```


**Usage Rules**:
1. **Sections**: Alternate pure black or pure white backgrounds only
2. **Text**: Always high contrast (black on white, white on black)
3. **Accent**: Blue for CTAs, emphasis, links only
4. **Grays**: UI elements that need subtle differentiation
5. **Never**: Mix black/white/blue in same component (pick one per element)


**Section Alternation Pattern**:
```
Hero: Black background, white text
About: White background, black text
Services: Black background, white text
Portfolio: White background, black text
Contact: Blue background, white text
```


---


### Complete Typography System


**Font Stack**:
```css
:root {
  /* Primary: Swiss classic */
  --font-primary: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  
  /* Alternative if Google Fonts needed */
  --font-alternative: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
}
```


**Type Scale** (Perfect Fourth Ratio: 1.333):
```css
:root {
  --text-xs: 0.75rem;      /* 12px - Captions, labels */
  --text-sm: 0.875rem;     /* 14px - Small text */
  --text-base: 1rem;       /* 16px - Body baseline */
  --text-lg: 1.125rem;     /* 18px - Body text (primary) */
  --text-xl: 1.5rem;       /* 24px - Large text */
  --text-2xl: 2rem;        /* 32px - H3 */
  --text-3xl: 2.666rem;    /* ~43px - H2 */
  --text-4xl: 3.555rem;    /* ~57px - Large H2 */
  --text-5xl: 4.74rem;     /* ~76px - H1 */
  --text-6xl: 6.32rem;     /* ~101px - Hero H1 (Notan architectural scale) */
}
```


**Hierarchy Application**:
```css
/* Hero headline - Notan architectural scale */
.hero-headline {
  font-size: var(--text-6xl); /* 101px */
  font-weight: 900;
  line-height: 0.95;
  letter-spacing: -0.03em;
  text-transform: uppercase; /* Geometric quality */
}

/* Section headline - Swiss precision */
.section-headline {
  font-size: var(--text-4xl); /* 57px */
  font-weight: 700;
  line-height: 1.1;
  letter-spacing: -0.02em;
}

/* Subsection headline */
.subsection-headline {
  font-size: var(--text-2xl); /* 32px */
  font-weight: 600;
  line-height: 1.2;
  letter-spacing: -0.01em;
}

/* Body text - Swiss readability */
.body-text {
  font-size: var(--text-lg); /* 18px */
  font-weight: 400;
  line-height: 1.6; /* Optimal for reading */
  max-width: 65ch; /* Swiss principle: 65 characters per line */
  text-align: left; /* Flush left, ragged right */
}

/* Caption text */
.caption-text {
  font-size: var(--text-sm); /* 14px */
  font-weight: 400;
  line-height: 1.4;
  color: var(--swiss-gray-500); /* Subdued */
}
```


---


### Complete Spacing System


**8px Base Unit** (Swiss Precision):
```css
:root {
  --space-unit: 0.5rem;    /* 8px base */
  --space-xs: 0.5rem;      /* 8px */
  --space-sm: 1rem;        /* 16px */
  --space-md: 2rem;        /* 32px */
  --space-lg: 3rem;        /* 48px */
  --space-xl: 4rem;        /* 64px */
  --space-2xl: 6rem;       /* 96px */
  --space-3xl: 8rem;       /* 128px */
}
```


**Application Rules**:
- All margins and padding must be multiples of 8px
- Section padding: `--space-2xl` or `--space-3xl`
- Component padding: `--space-md` or `--space-lg`
- Element gaps: `--space-sm` or `--space-md`
- Typography margins: Aligned to 8px grid


---


### Layout Patterns for AI Consultant Portfolio


#### Pattern 1: Hero Section (Notan Drama)
```html
<section class="hero section-black">
  <div class="swiss-grid">
    <div class="hero-content" style="grid-column: 1 / 9;">
      <h1 class="hero-headline">
        Brandon<br>Orozco
      </h1>
      <p class="hero-subtitle">AI Implementation Consultant</p>
      <p class="hero-description">
        Transforming AI potential into measurable business outcomes
      </p>
      <a href="#contact" class="btn-primary">Schedule Strategy Session</a>
    </div>
    
    <div class="hero-accent" style="grid-column: 10 / 13;">
      <!-- Bold blue accent shape -->
    </div>
  </div>
</section>
```


#### Pattern 2: Services Grid (Alternating Notan Cards)
```html
<section class="services section-black">
  <div class="container">
    <h2 class="section-headline">Services</h2>
    
    <div class="services-grid">
      <!-- Alternate black/white cards -->
      <article class="service-card card-white">
        <h3>Strategy</h3>
        <p>AI roadmapping and opportunity assessment</p>
      </article>
      
      <article class="service-card card-black">
        <h3>Implementation</h3>
        <p>Hands-on AI solution deployment</p>
      </article>
      
      <article class="service-card card-white">
        <h3>Training</h3>
        <p>Team enablement and capability building</p>
      </article>
    </div>
  </div>
</section>
```


#### Pattern 3: Case Study (Swiss Information Hierarchy)
```html
<section class="case-study section-white">
  <div class="swiss-grid">
    <div class="case-study-content" style="grid-column: 1 / 8;">
      <h2 class="case-study-title">Manufacturing Automation</h2>
      
      <div class="case-study-section">
        <h3>Challenge</h3>
        <p>Manual quality control causing delays and inconsistency...</p>
      </div>
      
      <div class="case-study-section">
        <h3>Solution</h3>
        <p>Implemented computer vision system for automated inspection...</p>
      </div>
    </div>
    
    <div class="case-study-metrics" style="grid-column: 9 / 13;">
      <div class="metric-card notan-accent">
        <span class="metric-value">40%</span>
        <span class="metric-label">Cost Reduction</span>
      </div>
      
      <div class="metric-card notan-black">
        <span class="metric-value">6 mo</span>
        <span class="metric-label">Implementation</span>
      </div>
    </div>
  </div>
</section>
```


---


### Component Library


#### Notan-Swiss Button
```css
.btn-primary {
  /* Swiss sizing */
  padding: 1rem 2rem;
  min-height: 44px;
  min-width: 120px;
  
  /* Notan contrast */
  background: var(--notan-accent-blue);
  color: var(--notan-white);
  border: none;
  border-radius: 0; /* Sharp corners */
  
  /* Swiss typography */
  font-family: var(--font-primary);
  font-size: var(--text-lg);
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  
  /* Minimal interaction */
  transition: background 0.2s ease;
  cursor: pointer;
}

.btn-primary:hover {
  background: var(--notan-black);
}
```


#### Alternating Cards
```css
/* Black card with white text */
.card-black {
  background: var(--notan-black);
  color: var(--notan-white);
  border: 2px solid var(--notan-black);
  padding: var(--space-xl);
}

/* White card with black text */
.card-white {
  background: var(--notan-white);
  color: var(--notan-black);
  border: 2px solid var(--notan-black);
  padding: var(--space-xl);
}

/* Blue accent card */
.card-accent {
  background: var(--notan-accent-blue);
  color: var(--notan-white);
  border: 2px solid var(--notan-accent-blue);
  padding: var(--space-xl);
}
```


---


## Part 3: Implementation Guidelines for AI Assistants


### How to Apply This Design System


**When Building Components**:
1. Start with Swiss grid structure
2. Apply Notan color contrast
3. Use Swiss typography hierarchy
4. Ensure mathematical spacing (8px multiples)
5. Eliminate all decoration


**Decision-Making Rules**:
- **Color choice**: Which creates better contrast for this content?
- **Typography size**: What's the information hierarchy level?
- **Spacing**: What multiple of 8px makes sense here?
- **Layout**: How can the grid create asymmetrical balance?


**Quality Checklist**:
- [ ] Uses only black, white, or blue
- [ ] All spacing is multiple of 8px
- [ ] Typography follows defined scale
- [ ] Aligns to 12-column grid
- [ ] No gradients, shadows, or rounded corners
- [ ] High contrast maintained (WCAG AAA)
- [ ] Asymmetrical but balanced


---


## Part 4: Accessibility & Performance


### Accessibility Advantages


**High Contrast (Notan)**:
- Black on white: 21:1 ratio (exceeds WCAG AAA)
- White on black: 21:1 ratio (exceeds WCAG AAA)
- Blue (#0066FF) on white: 6.2:1 (exceeds WCAG AA)


**Clear Hierarchy (Swiss)**:
- Typography size differences are significant
- Consistent spacing aids screen reader comprehension
- Semantic HTML structure aligns with visual hierarchy


**Performance Benefits**:
- Minimal CSS (no complex styles)
- System fonts load instantly
- Pure colors render faster than gradients
- No image-heavy decoration


---


## Conclusion


The **Notan-Swiss design system** for Brandon Orozco's AI Consultant portfolio creates a distinctive visual identity that:


✓ **Stands out** - High contrast, bold compositions unlike typical consultant sites  
✓ **Communicates authority** - Swiss precision conveys technical mastery  
✓ **Maintains professionalism** - Clean, timeless aesthetic builds trust  
✓ **Performs excellently** - Minimal design = fast loading  
✓ **Accessible to all** - Exceeds WCAG standards through high contrast  


This design system should be applied consistently throughout all sections, maintaining the alternating black/white pattern and adhering to the mathematical precision of the Swiss grid while leveraging Notan's dramatic visual impact.


---


**Document Status**: Complete - Design System Defined  
**Design Direction**: Notan + Swiss Style Integration  
**Last Updated**: December 15, 2025  
**Ready for**: Sprint 1 implementation with design system applied
