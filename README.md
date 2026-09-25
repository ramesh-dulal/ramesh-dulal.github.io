# Ramesh Dulal — Personal Website

Source for [ramesh-dulal.github.io](https://ramesh-dulal.github.io/), built with [Quarto](https://quarto.org) and served by GitHub Pages from the `docs/` folder.

## Structure

- `index.qmd`, `research.qmd`, `teaching.qmd`, `cv.qmd`, `personal.qmd`: site pages
- `_quarto.yml`: site settings and navigation
- `style.css`: site styles
- `images/`: profile photo
- `files/`: CV source (`CV_Ramesh_Dulal.qmd`, `CV-styles.css`), CV PDF, and course syllabi
- `docs/`: rendered site (generated; do not edit by hand)

## Updating the site

```sh
quarto render
git add -A && git commit -m "Update website" && git push
```

## Updating the CV

1. Edit `files/CV_Ramesh_Dulal.qmd` and run `quarto render`.
2. Open `docs/files/CV_Ramesh_Dulal.html` in **Chrome** and print to PDF (A4, no headers/footers). Chrome is needed for the "Last Updated" date on every page.
3. Save it in `files/` as `Ramesh_Dulal_MM_YYYY.pdf`, update the link in `cv.qmd`, and delete the old PDF.
4. Run `quarto render` again and commit.
