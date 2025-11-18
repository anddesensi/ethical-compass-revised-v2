# Contributing to Pharmaceutical Case Studies

Thank you for your interest in contributing! This document provides guidelines for contributing to this educational platform.

## 🎯 Ways to Contribute

- **Content**: Improve case study accuracy, add citations, update information
- **Design**: Enhance UI/UX, improve accessibility, add animations
- **Features**: Add new case studies, improve ethical assessment
- **Documentation**: Improve README, add tutorials, fix typos
- **Bug Fixes**: Report and fix issues
- **Translations**: Translate content to other languages

## 📋 Before You Start

1. **Check existing issues** to avoid duplicate work
2. **Open an issue** to discuss major changes before implementing
3. **Fork the repository** to your GitHub account
4. **Create a branch** for your feature/fix

## 🔧 Development Setup

```bash
# Fork and clone the repository
git clone https://github.com/yourusername/pharma-ethics-cases.git
cd pharma-ethics-cases

# Create a new branch
git checkout -b feature/your-feature-name

# Make your changes
# Test locally
python -m http.server 8000

# Commit your changes
git add .
git commit -m "Description of changes"

# Push to your fork
git push origin feature/your-feature-name
```

## 📝 Commit Message Guidelines

Use clear, descriptive commit messages:

```
feat: Add new case study on Purdue Pharma
fix: Correct timeline dates in Theranos case
docs: Update deployment instructions
style: Improve mobile responsiveness
refactor: Simplify ethical compass logic
```

Prefixes:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting, CSS changes
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance tasks

## 🎨 Code Style Guidelines

### HTML
- Use semantic HTML5 elements
- Maintain consistent indentation (4 spaces)
- Add comments for complex sections
- Keep accessibility in mind (ARIA labels, alt text)

```html
<!-- Good -->
<section class="content-section">
    <h2 class="section-title">Timeline</h2>
    <div class="timeline">
        <!-- Timeline content -->
    </div>
</section>
```

### CSS
- Use consistent naming conventions
- Group related styles together
- Add comments for complex animations
- Maintain mobile-first approach

```css
/* Good */
.section-title {
    font-size: clamp(1.8rem, 4vw, 2.5rem);
    font-weight: 900;
    margin-bottom: 25px;
}

@media (max-width: 768px) {
    .section-title {
        font-size: 1.5rem;
    }
}
```

### JavaScript
- Use modern ES6+ syntax
- Add comments for complex logic
- Keep functions small and focused
- Use meaningful variable names

```javascript
// Good
function calculateEthicalScore(answers, questions) {
    let sumX = 0;
    let sumY = 0;
    
    questions.forEach(q => {
        if (answers[q.id] !== undefined) {
            sumX += answers[q.id] * q.x;
            sumY += answers[q.id] * q.y;
        }
    });
    
    return { x: sumX, y: sumY };
}
```

## 📚 Content Guidelines

### Case Studies
- **Accuracy**: Cite sources for all facts and figures
- **Objectivity**: Present information fairly and without bias
- **Completeness**: Include timeline, impact, legal outcomes
- **Clarity**: Write in clear, accessible language

### Citations
Add sources at the bottom of case studies:
```html
<div class="sources">
    <h3>Sources</h3>
    <ul>
        <li>Source 1: [Title], [Publication], [Date]</li>
        <li>Source 2: [Title], [Publication], [Date]</li>
    </ul>
</div>
```

## 🧪 Testing Checklist

Before submitting a pull request:

- [ ] Test in Chrome, Firefox, Safari
- [ ] Test on mobile devices (or use DevTools)
- [ ] Verify all links work
- [ ] Check for console errors
- [ ] Validate HTML (https://validator.w3.org/)
- [ ] Test animations are smooth
- [ ] Verify responsive breakpoints
- [ ] Check accessibility (screen reader, keyboard navigation)
- [ ] Proofread content for typos

## 🐛 Reporting Bugs

When reporting bugs, include:

1. **Description**: Clear description of the issue
2. **Steps to Reproduce**: How to trigger the bug
3. **Expected Behavior**: What should happen
4. **Actual Behavior**: What actually happens
5. **Screenshots**: If applicable
6. **Environment**: Browser, OS, device
7. **Console Errors**: Any JavaScript errors

Example:
```markdown
**Bug**: Timeline animation doesn't play on mobile

**Steps to Reproduce**:
1. Open site on iPhone Safari
2. Navigate to Theranos case study
3. Scroll to timeline section

**Expected**: Timeline items should animate in sequence
**Actual**: All items appear at once without animation

**Environment**: iOS 16, Safari
**Console**: No errors
```

## 💡 Feature Requests

When suggesting features:

1. **Use Case**: Explain why this feature is needed
2. **Description**: Detailed explanation of the feature
3. **Mockups**: Visual examples if applicable
4. **Implementation**: Suggest how it could be built

## 🔍 Pull Request Process

1. **Update Documentation**: If you change functionality
2. **Test Thoroughly**: Follow testing checklist above
3. **Write Clear Description**: Explain what and why
4. **Link Related Issues**: Reference issue numbers
5. **Request Review**: Tag maintainers if needed

### PR Template
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Style/UI improvement

## Testing
- [ ] Tested locally
- [ ] Tested on mobile
- [ ] No console errors
- [ ] All links work

## Screenshots
(if applicable)

## Related Issues
Closes #123
```

## 🎓 Adding New Case Studies

To add a new pharmaceutical case study:

1. **Create new HTML file**: `case-name-study.html`
2. **Use existing template**: Copy structure from `theranos-case-study.html`
3. **Include all sections**:
   - Header with title, subtitle, meta, tags
   - Executive Summary with "The Switch" highlight
   - Main content sections (3-6 sections)
   - Timeline with key events
   - Impact analysis
   - Ethical Compass with case-specific analysis
   - Assessment link at bottom
4. **Add to main page**: Create new card in `index.html`
5. **Update README**: Add case to list
6. **Test thoroughly**: All links, animations, responsiveness

## 🌍 Translations

To translate the site:

1. Create language-specific files: `index-es.html`, `index-fr.html`, etc.
2. Translate all text content
3. Keep HTML structure identical
4. Add language selector to navigation
5. Update README with available languages

## 📞 Questions?

- Open an issue for questions
- Tag with `question` label
- Be specific about what you need help with

## 🙏 Recognition

Contributors will be:
- Listed in README
- Credited in commit history
- Mentioned in release notes (for significant contributions)

## 📜 Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Focus on the content, not the person
- Help create a welcoming environment

## ⚖️ License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to pharmaceutical ethics education! 🎓
