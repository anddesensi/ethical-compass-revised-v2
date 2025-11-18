# Pharmaceutical Case Studies - Interactive Ethics Platform

A comprehensive educational platform examining three major pharmaceutical ethics cases: Theranos fraud, Shkreli price gouging, and Pfizer's unauthorized Nigeria trials. Features detailed forensic analysis and an interactive ethical assessment tool.

## 🎯 Features

- **Three Detailed Case Studies**
  - Theranos: $9B fraud and blood-testing deception
  - Martin Shkreli: Ponzi scheme and 5,500% drug price increase
  - Pfizer Trovan: Unauthorized testing on Nigerian children

- **Interactive Ethical Compass**
  - 24-question assessment
  - Real-time Ethics Matrix visualization
  - Personalized ethical profile analysis
  - Export results as JSON/CSV

- **Modern UI/UX**
  - Clean black and white design
  - Smooth animations and transitions
  - Fully responsive (mobile, tablet, desktop)
  - Layered card effects with parallax
  - Accessible navigation

## 📁 Project Structure

```
theranos-site/
├── index.html                    # Main landing page with 3 case cards
├── theranos-case-study.html      # Detailed Theranos analysis
├── shkreli-case-study.html       # Detailed Shkreli analysis
├── pfizer-case-study.html        # Detailed Pfizer analysis
├── Ethical Compass.html          # Interactive assessment tool
├── README.md                     # This file
├── LICENSE                       # MIT License
└── .gitignore                    # Git ignore file
```

## 🚀 Quick Start

### Option 1: View Locally

1. Clone the repository:
```bash
git clone https://github.com/yourusername/pharma-ethics-cases.git
cd pharma-ethics-cases
```

2. Open `index.html` in your browser:
```bash
open index.html
# or
python -m http.server 8000
# then visit http://localhost:8000
```

### Option 2: Deploy to GitHub Pages

1. Fork this repository
2. Go to Settings → Pages
3. Select "Deploy from a branch"
4. Choose `main` branch and `/ (root)` folder
5. Click Save
6. Your site will be live at `https://yourusername.github.io/pharma-ethics-cases/`

### Option 3: Deploy to Netlify

1. Fork this repository
2. Go to [Netlify](https://netlify.com)
3. Click "Add new site" → "Import an existing project"
4. Connect to GitHub and select your repository
5. Build settings:
   - Build command: (leave empty)
   - Publish directory: `/`
6. Click "Deploy site"

### Option 4: Deploy to Vercel

1. Fork this repository
2. Go to [Vercel](https://vercel.com)
3. Click "New Project"
4. Import your GitHub repository
5. Click "Deploy"

## 🎨 Design Features

- **Layered Card Design**: Cards with stacked shadow layers that respond to mouse movement
- **Parallax Effects**: Subtle mouse tracking creates 3D depth
- **Smooth Animations**: Fade-in, slide-up, and scale effects throughout
- **Interactive Timeline**: Animated event markers with sequential reveals
- **Ethical Compass**: Four-quadrant framework selector with detailed analysis
- **Responsive Grid**: Adapts seamlessly from desktop (3 columns) to mobile (1 column)

## 📊 Ethical Assessment

The Ethics Matrix assessment tool evaluates responses across two dimensions:

**X-Axis: Universalism ↔ Utilitarianism**
- Universalism: Rule-based, duty-focused ethics
- Utilitarianism: Outcome-based, consequence-focused ethics

**Y-Axis: Harmful ↔ Non-harmful**
- Harmful: Actions that cause damage or violate norms
- Non-harmful: Actions that minimize harm and protect welfare

Results are visualized in real-time on an interactive 2D matrix with personalized analysis.

## 🛠️ Technologies Used

- **HTML5**: Semantic markup
- **CSS3**: Custom animations, flexbox, grid
- **JavaScript**: Vanilla JS for interactivity
- **Tailwind CSS**: Used only in Ethical Compass (via CDN)
- **No build process required**: Pure static files

## 📱 Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## 🎓 Educational Use

This platform is designed for:
- Ethics courses in business, medicine, and technology
- Case study analysis in MBA programs
- Pharmaceutical industry training
- Journalism and investigative reporting education
- Public awareness and media literacy

## 📄 Case Study Content

### Theranos (2003-2023)
- Elizabeth Holmes' $9B blood-testing fraud
- Whistleblower suppression
- 11+ year prison sentence
- $452M restitution ordered

### Martin Shkreli (2011-2017)
- Daraprim price increase from $13.50 to $750
- MSMB/Retrophin Ponzi scheme
- 7-year prison sentence
- Symbol of pharmaceutical greed

### Pfizer Trovan Trial (1996-2011)
- Unauthorized testing on 200 Nigerian children
- 11 deaths, dozens disabled
- Falsified ethics approval documents
- $35M settlement after 15 years

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Case study information compiled from public records, court documents, and investigative journalism
- Ethical framework based on established moral philosophy traditions
- Design inspired by forensic architecture and investigative journalism aesthetics

## 📧 Contact

For questions or feedback, please open an issue on GitHub.

## ⚠️ Disclaimer

This educational resource is for informational purposes only. Case study content is based on publicly available information and court records. The ethical assessment tool provides general guidance and should not be considered professional ethical advice.

---

**Last Updated**: November 2024  
**Version**: 1.0.0  
**Status**: Production Ready
