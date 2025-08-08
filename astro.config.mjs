import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
  site: 'https://mmaba.net',
  integrations: [
    sitemap({
      customPages: [
        'https://mmaba.net/services/early-intervention-aba',
        'https://mmaba.net/services/school-age-aba',
        'https://mmaba.net/services/autism-assessments',
        'https://mmaba.net/locations/manchester-nh',
        'https://mmaba.net/locations/nashua-nh',
        'https://mmaba.net/locations/concord-nh'
      ],
      serialize(item) {
        // Prioritize ABA service pages and NH locations
        if (item.url === 'https://mmaba.net/') {
          item.changefreq = 'weekly';
          item.priority = 1.0;
        }
        if (item.url.includes('/services/') || item.url.includes('/locations/')) {
          item.changefreq = 'monthly';
          item.priority = 0.9;
        }
        if (item.url.includes('/blog/')) {
          item.changefreq = 'weekly';
          item.priority = 0.7;
        }
        return item;
      }
    }),
    tailwind()
  ],
  output: 'static',
  build: {
    inlineStylesheets: 'always'
  }
});