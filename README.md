# Ramesh Dulal — Personal Website

Source for [ramesh-dulal.github.io](https://ramesh-dulal.github.io/), built with [Quarto](https://quarto.org) and served by GitHub Pages from the `docs/` folder.

## Structure

- `index.qmd`, `research.qmd`, `teaching.qmd`, `cv.qmd`, `personal.qmd`: site pages
- `_quarto.yml`: site settings and navigation
- `style.css`: site styles
- `images/`: profile photo
- `files/`: CV source (`CV_Ramesh_Dulal.qmd`, `CV-styles.css`), CV PDF, and course syllabi
- `update_cv.sh`: rebuilds the CV PDF and publishes
- `docs/`: rendered site (generated; do not edit by hand)

## Updating the site

```sh
quarto render
git add -A && git commit -m "Update website" && git push
```

## Updating the CV

1. Edit `files/CV_Ramesh_Dulal.qmd`.
2. Run `./update_cv.sh`. It renders the site, prints the CV to `files/Ramesh_Dulal_CV.pdf` with Chrome (needed for the "Last Updated" date on every page), and asks before committing and pushing.

The CV page always links to `files/Ramesh_Dulal_CV.pdf`, so the file name never changes.
