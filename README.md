# Shader Selector (Minecraft Resource Pack)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
<img src="images/social.png"
     alt="Social Image"
     style="float: left; margin-right: 10px;" />

## Example and Usage 🔨
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<img src="images/flashlight.png"
     alt="Flashlight"
     style="float: left; margin-right: 10px;" /> <br>
In the "flashlight" example files, right clicking a warped fungus on a stick causes the flashlight to turn on/off. While the flashlight is on "battery" scoreboard is drained, and as it goes down the overlay in the top left corner indicates battery level. This example demonstrates the two channel handling. The battery display can operate independent of the flashlight as it is on the Blue channel and the flashlight is on the Green. <br>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

## How it Works! 🔨
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<img src="images/cube.png"
     alt="Cube"
     style="float: left; margin-right: 10px;" /> <br>
1. 3D Models of cubes of specific colors (R=255,G=X,B=Y,A=255) are used as inputs. <br>
<img src="images/core_flowchart.png"
     alt="Core Flowchart"
     style="float: left; margin-right: 10px;" /> <br>
2. A core shader ensures that the models have the same color on all sides, bypassing default color modulation. <br>
<img src="images/scan_flowchart.png"
     alt="Scanner Flowchart"
     style="float: left; margin-right: 10px;" /> <br>
3. Item Buffer is read and if the color is R=255 and A=255, the post's buffer is updated based on the G and B values. If G or B is 255, it is not written to. <br>
<img src="images/post_flowchart.png"
     alt="Post Flowchart"
     style="float: left; margin-right: 10px;" /> <br>
4. Here is the overall "transparency.json" post program. It persists the Pixel of Interest (POI) buffer, ensuring it only changes when it sees something of interest. Also of note, the "transparency.json" program makes the alpha of items with R=255 zero, making the item invisible to users.<br>
<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->

## Contributors 🧱
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://github.com/CloudWolfYT"><img src="https://avatars.githubusercontent.com/u/64243799?v=4" width="100px;" alt=""/><br /><sub><b>Cloud Wolf</b></sub></a><br /><a href="#" title="Project Creator">🔨</a></td>
    <td align="center"><a href=""><img src="https://avatars.githubusercontent.com/u/0" width="100px;" alt=""/><br /><sub><b>The Der Discohund</b></sub></a><br /><a href="#" title="Theory Contributor">💡</a></td>
    <td align="center"><a href=""><img src="https://avatars.githubusercontent.com/u/20506548?v=4" width="100px;" alt=""/><br /><sub><b>RitikShah</b></sub></a><br /><a href="#" title="Theory Contributor">💡</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
