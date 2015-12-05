Problem 3 - Javascript: Draw Blocks

Place file 'draw_blocks.php' on your local web server (with support for PHP 5.4 or higher).

Study the provided block configuration in file, transfer them to the client side and draw via Javascript in the browser.

Block Drawing Requirements:
- blocks are just rectangular shapes that flow from top to bottom of the page (standard web page flow). Each block should be drawn on its own line. 
- default width of a block is 100 pixels
- default height of a block is 100 pixels
- if a block configuration specifies a color, set the block's background color to such
- if a block configuration specifies a border, the border should be 1 pixel, solid and black in color
- if a block specifies a picture, set the block's background to it

Additional special requirement: color-shifter
- blocks configured with type "color-shifter" can be clicked to change their color
- color change is based on a random selection from 5 colors: red, yellow, orange, blue, lime
- same color can't be randomly chosen consecutively. Example: if a block is colored red, clicking must change it to a color other than red.