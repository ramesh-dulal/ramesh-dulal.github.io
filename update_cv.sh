#!/bin/zsh
# Render the website, rebuild the CV PDF with Chrome, and optionally publish.
# Usage: ./update_cv.sh
set -e
cd "$(dirname "$0")"

CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
CV_HTML="docs/files/CV_Ramesh_Dulal.html"
CV_PDF="files/Ramesh_Dulal_CV.pdf"

echo "==> Rendering website"
quarto render

echo "==> Printing CV to PDF"
"$CHROME" --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$CV_PDF" "file://$PWD/$CV_HTML" 2>/dev/null
cp "$CV_PDF" docs/files/
echo "    Saved $CV_PDF ($(pdfinfo "$CV_PDF" 2>/dev/null | awk '/Pages/ {print $2}') pages)"

echo
git status --short
echo
read "reply?Commit and push to the website now? [y/N] "
if [[ "$reply" == [yY] ]]; then
  git add -A
  git commit -m "Update CV"
  git push
  echo "==> Published. Live in a minute or two at https://ramesh-dulal.github.io/cv.html"
else
  echo "==> Not published. Check $CV_PDF, then rerun or commit yourself."
fi
