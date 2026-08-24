# CareerFit AI 🎯

> **Algorithmic Career Intelligence, ATS Optimization & Executive Application Suite**

CareerFit AI is an AI-powered platform designed to analyze job postings against candidate profiles, calculate granular ATS match scores, generate tailored resumes and cover letters, simulate recruiter screening, identify competitive advantages & deal-breakers, and prepare candidates for interviews.

![CareerFit AI Preview](https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?auto=format&fit=crop&w=1200&q=80)

---

## ✨ Features

- **📊 Comprehensive Job Fit & ATS Scorecard**
  - Instant calculations for ATS Match (Original vs. Tailored), Qualification Alignment, and Interview Readiness.
  - Granular breakdown of Hard Requirements, Preferred Qualifications, Soft Skills, and Domain Expertise.
  - Interactive **Score Explanation Modal** detailing algorithmic scoring methodology and improvement roadmap.

- **📄 Tailored Resume Studio with Multi-Format Export**
  - Side-by-side comparison of original profile vs. optimized bullet points.
  - Interactive bullet editor with live regeneration and instant re-scoring.
  - **Export to Word (`.docx`)** with executive styling and formatted typography.
  - **Export to PDF (`.pdf`)** and **Markdown Clipboard** options.

- **✍️ Dynamic Cover Letter Generator**
  - 4 customizable tones: *Strategic Executive*, *Assertive & Confident*, *Narrative / Impact*, and *Technical & Concise*.
  - Export to `.docx`, `.pdf`, or copy directly to clipboard.

- **👀 Recruiter 10-Second Simulation**
  - Simulates the initial 10-second scan performed by recruiters and hiring managers.
  - Predicts first impressions, continue-reading verdict, and standout strengths.

- **🛡️ Competitive Advantages & Risk Mitigation**
  - Highlights unique candidate differentiators and talking points for interviews.
  - Flags potential deal-breakers, unfulfilled requirements, and concrete mitigation scripts.

- **🎤 Anticipated Interview Prep & STAR Stories**
  - Generates role-specific behavioral, technical, and executive questions.
  - Structures tailored STAR (Situation, Task, Action, Result) responses drawn from candidate background.

- **🗂️ Target Job Pipeline & Analytics Dashboard**
  - Track multiple applications through stages (*Discovered*, *Tailoring*, *Applied*, *Interviewing*, *Offer*).
  - **State & Region Filter** (California, New York, Texas, Remote, etc.).
  - **# of Current Openings Filter** (Single opening, 2+, 3+ hiring surge).
  - **LinkedIn-Style Applicant Competition Filter** (⚡ Early Applicant `<25`, `25–50`, `50–100`, `100+`).
  - Compare multiple roles side-by-side.

- **💾 Master Profile Management**
  - Manage work experience, skills, certifications, and portfolio links with local persistence (`localStorage`).

---

## 🛠️ Tech Stack

- **Frontend**: [React 19](https://react.dev/), [TypeScript](https://www.typescriptlang.org/), [Vite 6](https://vitejs.dev/)
- **Styling**: [Tailwind CSS v4](https://tailwindcss.com/)
- **Icons**: [Lucide React](https://lucide.dev/)
- **Document Exporting**: [docx](https://docx.js.org/) (`.docx` Word documents), [jsPDF](https://github.com/parallax/jsPDF) & [jspdf-autotable](https://github.com/simonbengtsson/jsPDF-AutoTable) (`.pdf`)
- **Backend & Middleware**: [Express](https://expressjs.com/), [tsx](https://github.com/privatenumber/tsx), [esbuild](https://esbuild.github.io/)
- **AI Engine**: [@google/genai](https://www.npmjs.com/package/@google/genai) (Google Gemini API)

---

## 🚀 Quick Start

### 1. Prerequisites

- **Node.js**: v18.0.0 or higher
- **npm** or **bun** / **yarn** / **pnpm**
- **Gemini API Key**: Get a free API key from [Google AI Studio](https://aistudio.google.com/) (optional for local mock data, required for live AI analysis).

### 2. Installation

Clone the repository and install dependencies:

```bash
# Clone the repository
git clone https://github.com/your-username/careerfit-ai.git
cd careerfit-ai

# Install dependencies
npm install
```

### 3. Environment Setup

Create a `.env` file from the provided `.env.example`:

```bash
cp .env.example .env
```

Add your Gemini API Key in `.env`:

```env
GEMINI_API_KEY="your_google_gemini_api_key_here"
```

### 4. Run Development Server

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## 📦 Building for Production

To create an optimized production build:

```bash
npm run build
```

To run the production server:

```bash
npm run start
```

---

## 📂 Project Structure

```text
├── src/
│   ├── components/                # Modular UI components
│   │   ├── AnalyzeJobModal.tsx         # Job URL parsing & manual entry modal
│   │   ├── ApplicationsDashboard.tsx   # Pipeline tracking with state & applicant filters
│   │   ├── CandidateProfileView.tsx    # Master profile editor
│   │   ├── CareerInsightsView.tsx      # Compensation, growth & leveling insights
│   │   ├── CoverLetterView.tsx         # Multi-tone cover letter generator & exporter
│   │   ├── DealBreakersAdvantagesView.tsx # Strategic advantages & risk mitigation
│   │   ├── ExportAnalysisMenu.tsx      # PDF, Markdown & Print export menu
│   │   ├── HiringRecruiterView.tsx     # 10-Second Recruiter test simulator
│   │   ├── InterviewPrepView.tsx       # STAR story generator & interview prep
│   │   ├── JobComparisonView.tsx       # Multi-role comparative analysis
│   │   ├── KeywordsView.tsx            # ATS keyword density analysis
│   │   ├── MatchBreakdownBar.tsx       # Categorized competency progress bars
│   │   ├── Navigation.tsx              # Top-level view switcher
│   │   ├── RequirementsTable.tsx       # Line-by-line requirements matrix
│   │   ├── ResumeEditor.tsx            # Bullet tailoring studio & docx exporter
│   │   ├── ScorecardHeader.tsx         # Top scorecards & applicant badges
│   │   └── ScoreExplanationModal.tsx   # Detailed scoring methodology breakdown
│   ├── data/
│   │   ├── defaultAnalysis.ts          # Default comprehensive job analysis dataset
│   │   ├── defaultProfile.ts           # Sample candidate profile
│   │   └── sampleJobs.ts               # Preset industry sample job postings
│   ├── utils/
│   │   ├── analytics.ts                # Mock event analytics tracking service
│   │   ├── exportAnalysis.ts           # PDF and Markdown export utilities
│   │   └── exportUtils.ts              # DOCX (Word) document generation engine
│   ├── types.ts                        # Global TypeScript interfaces & types
│   ├── index.css                       # Global Tailwind CSS stylesheet
│   ├── main.tsx                        # Client entry point
│   └── App.tsx                         # Main container & state manager
├── server.ts                           # Express server & Gemini API proxy
├── vite.config.ts                      # Vite build configuration
├── tsconfig.json                       # TypeScript compiler options
├── metadata.json                       # Application metadata
├── .env.example                        # Environment variables template
├── .gitignore                          # Git ignore rules
└── package.json                        # Dependencies and build scripts
```

---

## 📤 Exporting to GitHub from AI Studio

If you are using Google AI Studio Build:
1. Open the **Settings** / **Export** menu in the top right corner.
2. Select **Export to GitHub** to link directly to a new repository, or select **Download ZIP** to extract and initialize locally:
   ```bash
   git init
   git add .
   git commit -m "Initial commit of CareerFit AI"
   git remote add origin https://github.com/your-username/careerfit-ai.git
   git branch -M main
   git push -u origin main
   ```

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
