# Next.js Dashboard Application

**✅ Complete through Chapter 11 of the Next.js Learn Course**

This is a fully functional dashboard application built following the [Next.js App Router Course](https://nextjs.org/learn). The project demonstrates modern Next.js features including App Router, server components, database integration, and user interface patterns.

## Features Implemented

### 🎨 **Styling & UI** (Chapters 1-3)

- Global CSS and Tailwind CSS integration
- Custom fonts (Inter and Lusitana from Google Fonts)
- Responsive layout with mobile-first design
- CSS Modules for component-specific styling

### 🧭 **Navigation & Routing** (Chapters 4-5)

- File-based routing with App Router
- Nested layouts and pages
- Active link highlighting in navigation
- Dashboard with multiple sections (invoices, customers)

### 🔧 **Database & Data Fetching** (Chapters 6-7)

- PostgreSQL database integration with Vercel Postgres
- Server components with async data fetching
- Database seeding with placeholder data
- Revenue charts and latest invoices display

### 🔍 **Search & Filtering** (Chapters 8-9)

- Real-time search functionality with URL search params
- Debounced search input for performance
- Server-side filtering of invoices
- Search state preservation across navigation

### 📄 **Pagination** (Chapters 10-11)

- Server-side pagination for large datasets
- URL-based pagination state
- Navigation controls (previous/next, page numbers)
- Proper handling of edge cases

### ⚡ **Performance & Loading** (Chapter 9)

- Streaming with React Suspense
- Loading skeletons for better UX
- Partial page rendering for improved performance
- Component-level loading states

## Tech Stack

- **Framework**: Next.js 15 with App Router
- **Language**: TypeScript
- **Styling**: Tailwind CSS + CSS Modules
- **Database**: PostgreSQL (Vercel Postgres)
- **UI Components**: Custom components with Heroicons
- **State Management**: URL search params for search/pagination state

## Getting Started

1. **Install dependencies**:

   ```bash
   pnpm install
   ```

2. **Set up environment variables**:
   Create a `.env.local` file with your database credentials:

   ```env
   POSTGRES_URL=your_postgres_url
   POSTGRES_PRISMA_URL=your_postgres_prisma_url
   POSTGRES_URL_NON_POOLING=your_postgres_url_non_pooling
   POSTGRES_USER=your_postgres_user
   POSTGRES_HOST=your_postgres_host
   POSTGRES_PASSWORD=your_postgres_password
   POSTGRES_DATABASE=your_postgres_database
   ```

3. **Seed the database**:

   ```bash
   # Visit /seed in your browser or run:
   curl http://localhost:3000/seed
   ```

4. **Run the development server**:

   ```bash
   pnpm dev
   ```

5. **Open [http://localhost:3000](http://localhost:3000)** in your browser

## Database Management

The project includes SQL utilities:

- `drop_tables.sql` - Drop all dashboard tables with CASCADE
- `get_table_names.sql` - List all tables in the database
- `truncate_and_list_tables.sql` - Truncate all data while preserving structure

## Project Structure

```
app/
├── dashboard/
│   ├── (overview)/          # Dashboard home with grouped routing
│   ├── customers/           # Customer management pages
│   ├── invoices/           # Invoice management with search & pagination
│   └── layout.tsx          # Dashboard layout with navigation
├── lib/
│   ├── data.ts             # Database queries and data fetching
│   ├── definitions.ts      # TypeScript type definitions
│   └── utils.ts            # Utility functions
├── ui/                     # Reusable UI components
│   ├── dashboard/          # Dashboard-specific components
│   ├── invoices/           # Invoice-related components
│   └── global.css          # Global styles
└── seed/                   # Database seeding endpoint
```

## What's Next

This project is ready for the next chapters of the Next.js course:

- **Chapter 12**: Mutating Data (CREATE, UPDATE, DELETE operations)
- **Chapter 13**: Handling Errors
- **Chapter 14**: Improving Accessibility
- **Chapter 15**: Adding Authentication
- **Chapter 16**: Adding Metadata

For more information, see the [course curriculum](https://nextjs.org/learn) on the Next.js Website.
