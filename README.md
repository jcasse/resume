# Resume

Adapted from
[https://github.com/mrzool/cv-boilerplate]
(https://github.com/mrzool/cv-boilerplate).

Refer to
[http://mrzool.cc/writing/typesetting-automation/]
(http://mrzool.cc/writing/typesetting-automation/) for more ideas.

Separating presentation from content makes life easier. Data is kept in a YAML
file, which is a simple data format for human consumption. The formatting is
defined in a LaTeX file. Pandoc embeds the data from the YAML file into the
LaTeX file to produce the PDF.

# Dependencies

1. LaTeX with the following extra packages: `fontspec` `geometry` `multicol`
`xunicode` `xltxtra` `marginnote` `sectsty` `ulem` `hyperref` `polyglossia`

```bash
sudo apt install texlive-latex-extra
sudo apt install texlive-xetex
```

[MacTeX](http://www.tug.org/mactex) in OS X

3. [Lato 2.0](http://www.latofonts.com/lato-free-fonts) TT fonts

4. [Pandoc](http://pandoc.org/), the universal document converter

```bash
sudo apt-get install pandoc
```

5. xdg-open for viewing the PDF in Linux

```bash
sudo apt-get install xdg-utils
```


# Usage

1. Fill `data.yml` with your personal details, work experience, education, and
desired settings.
2. Run `make` to compile the PDF.
3. Tweak on `document.tex` and `preamble.tex` until you're satisfied with the
result.

**Note**: this template needs to be compiled with XeTeX.

# Available settings

- **`mainfont`**: Hoefler Text is the default, but every font installed on your
system should work out of the box (thanks, XeTeX!)
- **`fontsize`**: Possible values here are 10pt, 11pt and 12pt.
- **`lang`**: Sets the main language through the `polyglossia` package. This is
important for proper hyphenation, among other things.
- **`geometry`**: A string that sets the margins through `geometry`. Read
[this](https://www.sharelatex.com/learn/Page_size_and_margins)
to learn how this package works.

# Resources

- Refer to [Pandoc's documentation](http://pandoc.org/MANUAL.html#templates) to learn more about how templates work.
- If you're not familiar with the YAML syntax, [here](http://learnxinyminutes.com/docs/yaml/)'s a good overview.
- If you want to edit the template but LaTeX scares you, these [docs](https://www.sharelatex.com/learn/Main_Page) put together by ShareLaTeX cover most of the basics and are surprisingly kind to the beginner.
- Odds are your question already has an answer on [TeX Stack Exchange](https://www.sharelatex.com/learn/Main_Page). Also, pretty friendly crowd in there.

# License

This repository contains a modified version of Mattia Tezzele's [cv-boilerplate](https://github.com/mrzool/cv-boilerplate), which in turn is a modified version of Dario Taraborelli's [cvtex](https://github.com/dartar/cvtex) template.

License: [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)
