# EONAL — free admin-ready setup

This project separates the public portfolio from an admin area. The public page should not expose upload controls. The `admin/` folder is for the private dashboard.

## Setup
1. Create a Supabase project.
2. Run `supabase/schema.sql` in Supabase SQL Editor.
3. Create a Supabase Storage bucket named `eonal-media` (private is recommended).
4. Put your Supabase URL and anon key in `admin/config.js`.
5. Create your admin user in Supabase Authentication.
6. Open `admin/index.html` for uploads.
7. Connect the `public/index.html` page to Supabase using the public data code in `public/app.js`.

The current HTML is preserved as the visual base. This starter does not contain any secret service-role key.
