## Bring your own package

If you have your own package, you could apply some of these moves we discussed:

* Add documentation, using roxygen2, if you have none.
* Add a README.Rmd if you don't have a README. Remember to render to README.md.
* If you have a static README.md, convert it to use README.Rmd.
* Add your first vignette or article.
* Beef up your examples.
* Add links to your documentation:
  - To other functions in your package
  - To relevant functions in another package
  - To vignettes (won't truly pay off until/unless you have a pkdgdown site)
  - To an external URL
* Use `urlchecker::url_check()` to do a health check on all URLs in your package
* If any of your examples change the world:
  - Modify them so that does not happen.
  - Alternatively, make sure they always restore the original state.

## Extend the libminer package

At posit::conf 2023, Andy Teucher taught an introductory package development workshop:  
<https://posit-conf-2023.github.io/pkg-dev/intro.html>

The toy package they built is called libminer and it provides interesting summaries of the packages installed on your system. Here's the final product:  
<https://github.com/ateucher/libminer>

Copy libminer to your computer by, e.g.:

* `usethis::create_from_github("ateucher/libminer")` (recommended)
* `usethis::use_course("ateucher/libminer")` (if you are not a Git/GitHub user)

Run `check()` to establish that all is in working order. Play with `libminer::lib_summary()` so you get a sense of what it does.

Ideas for extending libminer:

* Add a mention and link to `utils::installed.packages()` to the help for `lib_summary()`.
* Create a (tiny) vignette for libminer. It's OK if it basically has the same content as README.
* Add another function to libminer, document it, create links from the new function to `lib_summary()` and vice versa. Add usage of the new function to `README.Rmd` and re-render `README.md`. Inspiration:
  - Look at the information returned by `utils::installed.packages()`. There's more interesting stuff there! Such as `Priority`, `Depends`, and `NeedsCompilation`.
  - For each `LibPath`, tabulate the `Priority` of the packages installed there. (Ideally the base and recommended packages live in one library and user-installed add-on packages live in another library, so this is the beginning of a "package library health check".)
  - For all installed packages (maybe split out by `LibPath`?), report something about the treatment of R in `Depends`. Is a minimum version of R stated at all? Tabulate the mininum R version requirements.

## Treasure hunt

Use your GitHub code search skills to find and study some of the special techniques we discussed:

* How prevalent is `README.Rmd`? Hint: you might need to look in `.Rbuildignore` to detect this, because only `README.md` will make it into the source package on CRAN.
* Can you find folks using the `vignette("things", package = "somepkg")` in help topics? In vignettes?
* Look for usage of `@examplesIf`. What sort of code do you see evaluated there, i.e. that controls whether the example should execute?
* Look for packages that change the world in their examples. Do they restore the original state? You can't write a super precise search query for this, but you should be able to get somewhere.
