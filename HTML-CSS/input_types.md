## <u>HTML / CSS</u>

- `<!DOCTYPE html>` declaration defines this document to be HTML5

-  `<html>` element is the root element of an HTML page

-  `<head>` element contains meta information about the document

- `<title>` element specifies a title for the document

-  `<body>` element contains the visible page content

-  `<h1>` element defines a large heading

- `<p>` element defines a paragraph

- `<br>` element defines a line break

- `<pre>` element defines preformatted text

- `<form>` element defines a form that is used to collect user input

- `<select>` element defines a drop-down list

- `<button>` element defines a clickable button

- `<fieldset>` element is used to group related data in a form

- `<legend>` element defines a caption for the `<fieldset>` element

-  `<option>` elements defines an option that can be selected

- `<output>` element represents the result of a calculation (like one performed by a script)

- `<textarea>` element defines a multi-line input field

- `<datalist>` element specifies a list of pre-defined options for an `<input>` element

- `<section>` element defines a section in a document

-  `<article>` element specifies independent, self-contained content

- Examples of where an `<article>` element can be used

  - Forum post, blog post, newspaper article

- `<header>` element specifies a header for a document or section

- `<footer>` element specifies a footer for a document or section

- `<nav>` element defines a set of navigation links

- `<aside>` element defines some content aside from the content it is placed in (like a sidebar)

-  `<figure>` element can group together an images and a caption

- `<img>` element defines the image

- `<figcaption>` element defines the caption

- `<label>` tag defines a label for many form elements

- The `list` attribute of the `<input>` element, must refer to the `id` attribute of the `<datalist>` element

- rows` attribute specifies the visible number of lines in a text area

- `action` attribute defines the action to be performed when the form is submitted

- `target` attribute specifies if the submitted result will open in a new browser tab, a frame, or in the current window

-  `method` attribute specifies the HTTP method (**GET** or **POST**) to be used when submitting the form data

- Each input field must have a `name` attribute to be submitted

  - If the `name` attribute is omitted, the data of that input field will not be sent at all

- `cols` attribute specifies the visible width of a text area

- Use the `multiple` attribute to allow the user to select more than one value

- Use the `size` attribute to specify the number of visible values

- HTML links are defined with the `<a>` tag. The link address is specified in the `href` attribute

- HTML images are defined with the `<img>` tag. The filename of the image source is specified in the `src` attribute

- HTML lists are defined with the `<ul>` (unordered/bullet list) or the `<ol>` (ordered/numbered list) tag, followed by `<li>` tags (list items)

- The `alt` attribute specifies an alternative text to be used, if an image cannot be displayed

- The `style` attribute is used to specify the styling of an element, like color, font, size etc

- The language of the document can be declared in the `<html>` tag. The language is declared with the `lang` attribute

- a `title` attribute is added to the `<p>` element

  `<p title="I'm a tooltip"> `

  `This is a paragraph. `

  `</p>`

- The `id` attribute specifies a unique id for an HTML element (the value must be unique within the HTML document)

- Every HTML element has a default display value depending on what type of element it is. The two display values are: block and inline

- HTML `class` attribute is used to define equal styles for elements with the same class name

- A semantic element clearly describes its meaning to both the browser and the developer

  - Examples of **non-semantic** elements: `<div>` and `<span>` - Tells nothing about its content
  - Examples of **semantic** elements: `<form>, <table>` and `<article>` - Clearly defines its content



## <u>Input Types</u>


Defines a **button**
 ```html
<input type="button">
 ```
Defines a **checkbox**
```html
<input type="checkbox">
```
Used for input fields that should contain a color
```html
<input type="color">
```
Used for input fields that should contain a date
  -  can also use the `min` and `max` attributes to add restrictions to dates
 ```html
 <input type="date">
 ```
 Specifies a date and time input field, with no time zone
 ```html
 <input type="datetime-local">
 ```
 Used for input fields that should contain an e-mail address
 ```html
 <input type="email">
 ```
 Defines a fileselect field and a "Browse" button for file uploads
 ```html
 <input type="file">
 ```
 Defines a **numeric** input field
 ```html
 <input type="number">
 ```
 Defines a **password field**
 ```html
 <input type="password">
 ```
 Defines a **radio button**
 ```html
 <input type="radio">
 ```
 Defines a control for entering a number whose exact value is not important (like a slider control)
   Default range is 0 to 100. However, you can set restrictions on what numbers are accepted with the `min`, `max`, and `step` attributes
 ```html
 <input type="range">
 ```
 Defines a **reset button** that will reset all form values to their default values
 ```html
 <input type="reset">
 ```
 Used for search fields (a search field behaves like a regular text field)
 ```html
 <input type="search">
 ```
 Defines a button for **submitting** form data to a **form-handler**
 ```html
 <input type="submit">
 ```
 Used for input fields that should contain a telephone number
 ```html
 <input type="tel">
 ```
 Defines a **single-line text input field**
 ```html
 <input type="text">
 ```
 Allows the user to select a time (no time zone)
 ```html
 <input type="time">
 ```
 Used for input fields that should contain a URL address
 ```html
 <input type="url">
 ```
 Allows the user to select a week and year
 ```html
 <input type="week">
 ```



## <u>Inpute Attributes</u>

- input `value` attribute specifies an initial value for an input field
- input `readonly` attribute specifies that an input field is read-only
- input `disabled` attribute specifies that an input field should be disabled
- input `size` attribute specifies the visible width, in characters, of an input field
  - default value for `size` is 20
  - input types: text, search, tel, url, email, and password
- input `maxlength` attribute specifies the maximum number of characters allowed in an input field
- input `min` and `max` attributes specify the minimum and maximum values for an input field
  - input types: number, range, date, datetime-local, month, time and week
- input `multiple` attribute specifies that the user is allowed to enter more than one value in an input field
  - input types: email, and file
-  input `pattern` attribute specifies a regular expression that the input field's value is checked against, when the form is submitted
  - input types: text, date, search, url, tel, email, and password
-  input `placeholder` attribute specifies short a hint that describes the expected value of an input field (a sample value or a short description of the expected format)
  - input types: text, search, url, tel, email, and password
- input `required` attribute specifies that an input field must be filled out before submitting the form
  - input types: text, search, url, tel, email, password, date pickers, number, checkbox, radio, and file
-  input `step` attribute specifies the legal number intervals for an input field
  - input types: number, range, date, datetime-local, month, time and week
- input `autofocus` attribute specifies that an input field should automatically get focus when the page loads
- input `height` and `width` attributes specify the height and width of an `<inputtype="image">` element
- input `list` attribute refers to a `<datalist>` element that contains pre-defined options for an `<input>` element
- input `autocomplete` attribute specifies whether a form or an input field should have autocomplete on or off
  - works with `<form>` and the following `<input>` types: text, search, url, tel, email, password, datepickers, range, and color

### The HTML document itself begins with `<html>` and ends with `<html>`.
