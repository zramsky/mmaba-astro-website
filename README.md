# Moving Mountains ABA - SEO-Optimized Website

A comprehensive, SEO-optimized website built with Astro for Moving Mountains ABA, a professional ABA therapy provider serving New Hampshire families.

## 🚀 Features

### SEO Optimization
- **Comprehensive Schema Markup**: Healthcare provider, organization, and service schemas
- **Local SEO**: Location-specific pages for New Hampshire cities
- **Meta Tags**: Optimized titles, descriptions, and Open Graph tags
- **Sitemap Generation**: Automatic XML sitemap with priority settings
- **Structured Data**: Rich snippets for services and locations
- **Fast Loading**: Optimized images and performance-focused architecture

### Content Strategy
- **Service Pages**: Detailed pages for each ABA therapy service
- **Location Pages**: Comprehensive coverage of New Hampshire markets
- **Blog/Resources**: Educational content for parents and families
- **Mobile-First Design**: Responsive design optimized for all devices

### Technical Features
- **Astro Framework**: Static site generation for optimal performance
- **Tailwind CSS**: Modern, responsive styling framework
- **Accessibility**: WCAG compliant design and markup
- **SEO-First Architecture**: Built with search engines in mind

## 📁 Project Structure

```
/
├── public/
│   ├── images/           # Optimized images and assets
│   ├── fonts/           # Web fonts
│   └── robots.txt       # Search engine directives
├── src/
│   ├── components/
│   │   └── schemas/     # Structured data components
│   ├── layouts/
│   │   └── Layout.astro # Base layout with SEO meta tags
│   ├── pages/
│   │   ├── services/    # ABA therapy service pages
│   │   ├── locations/   # New Hampshire location pages
│   │   ├── blog/        # Educational resources
│   │   └── index.astro  # Homepage
│   └── styles/          # Custom CSS
├── astro.config.mjs     # Astro configuration
└── tailwind.config.mjs  # Tailwind CSS configuration
```

## 🛠️ Built With

- **[Astro](https://astro.build/)** - Static site generator
- **[Tailwind CSS](https://tailwindcss.com/)** - Utility-first CSS framework
- **[@astrojs/sitemap](https://docs.astro.build/en/guides/integrations-guide/sitemap/)** - Automatic sitemap generation
- **[@tailwindcss/typography](https://tailwindcss.com/docs/typography-plugin)** - Beautiful typographic defaults

## 🚀 Quick Start

### Prerequisites
- Node.js (18.20.8 or higher recommended)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd mmaba-astro-website
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The site will be available at `http://localhost:4321`

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally
- `npm run lighthouse` - Run Lighthouse performance audit
- `npm run check-vitals` - Build and run performance checks

## 🎯 SEO Features

### Schema Markup
- Organization schema with complete business information
- Medical business and healthcare provider schemas
- Service-specific therapy schemas
- Local business schemas for each location
- Article schemas for blog posts

### Page Structure
Each page includes:
- Unique, keyword-optimized title tags (under 60 characters)
- Compelling meta descriptions (under 160 characters)
- Proper heading hierarchy (H1-H6)
- Internal linking strategy
- Breadcrumb navigation
- Local SEO optimization for New Hampshire

### Performance Optimizations
- Static site generation with Astro
- Optimized images (WebP format recommended)
- Critical CSS inlining
- Minimal JavaScript bundles
- Fast loading times (<3 seconds)

## 📍 New Hampshire Coverage

The site includes location-specific pages for:
- **Manchester, NH** - Largest city coverage
- **Nashua, NH** - Second-largest market
- **Concord, NH** - State capital
- **Derry, NH** - Growing community
- Additional towns and regions as needed

Each location page includes:
- Local demographics and information
- School district collaboration details
- Community resources and connections
- Insurance and coverage information
- Local contact and service details

## 🏥 Services Covered

### Core ABA Services
- **Early Intervention ABA** (Ages 0-3)
- **School-Age ABA Programs**
- **Autism Spectrum Disorder Assessments**
- **Parent Training & Support**
- **Behavior Management**
- **Communication Development**

### Content Strategy
Each service page includes:
- Detailed service descriptions (800+ words)
- Treatment process and methodology
- Insurance and coverage information
- Frequently asked questions
- Call-to-action elements
- Related services linking

## 📝 Content Management

### Blog/Resource Strategy
Educational content targeting:
- Early signs of autism in toddlers
- Understanding ABA therapy benefits
- Insurance coverage guides
- School collaboration information
- Parent support resources

### SEO Content Guidelines
- **Primary Keywords**: Focus on New Hampshire + ABA therapy combinations
- **Secondary Keywords**: Autism treatment, behavioral therapy, BCBA services
- **Local Keywords**: City names + service combinations
- **Long-tail Keywords**: Specific questions parents ask

## 🔧 Customization

### Adding New Pages
1. Create new `.astro` file in appropriate directory
2. Use the Layout component with proper SEO props
3. Include relevant schema markup
4. Update navigation if needed
5. Add internal links from related pages

### Updating Business Information
Key files to update:
- `src/components/schemas/OrganizationSchema.astro` - Business details
- `src/layouts/Layout.astro` - Contact information in footer
- Page-specific contact details and phone numbers

### Adding New Locations
1. Create new location page in `src/pages/locations/`
2. Follow the Manchester, NH template structure
3. Update navigation and internal linking
4. Add to sitemap priorities in `astro.config.mjs`

## 📈 SEO Checklist

### Technical SEO
- [x] XML sitemap generated automatically
- [x] Robots.txt configured properly
- [x] Schema markup implemented
- [x] Page loading speed optimized
- [x] Mobile-responsive design
- [x] Clean URL structure
- [x] Internal linking strategy

### Content SEO
- [x] Unique title tags for all pages
- [x] Compelling meta descriptions
- [x] Proper heading structure
- [x] Keyword-optimized content
- [x] Local SEO optimization
- [x] FAQ sections for long-tail keywords

### Local SEO
- [x] Google My Business optimization ready
- [x] NAP (Name, Address, Phone) consistency
- [x] Local schema markup
- [x] Location-specific pages
- [x] Local keyword targeting

## 🚀 Deployment

### Build for Production
```bash
npm run build
```

The built site will be in the `dist/` directory, ready for deployment to any static hosting service.

### Recommended Hosting
- **Netlify** - Automatic builds and CDN
- **Vercel** - Optimized for static sites
- **AWS S3 + CloudFront** - Enterprise hosting
- **GitHub Pages** - Free hosting option

### Pre-deployment Checklist
1. Update all placeholder content with real business information
2. Add actual images and optimize them (WebP format)
3. Configure analytics (Google Analytics 4)
4. Set up Google Search Console
5. Verify all contact information is correct
6. Test contact forms and functionality
7. Run lighthouse audit for performance verification

## 📊 Analytics & Tracking

### Recommended Setup
- **Google Analytics 4** - Website traffic and user behavior
- **Google Search Console** - Search performance monitoring
- **Google My Business** - Local search presence
- **Call tracking** - Phone call attribution

### Key Metrics to Monitor
- Organic search traffic growth
- Local search rankings (New Hampshire markets)
- Page load speeds and Core Web Vitals
- Contact form submissions and phone calls
- Location page performance

## 🤝 Support & Maintenance

### Regular Updates
- Monitor and update business information
- Add new blog content regularly (monthly recommended)
- Update service offerings and pricing
- Refresh location-specific information
- Monitor and fix any broken links

### SEO Maintenance
- Monthly keyword ranking reviews
- Quarterly content audits
- Annual technical SEO reviews
- Ongoing competitor analysis
- Regular schema markup validation

## 📞 Business Information

**Important**: Before going live, update all placeholder information with actual business details:

- Phone numbers: Currently set to (603) 555-1234
- Email addresses: Currently set to info@mmaba.net  
- Physical addresses: Update with real locations
- Staff credentials and bios: Add actual team information
- Service pricing and insurance details: Verify current information
- Hours of operation: Add actual business hours

## 📄 License

This project is proprietary software created for Moving Mountains ABA. All rights reserved.

---

Built with ❤️ for New Hampshire families seeking quality ABA therapy services.