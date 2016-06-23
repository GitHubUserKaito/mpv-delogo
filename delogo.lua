-- default keybinding: n
-- add the following to your input.conf to change the default keybinding:
-- keyname script_binding auto_load_delogo
local utils = require 'mp.utils'
function load_delogo_fn()
    subl = "~/.config/mpv/scripts/delogo"
    mp.osd_message("delogo")
    t = {}
    t.args = {subl,mp.get_property("path")}
    res = utils.subprocess(t)
    mp.command(
        string.format(
            'vf add @%s:lavfi=[delogo=x=250:y=558:w=165:h=95]',
            cropdetect_label
   ))
end

mp.add_key_binding("n", "auto_load_delogo", load_delogo_fn)
