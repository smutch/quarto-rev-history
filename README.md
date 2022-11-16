# Rev-history Extension For Quarto

Generates a simple revision history table with content pulled from git tags.

## Installing

```bash
quarto add smutch/quarto-rev-history
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

To tag a version of the document/project that you wish to include in the
revision table, simply ensure that your changes are commited and add a git tag.

```bash
git tag v0.0.1-alpha
```

The tag name as well as the date, author and one-line description of the
corresponding git commit will be used to populate the table.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

