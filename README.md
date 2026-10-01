# Εν-Θράξει

Personal Jekyll blog, deployed via GitHub Pages at [a-thrax.gr](https://a-thrax.gr).

Site content (articles) is Greek. Filenames, folders, and code are English.

## Adding an article

See [`HOW-TO-ADD-AN-ARTICLE.md`](HOW-TO-ADD-AN-ARTICLE.md) — no local setup required, works entirely through the GitHub website.

## Local development

```
bundle install
bundle exec jekyll serve
```

Uses the Ruby version in `.ruby-version` (CI reads the same file).

Then open http://localhost:4000.

Deployment runs via the GitHub Actions workflow in `.github/workflows/deploy.yml` on every push to `main` (not GitHub Pages' native branch-deploy pipeline), which is what allows the custom generator in `_plugins/` to run.

## Structure

- `_config.yml` — site title, description, plugins. `title` is the one configurable site name (currently "Εν-Θράξει").
- `_topics/` — the categories, one file per category (`name` in Greek, English `slug`, `desc`, `order` for the nav bar). Single source of truth for the nav bar and category pages. Posts reference one with `topic: <slug>`. Deliberately not Jekyll's built-in `category:`/`site.categories` mechanism, which stays unused.
- `_posts/` — articles. One Markdown file per article, named `YYYY-MM-DD-english-slug.md`.
- `_plugins/topic_pages.rb` — generates one listing page per category (`/<slug>/`) at build time from `_topics/`. No listing pages to create by hand.
- `_layouts/` — page templates (`default`, `home`, `post`, `topic`).
- `_includes/` — shared partials (head, header, footer, article card).
- `assets/` — CSS, JS, images.
- `.pages.yml` — [Pages CMS](https://pagescms.org) config: the editing UI for articles and categories.
- `template/` — the original ChatGPT-generated design mockup this theme was extracted from. Kept for reference; excluded from the build.

## Adding a new category

In Pages CMS, open **Κατηγορίες** and add one. Or by hand, create `_topics/<slug>.md` with `name`, `slug`, `desc` and `order` front matter. A `/<slug>/` listing page is generated automatically at build time. Use that same `slug` as the `topic:` value in a post's front matter to file it there. Changing a slug later does not update existing posts.

## Deferred / not yet built

- A "quote of the day" feature (in the original mockup, browser-local only). Could be reintroduced later as a static `_data/quotes.yml` picked by day-of-year, with no backend needed.
