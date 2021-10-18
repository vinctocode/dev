--banterbot
function on_force_banter_line(gameGadget, userGadget, actors, banterText)
    
    name = userGadget.UniqueName
    Log(name)
    
    if name == "NpcBanter1" then
        banterTextVariable = name .. "BanterText"
        banterIndexVariable = name .. "BanterIndex"

        banterIndex = GetIntVar(banterIndexVariable)
        if banterIndex == 0 then
            SetStrVar(banterTextVariable, "Hello Silverquick!")
        elseif banterIndex == 1 then
            SetStrVar(banterTextVariable, "Hello Vincto!")   
        elseif banterIndex == 2 then
            SetStrVar(banterTextVariable, "Hello Vel!")
        end
        if banterIndex < 2 then
            SetIntVar(banterIndexVariable, banterIndex + 1)
        else
            SetIntVar(banterIndexVariable, 0)
        end
    end
    return true
end

---
function on_activate(userGadget, actors)

    if userGadget.UniqueName == "SomeGadgetName" then

        return 1

    elseif userGadget.UniqueName = "SomeOtherGadgetName" then

        return 1
    end
end
--
function on_activate(userGadget, actors)

  gadgetName = userGadget.UniqueName
  actor = actors[0]
  
  Message(gadgetName, "Hello " .. actor.Name() .. ". I can see you are a " .. actor.Class() .. ". We really enjoy to see " .. actor.Race() .. " around here.")
  return true
end

function on_activate(usergadget, actors)

  Message("DEBUG", "On Activate " .. usergadget)
  return true
end
--
                foreach (var userRoom in userLocation.UserRooms)
                {
                    foreach (var userGadget in userRoom.UserGadgets)
                    {
                        if (userGadget.UniqueName == "LuaScripting1")
                        {
                            script = userGadget.ParameterValues.Find(x => x.GadgetParameterDescriptionName == "Script").StringValue.Trim();
                            goto Break;
                        }
                    }
                }
                Break:
--1 rest campfire

function on_long_rest(gameGadget, userGadget, actors)

    name = userGadget.UniqueName
    globalVarName = name .. "RestCount"
    restCount = GetIntVar(globalVarName) + 1
    SetIntVar(globalVarName, restCount)

    if restCount > 1 then       
        Message("DEBUG", "on_long_rest: MAX 1 rest achieved. No more rests avail. " .. name)
        return false
    end

    return true
end

function on_activate(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_activate " .. name)
    return true
end

function on_deactivate(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_deactivate " .. name)
    return true
end

function on_enable(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_enable " .. name)
    return true
end

function on_disable(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_disable " .. name)
    return true
end

function on_inventory_loot(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_inventory_loot " .. name)
    return true
end

function on_spawn_encounter(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_spawn_encounter " .. name)
    return true
end

function on_long_rest(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_long_rest " .. name)
    return true
end

function on_quit_location(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_quit_location " .. name)
    return false
end

function on_force_banter_line(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_force_banter_line " .. name)
    return false
end

function on_display_lore(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_display_lore " .. name)
    return false
end

function on_environment_effect(worldGadget, actors)

    name = ""

    Message("DEBUG", "on_environment_effect " .. name)
    return false
end