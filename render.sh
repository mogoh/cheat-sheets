#!/usr/bin/env bash
#	renders all cheat sheets in this repo

rst2html5 git-cheat-sheet.rst git-cheat-sheet.html
rst2odt git-cheat-sheet.rst git-cheat-sheet.odt
rst2pdf git-cheat-sheet.rst
rst2latex git-cheat-sheet.rst git-cheat-sheet.tex

