CSS Exercise
Download this skeleton. Add a new external stylesheet to the assets folder, and add a link tag for it in the html page. Open up the html page in your web browser and begin styling the recipe page using Chrome Dev Tools with some basic CSS syntax. Don't forget to copy and paste any changes made to your CSS before refreshing the page.

Select the body element and set the font-family property to "Arial, sans-serif"
Set the font-size to 38px for all H1 elements
Set the font-size to 32px for all H2 elements
Add a class to your unordered list of ingredients called "ingredients-list"
Add a list-style property with a value of "square inside" to all elements with the "ingredients-list" class
Add another list-style of your choosing to all ordered list elements
Change the width of the logo image to 100px by selecting all img elements that are immediate children of the header element. Hint: Use >
Select all anchor elements within list elements within unordered list elements and remove their underlines. Also change their color to inherit.
Give your whole recipe page a nice background-color
Set the line-height to 1.5 in your css_reset file
Challenge: Come up with a way to select and style your reviews after they are submitted. For now just some simple font-styling is fine.

When you review the solution, carefully review the stylesheet and compare it to your own.

CSS Advanced Selectors
Set the cursor:pointer and outline:none properties for all radio buttons, select elements, and submit buttons.
Style the background-color of the submit button gold using the last-child selector and give it a darkening hover effect.
Color every other list element in the directions list with a light-grey background.
Use the + operator to select the first review immediately after the Reviews header element and give it a 1px, solid, black, top border (Hint: the class for a submitted review will be .user_review).
Style the radio buttons with stars! Use the stars.png file in the assets folder. You will need to use the WebKit extension property -webkit-appearance: none;.
The stars will be blue when hovered and will be yellow when checked. Use the :hover and :checked pseudo-classes to change the background-position property of the radio buttons (Hint: You want to move the background image to show a different part of the stars.png image).
Compare your recipe page to this example and this stylesheet.