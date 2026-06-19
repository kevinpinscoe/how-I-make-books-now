# How I make books

This is the basic template and process I typically use
to make books either for electronic or press publication.

# Software

I always use Linux to create my books.

Editor I typically use is Microsoft VSCode. https://code.visualstudio.com/ with the Code Spell Checker extension.

The source is written in Markdown. https://www.markdownguide.org/

I use Pandoc for the compilation. https://pandoc.org/

# Organization

Often when I start a book I am initially unsure what chapters I will be creating or in what order 
they will be in. I can change this easily by either using Linux symlinks or moving content around the folders.

This is whee the Manifest file comes in.

This fle maintains the order in which I want chapters and sections published.

build.sh - Builds everything using Pandoc

contents - The root directory of the contents of the books

metadata.yaml - Metadata to be passed to Pandoc when converting to PDF based on the Pandoc template in my case always latex. See command `pandoc -D latex`.

Under contents I structure this way:

01-intro  chap01  chap02  chap03  chap04  chap05 zz-appendices

This just makes it easier to find in VSCode File Explorer (in alphabetical order).

The manifest dictates the order of the section and chapter files. 

I use https://github.com/kevinpinscoe/line-reorder-gui to visually rearrange my section pages by file name.

There are many other tools out there to solve this problem such as https://github.com/knennigtri/merge-markdown but this works for my simple needs.

The result is a PDF in the root directory /mybooks/[book-name].

## Contributing & Reporting Issues

Bug reports, feature requests, security disclosures, and contributions are all
welcome. I keep these guidelines in one place for all my projects:

- **How to contribute or report an issue:** https://github.com/kevinpinscoe/how-to-contribute
- **Report a security vulnerability:** do not open a public issue. Use the
  **"Report a vulnerability"** button on this repository's **Security** tab, or
  see the [security policy](https://github.com/kevinpinscoe/how-to-contribute/blob/main/SECURITY.md).
