#!/bin/bash

echo "🚀 MMABA Website Testing Suite"
echo "=============================="
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test results array
TESTS_PASSED=0
TESTS_FAILED=0

test_result() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✅ $2${NC}"
        ((TESTS_PASSED++))
    else
        echo -e "${RED}❌ $2${NC}"
        ((TESTS_FAILED++))
    fi
}

echo "1. Testing Build Process..."
echo "----------------------------"

# Test clean build
npm run build > /dev/null 2>&1
test_result $? "Production build completes without errors"

# Check if all expected files exist
if [ -f "dist/index.html" ]; then
    test_result 0 "Homepage HTML generated"
else
    test_result 1 "Homepage HTML generated"
fi

if [ -f "dist/services/early-intervention-aba/index.html" ]; then
    test_result 0 "Service page HTML generated"
else
    test_result 1 "Service page HTML generated"
fi

if [ -f "dist/locations/manchester-nh/index.html" ]; then
    test_result 0 "Location page HTML generated"
else
    test_result 1 "Location page HTML generated"
fi

if [ -f "dist/blog/early-signs-autism-toddlers-nh/index.html" ]; then
    test_result 0 "Blog page HTML generated"
else
    test_result 1 "Blog page HTML generated"
fi

if [ -f "dist/sitemap-0.xml" ]; then
    test_result 0 "XML sitemap generated"
else
    test_result 1 "XML sitemap generated"
fi

if [ -f "dist/robots.txt" ]; then
    test_result 0 "Robots.txt file exists"
else
    test_result 1 "Robots.txt file exists"
fi

echo ""
echo "2. Testing HTML Structure..."
echo "----------------------------"

# Check for essential HTML elements
if grep -q '<title>' dist/index.html; then
    test_result 0 "Title tag present in homepage"
else
    test_result 1 "Title tag present in homepage"
fi

if grep -q 'meta name="description"' dist/index.html; then
    test_result 0 "Meta description present in homepage"
else
    test_result 1 "Meta description present in homepage"
fi

if grep -q 'application/ld+json' dist/index.html; then
    test_result 0 "JSON-LD schema markup present"
else
    test_result 1 "JSON-LD schema markup present"
fi

if grep -q 'role="banner"' dist/index.html; then
    test_result 0 "Accessibility roles implemented"
else
    test_result 1 "Accessibility roles implemented"
fi

if grep -q 'aria-label' dist/index.html; then
    test_result 0 "ARIA labels implemented"
else
    test_result 1 "ARIA labels implemented"
fi

echo ""
echo "3. Testing SEO Elements..."
echo "----------------------------"

# Check Open Graph tags
if grep -q 'property="og:title"' dist/index.html; then
    test_result 0 "Open Graph title tag present"
else
    test_result 1 "Open Graph title tag present"
fi

if grep -q 'property="og:description"' dist/index.html; then
    test_result 0 "Open Graph description tag present"
else
    test_result 1 "Open Graph description tag present"
fi

if grep -q 'name="twitter:card"' dist/index.html; then
    test_result 0 "Twitter Card tags present"
else
    test_result 1 "Twitter Card tags present"
fi

if grep -q 'rel="canonical"' dist/index.html; then
    test_result 0 "Canonical URL tag present"
else
    test_result 1 "Canonical URL tag present"
fi

echo ""
echo "4. Testing Content Quality..."
echo "----------------------------"

# Check for New Hampshire targeting
if grep -qi "new hampshire" dist/index.html; then
    test_result 0 "New Hampshire targeting present"
else
    test_result 1 "New Hampshire targeting present"
fi

if grep -qi "ABA therapy" dist/index.html; then
    test_result 0 "Primary keyword 'ABA therapy' present"
else
    test_result 1 "Primary keyword 'ABA therapy' present"
fi

if grep -qi "autism" dist/index.html; then
    test_result 0 "Target keyword 'autism' present"
else
    test_result 1 "Target keyword 'autism' present"
fi

if grep -qi "BCBA" dist/index.html; then
    test_result 0 "Credential 'BCBA' mentioned"
else
    test_result 1 "Credential 'BCBA' mentioned"
fi

if grep -qi "manchester\|nashua\|concord" dist/index.html; then
    test_result 0 "NH cities mentioned for local SEO"
else
    test_result 1 "NH cities mentioned for local SEO"
fi

echo ""
echo "5. Testing Service Page Content..."
echo "----------------------------"

SERVICE_FILE="dist/services/early-intervention-aba/index.html"

if [ -f "$SERVICE_FILE" ]; then
    # Count words in service page (rough estimate)
    WORD_COUNT=$(grep -o '[[:alpha:]]\+' "$SERVICE_FILE" | wc -l)
    if [ "$WORD_COUNT" -gt 1000 ]; then
        test_result 0 "Service page has substantial content (>1000 words)"
    else
        test_result 1 "Service page has substantial content (>1000 words)"
    fi
    
    if grep -qi "early intervention" "$SERVICE_FILE"; then
        test_result 0 "Service-specific keywords present"
    else
        test_result 1 "Service-specific keywords present"
    fi
    
    if grep -q "application/ld+json" "$SERVICE_FILE"; then
        test_result 0 "Service page has schema markup"
    else
        test_result 1 "Service page has schema markup"
    fi
else
    test_result 1 "Service page exists for testing"
fi

echo ""
echo "6. Testing Location Page Content..."
echo "----------------------------"

LOCATION_FILE="dist/locations/manchester-nh/index.html"

if [ -f "$LOCATION_FILE" ]; then
    if grep -qi "manchester" "$LOCATION_FILE"; then
        test_result 0 "Location-specific content present"
    else
        test_result 1 "Location-specific content present"
    fi
    
    if grep -qi "population\|school district" "$LOCATION_FILE"; then
        test_result 0 "Local demographic information included"
    else
        test_result 1 "Local demographic information included"
    fi
    
    if grep -q '"@type": "LocalBusiness"' "$LOCATION_FILE"; then
        test_result 0 "Local business schema markup present"
    else
        test_result 1 "Local business schema markup present"
    fi
else
    test_result 1 "Location page exists for testing"
fi

echo ""
echo "7. Testing Blog Content..."
echo "----------------------------"

BLOG_FILE="dist/blog/early-signs-autism-toddlers-nh/index.html"

if [ -f "$BLOG_FILE" ]; then
    if grep -qi "early signs" "$BLOG_FILE"; then
        test_result 0 "Blog targets relevant keywords"
    else
        test_result 1 "Blog targets relevant keywords"
    fi
    
    if grep -q '"@type": "Article"' "$BLOG_FILE"; then
        test_result 0 "Article schema markup present"
    else
        test_result 1 "Article schema markup present"
    fi
    
    # Check for substantial content
    BLOG_WORD_COUNT=$(grep -o '[[:alpha:]]\+' "$BLOG_FILE" | wc -l)
    if [ "$BLOG_WORD_COUNT" -gt 1500 ]; then
        test_result 0 "Blog post has substantial content (>1500 words)"
    else
        test_result 1 "Blog post has substantial content (>1500 words)"
    fi
else
    test_result 1 "Blog page exists for testing"
fi

echo ""
echo "8. Testing Sitemap..."
echo "----------------------------"

if [ -f "dist/sitemap-0.xml" ]; then
    if grep -q "https://mmaba.net/" dist/sitemap-0.xml; then
        test_result 0 "Sitemap contains homepage URL"
    else
        test_result 1 "Sitemap contains homepage URL"
    fi
    
    if grep -q "priority>1.0<" dist/sitemap-0.xml; then
        test_result 0 "Homepage has highest priority in sitemap"
    else
        test_result 1 "Homepage has highest priority in sitemap"
    fi
    
    if grep -q "services/" dist/sitemap-0.xml; then
        test_result 0 "Service pages included in sitemap"
    else
        test_result 1 "Service pages included in sitemap"
    fi
    
    if grep -q "locations/" dist/sitemap-0.xml; then
        test_result 0 "Location pages included in sitemap"
    else
        test_result 1 "Location pages included in sitemap"
    fi
else
    test_result 1 "Sitemap file exists"
fi

echo ""
echo "📊 TEST RESULTS"
echo "==============="
echo -e "✅ Tests Passed: ${GREEN}$TESTS_PASSED${NC}"
echo -e "❌ Tests Failed: ${RED}$TESTS_FAILED${NC}"
echo -e "📈 Success Rate: $(( TESTS_PASSED * 100 / (TESTS_PASSED + TESTS_FAILED) ))%"

if [ $TESTS_FAILED -eq 0 ]; then
    echo ""
    echo -e "${GREEN}🎉 All tests passed! The site is ready for deployment.${NC}"
    exit 0
else
    echo ""
    echo -e "${YELLOW}⚠️  Some tests failed. Review the issues above before deploying.${NC}"
    exit 1
fi