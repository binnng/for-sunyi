(($, host) ->

  hostMap = 
    "m.tv.sohu.com": "#main_player video"

  selector = hostMap[host]

  return no unless selector

  mp4s = JSON.parse $('script').html().replace(/\s|\n/g, "").match(/mp4:(.*?])/)?[1]

  mp4 = item for item in mp4s if mp4s

  style = [
    "display: block"
    "position: fixed"
    "width: 40px"
    "right: 1em"
    "bottom: 2em"
    "height: 40px"
    "text-indent: -999em"
    "padding: 1em 0"
    "font-size: 1.6em"
    "background: url(http://tv.sohu.com/upload/sohuapp/download/skin/download_icon@2x.png)"
    "background-size: 70% 70%"
    "background-color: #ccc"
    "border-radius: 4px"
    "background-repeat: no-repeat"
    "background-position: center"
  ].join ";"

  $('body').append $ "<a href=\"#{mp4}\" style=\"#{style}\"></a>"
  

) Zepto, location.host