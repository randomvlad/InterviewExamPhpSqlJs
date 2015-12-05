<?php
  $blocksConfig = getBlocksConfig();
?>

<html>
  <head>
    <title>Problem 3 - Javascript: Draw Blocks</title>
    <script type="text/javascript">

      /*
        TODO: implement me in javascript here
       */

    </script>
  </head>
  <body>
  </body>
</html>

<?php

function getBlocksConfig() {
  return [
    [
      "width" => 25,
      "height" => 25,
      "color" => "blue",
      "border" => false
    ],
    [
      "color" => "red"
    ],
    [
      "width" => 498,
      "height" => 411,
      "picture" => "http://i.imgur.com/6bc1h.gif",
      "border" => true
    ],
    [
      "color" => "LightBlue",
      "type" => "color-shifter",
      "width" => 498,
      "border" => true
    ]
  ];
}

?>