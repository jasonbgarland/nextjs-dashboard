-- Drop tables for Next.js Dashboard
-- Using CASCADE to automatically drop dependent objects

-- Drop customers table
DROP TABLE IF EXISTS customers CASCADE;

-- Drop invoices table  
DROP TABLE IF EXISTS invoices CASCADE;

-- Drop revenue table
DROP TABLE IF EXISTS revenue CASCADE;

-- Drop users table
DROP TABLE IF EXISTS users CASCADE;

-- Verify tables are dropped
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
AND table_name IN ('customers', 'invoices', 'revenue', 'users');
