# How I make books

This is the basic template and process I typically use
to make books either for electronic or press publication.

# Software

I always use Linux to create my books.

Editor I typically use is Microsoft VSCode. https://code.visualstudio.com/ with the Code Spell Checker extension.

The source is written in Markdown. https://www.markdownguide.org/

I use Pandoc for the compilation. https://pandoc.org/

# Organization

Often when I start a book I am initially unsure what
chapters I will be creating or in what order they will be in. I can change this easily by either using Linux symlinks
or moving content around the folders.

Content folders are named by their purpose (intro, toc, index, chapter, etc.) in alpha-numeric order rather than with a title or content for purposes of sort ordering. The chapter title will go into the Markdown.

/home/directory/mybooks/book-name (book name is likely a working title)

build.sh - Builds everything using Pandoc
contents - The root directory of the contents of the books
metadata.yaml - Metadata to be passed to Pandoc when converting to PDF based on the Pandoc template in my case always latex. See command `pandoc -D latex`.

Under contents I structure this way:

01-intro  chap01  chap02  chap03  chap04  chap05

Under each of thee folders which again is in sort order [0-9a-z]

01-intro-part-01.md  01-intro-part-03.md  01-intro-part-05.md
01-intro-part-02.md  01-intro-part-04.md

If you look at build.sh you can see all this gets sourced in the proper order.

Markdown does not really have include statements so this is the way I have sorted it out.

There are many other tools out there to solve this problem such as https://github.com/knennigtri/merge-markdown but this works for my simple needs.

The result is a PDF in the root directory /mybooks/[book-name].

