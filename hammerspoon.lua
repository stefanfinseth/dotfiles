require("hs.ipc")

stackline = require "stackline"
stackline:init()

stackline.config:set('appearance.offset.y', 75)
stackline.config:toggle('features.clickToFocus')

-- Press Cmd+Q twice to quit
local quitModal = hs.hotkey.modal.new('cmd','q')

function quitModal:entered()
  hs.alert.show('Press ⌘+Q again to quit', 1)
  hs.timer.doAfter(1, function() quitModal:exit() end)
end

local function doQuit()
    local res = hs.application.frontmostApplication():selectMenuItem("^Quit.*$")
    hs.alert.closeAll()
    quitModal:exit()
end

quitModal:bind('cmd', 'q', doQuit)

quitModal:bind('', 'escape', function() 
  hs.alert.closeAll()
  quitModal:exit()
end)

-- Press alt + shift + space to toggle capslock
function toggleCaps()
  if hs.hid.capslock.get() then
    hs.hid.capslock.set(false)
    hs.alert.closeAll(0)
    hs.alert.show('↓ caps off',1)
  else
    hs.hid.capslock.set(true)
    hs.alert.closeAll(0)
    hs.alert.show('↑ CAPS ON',1)
  end
  return
end

hs.hotkey.bind({'alt', 'shift'}, 'space', function()
    toggleCaps()
end)
