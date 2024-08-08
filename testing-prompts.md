## Modernize testing in an existing package

* Get a local copy of the stringb package. You could use `create_from_github("hadley/stringb")` (preferably) or `use_course("hadley/stringb")`, for example.
* Convert to testthat 3e (this will be easy!)
* Enable parallel testing (https://testthat.r-lib.org/articles/parallel.html).
* Find which code isn’t covered by tests (you don’t need to do anything about it yet).
* Verify that `R CMD check` passes.
* Convert the existing `expect_error()` to `expect_snapshot()`. (What argument do you need to set?)
* Use `expect_snapshot()` to get to 100% test coverage for stringb. (Where should the new test live?)
* Our style guide now recommends that all error messages end in a full stop. Add that full stop to the messages, verify that the tests now fail, and then accept the change so that they pass again.
* Verify that `R CMD check` passes.

## Align R and test files

In an existing package, use the code snippet in the help for `usethis::use_r()` to figure out how well matched / unmatched the `R/*.R` and `test/testthat/test-*.R` files are.

Fix that. `usethis::rename_files()` might help, depending on where you're starting from.

## Setup keyboard shortcuts for common testing "moves"

Here's a good resource on customizing RStudio keyboard shortcuts:
https://docs.posit.co/ide/user/ide/guide/productivity/custom-shortcuts.html

devtools addins that are nice to have keybindings for:

* `devtools::test_active_file()`: consider Cmd/Ctrl + T
* `devtools::test_coverage_active_file()`: consider Cmd/Ctrl + R

## Learn if tests are leaking state

Use `testthat::set_state_inspector()` on an existing package to see if some of its tests are _not_ leaving the world the way they found it.

Ideas for what to look for:

* Files left behind in the temp directory.
* Modified R options.
* Modified environment variables.

Search for `set_state_inspector()` if you want to see organic usage and get more ideas of which aspects of state people check for.

## Look for `library()` and `source()` calls in a test suite

Use GitHub code search to look for CRAN packages that call `library()` or `source()` inside their testthat test suite.

Grab a local copy of such a package and see if you can refactor it to use more official testthat methods to achieve whatever it is they're trying to do.

*You could conceivably make a pull request to such a package, but it's risky to offer this sort of unsolicited feedback. Proceed with caution.*

## Look for test helpers

Search packages on CRAN or in, e.g., the tidyverse or r-lib organization for test helpers.

Single-most likely file for these is `tests/testthat/helper.R`.

But they could also be in a file like `tests/testthat/helper-foo.R`. Or even defined in `R/` (although those might be hard to find just based on file name).

Once you've found some test helpers, study them:

* What sort of functionality do the test helpers offer?
* How are they used inside that package's tests?

Do the same but for test setup files, e.g., `tests/testthat/setup.R`.

## Look for test fixtures

The function `test_path()` is a helpful and robust way to build a path to a file inside a package's test directory.

Search for uses of `test_path()` and see what it's being used for.
