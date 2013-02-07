# GitHub Official Git Teaching Materials

This is the official set of [GitHub Training](http://github.com/training/) courseware, including outlines, topic-specific guides, examples, and slides provided under the [_CC BY 3.0_ license](http://creativecommons.org/licenses/by/3.0/) to aid schools, universities, user groups, hackathons, corporate lunch-and-learns and other educational outlets in teaching Git and GitHub. In short, you should take these materials and [make the development world a better place](http://en.wikipedia.org/wiki/A_rising_tide_lifts_all_boats) by leveraging them to teach a class or give a conference talk. Do a quick check that you are using the materials in the [spirit of the license](https://github.com/github/teach.github.com/blob/gh-pages/LICENSE.md) and then go forth and spread the good Git and GitHub news.

> A rising tide lifts all boats  
>   – John F. Kennedy

GitHub believes, as a company, that educational materials should be free and improved by the wisdom of the community whenever possible. Inspiration for this comes from more places than we can list, but, to name just a few: [Khan Academy](http://www.khanacademy.org), [Git Immersion](http://gitimmersion.com), [Ruby Koans](http://rubykoans.com), [Coursera](https://www.coursera.org), and [MIT Open Courseware](http://ocw.mit.edu/index.htm).

## Original Authors

These materials were loving donated to the OSS community by [GitHub](https://github.com/about) because it is an awesome company that has a [passion for open sourcing](http://tom.preston-werner.com/2011/11/22/open-source-everything.html) a significant portion [of our work](https://github.com/github).  The original authors of these materials include [Matthew McCullough](http://github.com/matthewmccullough), [Tim Berglund](https://github.com/tlberglund), and [Jared Koumentis](https://github.com/ShepBook), but we eagerly look forward to seeing those contributions overwhelmed by a [community effort](https://github.com/github/teach.github.com/wiki/Hall-Of-Appreciation) to improve and grow these materials for the benefit of the Git-learning community.

## Spread the Love

We've already seen our materials in use by tens of thousands of individuals, but we're excited to take this next step of open sourcing our curriculum and seeing where it gets put to great use. If you are using these materials, we'd love to [see you say so in the Wiki](https://github.com/github/teach.github.com/wiki/Hall-Of-Appreciation).

## Help Us Improve These Materials

We're always looking for contributions to improve these materials. If you have corrections, polish, or materials contributions, please submit them via a [Pull Request](https://help.github.com/articles/using-pull-requests). If your contribution is larger than a syntax fix or sentence re-wording, please initiate a discussion via a new Issue (type `c` after switching focus to the [Issues](https://github.com/github/teach.github.com/issues) tab) so we can help guide your contribution to the right location in the materials. In the highly unlikely case you merely want to rant or denigrate our open materials, please resist that urge and turn that energy into a world-benefitting contribution.

## Materials Format

The majority of these materials will be in [Markdown](http://whatismarkdown.com), a [lightweight markup language](http://en.wikipedia.org/wiki/Lightweight_markup_language) strongly supported in the GitHub web application user interface. There is a syntax guide to the original [Markdown format](http://daringfireball.net/projects/markdown/syntax) and also [GitHub Flavored Markdown](http://github.github.com/github-flavored-markdown/).

## Developing

To get started, please ensure you have a recent version of Ruby installed (we currently use 1.9.3-p327).

Then:

``` bash
script/bootstrap
bin/rake build
bin/rake server
```
