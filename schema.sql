create table if not exists public.videos (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  file_path text not null,
  created_at timestamptz not null default now()
);

create table if not exists public.presets (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  file_path text not null,
  image_path text,
  created_at timestamptz not null default now()
);

alter table public.videos enable row level security;
alter table public.presets enable row level security;

create policy "public can read videos" on public.videos for select using (true);
create policy "public can read presets" on public.presets for select using (true);
create policy "authenticated can insert videos" on public.videos for insert to authenticated with check (true);
create policy "authenticated can insert presets" on public.presets for insert to authenticated with check (true);
create policy "authenticated can delete videos" on public.videos for delete to authenticated using (true);
create policy "authenticated can delete presets" on public.presets for delete to authenticated using (true);
