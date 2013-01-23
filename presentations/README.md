# HydeSlides

## Building from Existing Chapters

Creating a new slide deck (within teach.github.com) from existing slide "chapters" is easy:

1. Create a new HTML file in /presentations
2. Add YAML front matter with `layout`, `title`, `chapters` fields

`layout` must be set to `slidedeck`; `title` can be whatever you like; `chapters` is a quoted, comma separated list of tag names of slides in the _posts directory.

## Creating new Chapter Content

All "chapter" content for teach.github.com HydeSlides are located in the `_posts` directory. Subfolders of markdown files are used only for ease of human-readable organization.

A chapter consists of a `_posts/<yourchapter>` and markdown files consisting of four YAML front matter fields: `chapter`, `layout`, `title`, `tags`.

* `chapter` serves as the string for the cover slide auto-built by HydeSlides
* `layout` must be set to slide
* `title` must be a string or, to hide the slide header, an empty string. e.g. `''`
* `tags` for simplicity sake is only assigned one value, usually the same name as the chapter folder

## Notes & What's Next Support

### Notes

Speaker notes, only shown on the "split" screen displayed by presseing the S key, are included on slides in an HTML wrapped element with `class="notes"`.

	<aside class="notes">
	  Oh hey, these are some notes. They'll be hidden in your presentation, but you can see them if you open the speaker notes window (hit 's' on your keyboard).
	</aside>

### What's Next

HydeSlides has a special implementation to support multiple slide decks and their associated "notes" mirroring mode.

In order to support multiple slide deck HTML files in the root, pass the querystring parameter `name=` with the slide deck (name only) when opening in a browser. 

	http://teach.github.com/presentations/git-foundations.html?name=git-foundations

Pressing S will then correctly launch the slide deck What's Next with presenter notes (if any are in the markup)

	
## To Do
*[] Download Google Fonts for offline slide use
*[] Simplify layouts.scss styles

## Theming

/dependencies 
* SASS theming is found under `/dependencies/github/css` and controls all ReavealJS and slide presentation overrides
* Graphical and JS dependencies centrally stored in `/dependencies`
* Assets used throughout any slide deck should be stored in `/assets`

## To Do
* Download Google Fonts for offline slide use
* Simplify layouts.scss styles

---
Thanks go out to the contributors of HydeSlide's core components and features: Tom Preston-Werner for Jekyll, Hakim El Hattab for Reveal-JS, and Dave Gandy for Font-Awesome.
