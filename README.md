# LifeReaderGPT

A modern, responsive AI life reading website built with Next.js 15, React, TypeScript, Tailwind CSS, Framer Motion, and Lucide React icons.

## Features

- Dark futuristic AI theme with glassmorphism and neon glow effects
- 9 fully designed pages with smooth animations
- Responsive navbar with mobile hamburger menu
- Animated particle background
- SEO optimized with metadata per page
- Accessible components with ARIA labels

## Pages

| Route | Description |
|-------|-------------|
| `/` | Home — Hero with reading type cards |
| `/how-it-works` | 6-step vertical timeline |
| `/sample-reading` | Sample AI readings preview |
| `/questions` | Life question categories |
| `/success-stories` | User testimonials |
| `/disclaimer` | Legal disclaimer |
| `/my-readings` | Reading history |
| `/reading-results` | Full reading with accordion |
| `/questions-answers` | Chat-style Q&A |

## Getting Started

```bash
npm install
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

## Build

```bash
npm run build
npm start
```

## Mobile App (Flutter)

A matching Flutter mobile app lives in the `mobile/` folder.

```bash
cd mobile
flutter pub get
flutter run
```

See [mobile/README.md](mobile/README.md) for full setup and build instructions.

## Tech Stack

- **Next.js 15** — App Router
- **React 19** — UI library
- **TypeScript** — Type safety
- **Tailwind CSS** — Styling
- **Framer Motion** — Animations
- **Lucide React** — Icons

## Project Structure

```
app/           # Pages and routes
components/    # Reusable UI components
hooks/         # Custom React hooks
lib/           # Utilities and mock data
public/        # Static assets
```
