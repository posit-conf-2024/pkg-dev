## A collection of prompts to practice using GitHub code search

Good entry point into the documentation:
https://docs.github.com/en/search-github/github-code-search/understanding-github-code-search-syntax

---

Find the R package this Mastodon post is referring to:

https://fosstodon.org/@michaelchirico/112842879750705908

(PackageS, plural, really.)

---

The `col_type` argument to `readr::read_csv()` seems to be used in different ways? How can I see ways people are using it?

What if I wanted results from `readr::read_delim()` as well?

How can you filter out Python hits? Or hits in `.Rd` files?

---

What packages are attached when someone does `library(tidyverse)`?

Hint: it probably happens inside the `.onAttach()` function inside the tidyverse package.

What other CRAN packages use `.onAttach()` and what do they do there?

Where do people tend to define `.onAttach()` (as in, in which file)?

---

Which tidyverse packages use cpp11 (a package that helps you incorporate C++ code)?

Hint: this can be determined from the `LinkingTo` field in the `DESCRIPTION` file.

---

When did `trimws()` first appear in base R?

---

Where is the implementation for `is.na()` (in base R)?

---
