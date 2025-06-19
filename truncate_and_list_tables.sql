-- PostgreSQL script to truncate all tables in the public schema and list tables
-- This script will remove all data from tables while preserving the table structure

-- Start a transaction (optional, remove if you want auto-commit)
BEGIN;

-- Generate and execute TRUNCATE statements for all tables in public schema
DO $$
DECLARE
    r RECORD;
BEGIN
    -- Loop through all tables in the public schema
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = 'public') 
    LOOP
        -- Execute TRUNCATE for each table (RESTART IDENTITY resets sequences, CASCADE handles foreign keys)
        EXECUTE 'TRUNCATE TABLE public.' || quote_ident(r.tablename) || ' RESTART IDENTITY CASCADE';
        RAISE NOTICE 'Truncated table: %', r.tablename;
    END LOOP;
END $$;

-- List all tables in the public schema after truncation
SELECT 
    tablename as "Table Name",
    schemaname as "Schema",
    tableowner as "Owner"
FROM pg_tables 
WHERE schemaname = 'public'
ORDER BY tablename;

-- Get row counts to verify truncation
SELECT 
    schemaname,
    tablename,
    n_tup_ins as "Rows Inserted",
    n_tup_upd as "Rows Updated",
    n_tup_del as "Rows Deleted",
    n_live_tup as "Live Rows",
    n_dead_tup as "Dead Rows"
FROM pg_stat_user_tables 
WHERE schemaname = 'public'
ORDER BY tablename;

-- Commit the transaction (if using transactions)
COMMIT;

-- Alternative: If you prefer to see the generated TRUNCATE statements without executing them,
-- uncomment the following query instead of the DO block above:
/*
SELECT 'TRUNCATE TABLE public.' || quote_ident(tablename) || ' RESTART IDENTITY CASCADE;' as truncate_statement
FROM pg_tables 
WHERE schemaname = 'public'
ORDER BY tablename;
*/
