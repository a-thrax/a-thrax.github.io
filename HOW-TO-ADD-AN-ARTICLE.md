# How to add a new article (no coding needed)

This guide is for adding a new article using only the GitHub website — no software to install.

## 1. Open the `_posts` folder

Go to the repository on github.com and open the `_posts` folder. This is where every article lives, one file per article.

## 2. Create a new file

Click **Add file → Create new file**.

For the file name, use this pattern:

```
YYYY-MM-DD-a-short-english-slug.md
```

- `YYYY-MM-DD` is today's date (or the date you want the article to appear as published), e.g. `2026-08-27`.
- The rest is a few English words describing the article, separated by dashes, e.g. `a-trip-to-crete`. This becomes part of the article's web address, so keep it short and in English — the article text itself will still be in Greek.
- The file must end in `.md`.

Example: `2026-08-27-a-trip-to-crete.md`

## 3. Copy the template

Open [`new-article-template.md`](new-article-template.md) in another tab, copy its entire contents, and paste it into the new file you just created.

## 4. Fill in the four fields at the top

That top section (between the two `---` lines) is called "front matter". Edit only the values, not the field names:

| Field | What to put there |
|---|---|
| `layout` | Leave as `post`. Don't change this. |
| `title` | The article's title, in Greek, in quotes. |
| `topic` | The category, written as its English slug. The available ones are the file names in the `_topics` folder, without `.md` (e.g. `_topics/travel.md` → `travel`). This decides which category page the article shows up on. |
| `excerpt` | A one- or two-sentence summary, in Greek, in quotes. Shown on the homepage. |

## 5. Write the article

Below the second `---` line, delete the placeholder text and write your article in Greek. Leave a blank line between paragraphs. You can make text **bold** with `**bold**` or *italic* with `*italic*`.

## 6. Add an image (optional)

If you want to include a photo:
1. Go to the `assets/images` folder, click **Add file → Upload files**, and upload your image.
2. In your article, reference it like this: `![description](/assets/images/your-file-name.jpg)`

Tip: if the photo is very large (e.g. straight off a phone), resize it to around 2000px on the longest side before uploading. It'll load faster for readers and the page will still look great.

## 6b. Add a video (optional)

There isn't a way to upload a video file directly for this — GitHub's website only accepts files up to 25MB, which most videos exceed. Instead:

1. Upload your video to YouTube or Vimeo. If you don't want it publicly listed/searchable, choose the **Unlisted** privacy option when uploading — it'll still play for anyone with the article link.
2. On the video's page, click **Share**, then **Embed**, and copy the code shown (it starts with `<iframe ...>`).
3. In your article, paste it like this, replacing `PASTE-EMBED-CODE-HERE` with what you copied:

```html
<div class="video-wrapper">
PASTE-EMBED-CODE-HERE
</div>
```

The video will automatically resize to fit the page, including on phones.

## 7. Commit

Scroll to the bottom of the page. Under "Commit changes", write a short message (e.g. "Add article about Crete trip") and click **Commit changes directly to the `main` branch**.

That's it — GitHub Pages rebuilds the site automatically. The article appears on the homepage and its category page within a minute or two.

## Adding a brand-new category

Categories are edited in Pages CMS under **Κατηγορίες** (see `README.md`). Ask whoever maintains the site before adding one.
