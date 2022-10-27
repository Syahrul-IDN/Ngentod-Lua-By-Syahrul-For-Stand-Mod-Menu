--Halo warga PHUB Mari Kita Ngewe--

util.require_natives("1660775568")

function request_ptfx_asset(asset)
    local request_time = os.time()
    STREAMING.REQUEST_NAMED_PTFX_ASSET(asset)
    while not STREAMING.HAS_NAMED_PTFX_ASSET_LOADED(asset) do
        if os.time() - request_time >= 10 then
            break
        end
        util.yield()
    end
end

telanjang_root = menu.list(menu.my_root(), "Telanjang", {"telanjang"}, "")


lonte_root = menu.list(menu.my_root(), "Spawn Lonte", {"spawnlonte"}, "")

local custom_hooker_model = 'asd ria bali'
menu.text_input(lonte_root, "Custom model", {"customemodelonte"}, "Spawn Lonte Favorite Anda > custom.", function(on_input)
    custom_hooker_model = on_input
end, 'asd ria bali')

local custom_hooker_options = {"Kagebunshin No Jutsu", "Abigail", "Jackie (Cewek Sexy)", "Cewek Sexy Baywatch", "NPC Cewek Telanjang", "Kaylee", "Assistand Sexy", "Banci Komsen", "Custom"}
menu.list_action(lonte_root, "Request lonte", {"requestlonte"}, "Request Lonte Favorite Anda", custom_hooker_options, function(index)
    local hooker
    local c
    pluto_switch index do
        case 1:
            hooker = PED.CLONE_PED(players.user_ped(), true, true, true)
            break
        case 2:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('ig_abigail'))
            hooker = entities.create_ped(28, util.joaat('ig_abigail'), c, math.random(270))
            break
        case 3:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('ig_jackie'))
            hooker = entities.create_ped(28, util.joaat('ig_jackie'), c, math.random(270))
            break
        case 4:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('s_f_y_baywatch_01'))
            hooker = entities.create_ped(28, util.joaat('s_f_y_baywatch_01'), c, math.random(270))
            break
        case 5:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('a_f_y_topless_01'))
            hooker = entities.create_ped(28, util.joaat('a_f_y_topless_01'), c, math.random(270))
            break
        case 6:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('ig_kaylee'))
            hooker = entities.create_ped(28, util.joaat('ig_kaylee'), c, math.random(270))
            break
        case 7:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('mp_f_execpa_01'))
            hooker = entities.create_ped(28, util.joaat('mp_f_execpa_01'), c, math.random(270))
            break
        case 8:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat('a_m_m_tranvest_01'))
            hooker = entities.create_ped(28, util.joaat('a_m_m_tranvest_01'), c, math.random(270))
            break    
        case 9:
            c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
            request_model_load(util.joaat(custom_hooker_model))
            hooker = entities.create_ped(28, util.joaat(custom_hooker_model), c, math.random(270))
            break
    end
    local c = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), -5.0, 0.0, 0.0)
    ENTITY.SET_ENTITY_COORDS(hooker, c.x, c.y, c.z)
    TASK.TASK_START_SCENARIO_IN_PLACE(hooker, "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS", 0, false)
    util.toast("Lonte Anda Sudah Tiba, Jangan lupa pake kondom agar terhindar HIV, Corona.")
end)


anims_root = menu.list(menu.my_root(), "Sex", {"Sex"}, "")


menu.action(menu.my_root(), "Ngewe Di Atas Monas | TP Pake Motor", {"monasex"}, "", function ()
    menu.trigger_commands("tpmonasex")
end)

menu.action(menu.my_root(), "Spawn Mobil Khusus Ngewe Di Mobil", {"mobilewe"}, "", function ()
    menu.trigger_commands("spawn windsor2")
end)

menu.action(menu.my_root(), "Ngecrot", {"Ngecrot"}, "", function ()
    local ptfx_asset = "scr_oddjobtraffickingair"
    local effect_name = "scr_ojdg4_water_exp"
    request_ptfx_asset(ptfx_asset)
    GRAPHICS.USE_PARTICLE_FX_ASSET(ptfx_asset)
    GRAPHICS.START_NETWORKED_PARTICLE_FX_NON_LOOPED_ON_ENTITY(effect_name, players.user_ped(), 0.0, 0.0, -0.3, 90.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0)
    for i=1, 10 do 
        local coords = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(players.user_ped(), 0.0, i, 0.0)
        FIRE.ADD_EXPLOSION(coords['x'], coords['y'], coords['z'], 67, 0.0, false, false, 0.0, true)
    end
end)

menu.action(anims_root, "Stop Sex", {"stopsex"}, "", function(on_click)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
end)

anims_vroot = menu.list(anims_root, "Ngewe Di Mobil", {"ngewedimobil"}, "")
anims_vroot_receiver = menu.list(anims_vroot, "Posisi Sex Cowok", {"posisisexcowokcar"}, "")
anims_vroot_giver = menu.list(anims_vroot, "Posisi Sex Cewek", {"posisisexcewekcar"}, "")

anims_nroot = menu.list(anims_root, "Ngewe Di mana aja", {"ngewedimanaaja"}, "")
anims_nroot_self = menu.list(anims_nroot, "Coli", {"animcoli"}, "")
anims_nroot_receiver = menu.list(anims_nroot, "Posisi Sex Cewek", {"posisisexcewek"}, "")
anims_nroot_giver = menu.list(anims_nroot, "Posisi Sex Cowok", {"posisisexcowok"}, "")

function play_anim(dict, name, duration)
    ped = PLAYER.PLAYER_PED_ID()
    while not STREAMING.HAS_ANIM_DICT_LOADED(dict) do
        STREAMING.REQUEST_ANIM_DICT(dict)
        util.yield()
    end
    TASK.TASK_PLAY_ANIM(ped, dict, name, 1.0, 1.0, duration, 3, 0.5, false, false, false)
    
end

function request_model_load(hash)
    request_time = os.time()
    if not STREAMING.IS_MODEL_VALID(hash) then
        return
    end
    STREAMING.REQUEST_MODEL(hash)
    while not STREAMING.HAS_MODEL_LOADED(hash) do
        if os.time() - request_time >= 10 then
            break
        end
        util.yield()
    end
end

function attachto(offx, offy, offz, pid, angx, angy, angz, hash, bone, isnpc, isveh)
    local ped = PLAYER.GET_PLAYER_PED_SCRIPT_INDEX(pid)
    local bone = PED.GET_PED_BONE_INDEX(ped, bone)
    local coords = ENTITY.GET_ENTITY_COORDS(ped, true)
    coords.x = coords['x']
    coords.y = coords['y']
    coords.z = coords['z']
    if isnpc then
        obj = entities.create_ped(1, hash, coords, 90.0)
    elseif isveh then
        obj = entities.create_vehicle(hash, coords, 90.0)
    else
        obj = OBJECT.CREATE_OBJECT_NO_OFFSET(hash, coords['x'], coords['y'], coords['z'], true, false, false)
    end
    ENTITY.SET_ENTITY_INVINCIBLE(obj, true)
    ENTITY.ATTACH_ENTITY_TO_ENTITY(obj, ped, bone, offx, offy, offz, angx, angy, angz, false, false, true, false, 0, true)
    ENTITY.SET_ENTITY_COMPLETELY_DISABLE_COLLISION(obj, false, true)
end


menu.action(telanjang_root, "Buka Kontol", {"bukakontol"}, "", function(on_click)
    request_model_load(-422877666)
    attachto(0.15, 0.15, 0.0, players.user(), -90.0, 0.0, 0.0, -422877666, 11816, false, false)
end)
menu.action(telanjang_root, "Buka Tetek", {"bukatetek"}, "", function(on_click)
    menu.trigger_commands("toplessfemale")
end)



menu.action(anims_vroot_receiver, "Car blowjob", {"carbj"}, "", function(on_click)
    play_anim("mini@prostitutes@sexlow_veh", "low_car_bj_loop_player", -1)
end)

menu.action(anims_vroot_giver, "Car blowjob", {"carbj2"}, "", function(on_click)
    play_anim("mini@prostitutes@sexlow_veh", "low_car_bj_loop_female", -1)
end)

menu.action(anims_vroot_receiver, "Car sex", {"carsex"}, "", function(on_click)
    play_anim("mini@prostitutes@sexlow_veh", "low_car_sex_loop_player", -1)
end)

menu.action(anims_vroot_giver, "Car sex", {"carsex2"}, "", function(on_click)
    play_anim("mini@prostitutes@sexlow_veh", "low_car_sex_loop_female", -1)
end)

menu.action(anims_nroot_self, "Coli", {"coli"}, "", function(on_click)
    play_anim("switch@trevor@jerking_off", "trev_jerking_off_loop", -1)
end)

menu.action(anims_nroot_self, "Stop Coli", {"stopcoli"}, "", function(on_click)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
end)

menu.action(anims_nroot_giver, "Doggystyle Cowok", {"cowokdoggy"}, "", function(on_click)
    play_anim("rcmpaparazzo_2", "shag_loop_a", -1)
end)

menu.action(anims_nroot_giver, "Keenakan Di Blowjob", {"bjstyle"}, "", function(on_click)
    play_anim("misscarsteal2pimpsex", "shagloop_pimp", -1)
end)

menu.action(anims_nroot_giver, "Peluk Sange", {"peluksange"}, "", function(on_click)
    play_anim("mp_ped_interaction", "kisses_guy_b", -1)
end)

menu.action(anims_nroot_giver, "Stop Sex", {"stopsex"}, "", function(on_click)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
end)

menu.action(anims_nroot_receiver, "Doggystyle Cewek", {"cewekdoggy"}, "", function(on_click)
    play_anim("rcmpaparazzo_2", "shag_loop_poppy", -1)
end)

menu.action(anims_nroot_receiver, "Ngangkang", {"cewekngangkang"}, "", function(on_click)
    play_anim("misscarsteal2pimpsex", "shagloop_hooker", -1)
end)

menu.action(anims_nroot_receiver, "Peluk Sange", {"peluksange"}, "", function(on_click)
    play_anim("mp_ped_interaction", "kisses_guy_b", -1)
end)

menu.action(anims_nroot_receiver, "Stop Sex", {"stopsex"}, "", function(on_click)
    TASK.CLEAR_PED_TASKS_IMMEDIATELY(PLAYER.PLAYER_PED_ID())
end)



while true do
    util.yield()
end