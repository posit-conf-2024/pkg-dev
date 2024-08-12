## Bring your own package

If you have your own package and it's on GitHub:

* `use_github_action()` and choose "check-standard". This is a good idea for anyone / any package.
* If you use testthat for testing, do `use_github_action()` and choose "test-coverage".
* `use_pkgdown_github_pages()` will start to build and deploy a pkgdown site.

## regexcite

If you don't have your own package, but you did fork and clone regexcite earlier today, you could do any of the suggestions above for your fork of regexcite.

## libminer

If you don't have your own package, but you did fork and clone libminer earlier today, you can **update** its GHA workflows, which need a refresh (they were configured a year ago).

First, visit the Actions tab of your fork. You'll probably see a message like this:

> Workflows aren’t being run on this forked repository
> 
> Because this repository contained workflow files when it was forked, we have disabled them from running on this fork. Make sure you understand the configured workflows and their expected usage before enabling Actions on this repository.

Go ahead and click on "I understand my workflows, go ahead and enable them".

Now, locally, you can overwrite the GHA YAML files, to reflect the current workflows we're using:

* `use_github_action("check-standard")`. Look over the changes, commit, and push.
* `use_github_action("pkgdown")`. Look over the changes, commit, and push.
