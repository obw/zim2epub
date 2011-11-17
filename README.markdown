# About

zim2epub is a ruby script to convert openzim files to epub file format. Zim files can be exported from wikipedia (as well as wikibooks ...) using the "book creator" function.

# Installation

    gem install zim2epub

# Usage

## Convert a zim file

To convert a zim file you have a few different options.

1. You can convert all articles in the zim file using the internal order
2. Exclude some articles (blacklist)
3. Specify a list of articles to include (whitelist)
4. Convert articles using a 'Table of Contents' article

Additionally you can set a wikipedia mode which removes some parts of the exported articles like non-printing blocks, 'edit' links, toc, ...

## Wikipedia mode

Whatever way you run zim2epub you can always specify the `-w` flag to enable wikipedia mode. In this mode all tags with the css class `noprint` or `editsection` will be removed. If you set the `--no-toc` flag as well zim2epub will also remove the TOC at the beginning of every article.

## Convert all articles

To convert all articles of a zim file use the following command:

    zim2epub <zimfile> [epubfile]

## Blacklist articles

If you want to exclude one or more articles simple pass each of them to the `-e` option like here:

    zim2epub -e 'Article 1' -e 'Article 2' <zimfile> [epubfile]

The names you specify are interpreted as regular expressions and matched against the URL (which is most of the time identical to the title) of the article.

## Whitelist articles

To convert only a given list of articles use the `-a` flag. Articles are specified like above for excludes.

    zim2epub -a 'Article 1' -a 'Article 2' <zimfile> [epubfile]

This version is especially useful as it uses the given order of the articles instead of the internal order.

## Use a 'Table of Contents' article

zim files exported by wikipedia also include a 'Table of Contents' article that links all other articles you added to the book. zim2epub can be used to extract those links and add them to the epub in the order listed.

    zim2epub --tocsite 'Table of Contents' <zimfile> [epubfile]

The name of the article here again is a regexp.

## List articles

To extract a list of articles in a zim file use the following command:

    zim2epub -l <zimfile>

# Option list

    zim2epub [options] <zimfile> [epubfile]
        -l, --list                       list articles
        -w, --[no-]wikipedia             set wikipedia mode
            --[no-]toc                   keep or remove toc
            --tocsite=regexp             use toc to generate navigation
        -e, --exclude=url                exclude a given article (can be specified multiple times)
        -a, --articles=@file|regexp      add article list @file or add article
        -t, --tmp=directory              set temporary directory

# License

See LICENSE

