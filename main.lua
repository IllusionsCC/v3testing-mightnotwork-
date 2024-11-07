library:notify({text = "funneh v3 test ui for solarara rrhahhhhh", time = 5})




local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/IllusionsCC/v3ui-mightuse-/refs/heads/main/LIBRARY'))()

local window = library:new({name = "ILLUSIONS", sub = " .CC", offset = 0, size = Vector2.new(600, 650)})
local pages = {
    ["main"] = window:page({name = "Combat", default = true})
    ["visuals"] = window:page({name = "Visuals", default = false})
    ["misc"] = window:page({name = "Misc", default = false})
    ["settings"] = window:page({name = "Settings", default = false})


}

local ssection = pages.settings:section({name = "Ui Settings", side = "right", size = 250})

ssection:keybind({
    name = "Menu Keybind",
     default = Enum.KeyCode.RightShift,
      mode = "Toggle",
       blacklist = {},
        flag = "keybind_test",
         callback = function(state)
    library:set_open(not state)
end})


ssection:colorpicker({
    name = "Menu Accent",
     default = Color3.fromRGB(187, 131, 255),
      tooltip = true, flag = "colorpicker_test",
       callback = function(val)
    library:change_theme_color("Accent", val)
end})


local section = pages.main:section({name = "Gun Mods", side = "right", size = 250})


local multisection = pages.main:multisection({name = "Combat", side = "Left"})


multisection:section({name = "Legit", default = true}):toggle({name = "lol", risky = true, state = false, flag = "second_toggle", callback = function() end})   
multisection:section({name = "Rage", default = false})

section:toggle({name = "Test toggle", risky = false, state = false, flag = "test_toggle", callback = function() end})
section:divider({name = "Divider"})
section:slider({name = "Slider", min = 1, max = 100, suffix = "%", float = 1, default = 50, flag = "testSlider"})
section:dropdown({name = "Dropdown", options = {"Option 1", "Option 2", "Option 3"}, default = "Option 1", max = 1, scrollable = true, scrollingmax = 5, flag = "dropdown_test"})
section:multibox({name = "Multibox", options = {"Option 1", "Option 2", "Option 3"}, default = "Option 1", max = 2, scrollable = true, scrollingmax = 5, flag = "multibox_test"})
section:button({name = "Button", confirm = false, callback = function() end})


section:textbox({placeholder = "Placeholder", default = "", middle = true, flag = "textbox_test"})



library:set_open(true)
