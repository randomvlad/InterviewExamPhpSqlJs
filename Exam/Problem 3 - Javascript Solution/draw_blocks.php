<?php
  $blocksConfig = getBlocksConfig();
?>

<html>
  <head>
    <title>Problem 3 - Javascript: Draw Blocks</title>
    <script type="text/javascript">

      var drawBlocksConfig = <?php echo json_encode($blocksConfig) ?>;

      function drawBlocks() {
        var canvas = document.getElementById('canvas');

        for( var i = 0; i < drawBlocksConfig.length; i++) {
          var config = drawBlocksConfig[i];

          var block = document.createElement("div");
          block.style.height = config.height ? config.height : 100 + 'px';
          block.style.width = config.width ? config.width : 100 + 'px';

          if (config.color) {
            block.style.backgroundColor = config.color;
          }

          if(config.border) {
            block.style.border = "1px solid black";
          }

          if(config.picture) {
            block.style.backgroundImage = "url('" + config.picture + "')";
          }

          if(config.type && config.type == 'color-shifter') {
            block.onclick = function(e) {
              e = e || window.event;
              var target = e.target || e.srcElement;

              var colors = [ 'red', 'yellow', 'orange', 'blue', 'lime' ];

              var index = colors.indexOf(target.style.backgroundColor);
              if (index != -1) {
                colors.splice(index, 1);
              }

              var nextColor = Math.floor(Math.random() * colors.length);
              target.style.backgroundColor = colors[nextColor];
            };
          }

          canvas.appendChild(block);
        }
      }

    </script>
  </head>
  <body onload="drawBlocks();">
    <div id="canvas"></div>
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