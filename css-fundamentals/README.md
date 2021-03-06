# CSS Fundamentals

## Objectives

* Know what it stands for (and what it COULD stand for, if we LET it 😉)
* Discuss what CSS does and why it's important
* Differentiate between inline, internal, and external stylesheets
* Understand how to use class, id, and element selectors, and selector order of importance
* Demonstrate the use of box model, floats, clear, positioning, and CSSS grid in page layout
* Introduce CSS Frameworks e.g. Bootstrap/Semantic UI

## CSS Basics

Style vs Markup
CSS - Cascading Style Sheets
Makes our website look fantastic
Adds styling to our pages
Center some shit
Color some shit


## Stylesheets and Selectors

How do we add CSS to our HTML page?
* Inline
* Internal 
* External 

Types of CSS selectors
* HTML tags
* Classes
* Ids

```
HTML Tags:
p {
  font-size: 20px;
}

Class Selector:
.navbar {
  margin-bottom: 0px;
}

ID Selector:
#main-page-title {
  font-family: sans-serif;
}

```


## The Box Model

4 Elements of the box model:
* Content
* Padding
* Border
* Margin

(Use Chrome Web Developer to explore!)

## Layouts & Positioning - Floats & Clear
Floats - take our elements outside of the standard flow of the webpage
```
.grand-canyon-image {
  width: 400px;
  float: left;
}
```
Use clear to make your elements 'clear' any floats and sit inline with the regular flow of the page
```
.park-info {
  clear: both;
}
```
## Layouts & Positioning - CSS Grid
Grid-based layout system
Makes it easy to create well-designed and responsive pages


## CSS Frameworks

Does a lot of the CSS work for us
[Semantic UI](https://semantic-ui.com/)
[Bootstrap](https://getbootstrap.com/)

## Resources

- [CSS Diner](https://flukeout.github.io/)
- [CSS Flexbox Froggy](https://flexboxfroggy.com/)
- [CSS Grid Garden](http://cssgridgarden.com/)
- [Awwwards](https://www.awwwards.com/)
- [codrops](https://tympanus.net/codrops/css_reference/)
- [CSS Tricks](https://css-tricks.com/)
- [CSS Grid Guide](https://css-tricks.com/snippets/css/complete-guide-grid/)
