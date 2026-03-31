# Eli's Website

Personal blog built with Hugo and the PaperMod theme, deployed to GitHub Pages.

## Build & Dev

- Local dev server (includes drafts): `bash scripts/serve.sh`
- Build: `hugo --gc --minify`
- Hugo version: 0.150.0 extended
- Theme (PaperMod) is a git submodule — run `git submodule update --init` after cloning

## Content

- Posts live in `content/posts/` as markdown with YAML front matter
- Use page bundles (folder with `index.md`) for posts with images/assets
- Standalone `.md` files for simple posts without assets
- Archetypes: `archetypes/default.md` — new posts start as `draft: true`
- Taxonomies: `categories`, `tags`, `series`

### Content areas (current and planned)

- AI safety writings (series: "AI Safety From First Principles")
- Portfolio project write-ups
- Productivity hacks, philosophy essays, and miscellaneous

## Configuration

- Site config: `hugo.yaml`
- Custom CSS: `assets/assets/css/extended/custom.css`
- Custom post metadata partial: `layouts/partials/post_meta.html`

## TODO.md Preferences

- Use checklists for all sub-items when a task has significant effort or multiple sub-items
- Organize entries in reverse chronological order (newest at the top)

## Deployment

- Pushes to `main` trigger GitHub Actions deploy to GitHub Pages
- Workflow: `.github/workflows/deploy.yml`
- Do not commit the `public/` directory
