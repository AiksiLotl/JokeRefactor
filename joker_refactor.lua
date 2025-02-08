--- STEAMODDED HEADER
--- MOD_NAME: JokeRefactor
--- MOD_ID: joker_refactor
--- MOD_AUTHOR: [Aiksi]
--- MOD_DESCRIPTION: Base game jokers refactor. All the code taken from the game belongs to LocalThunk
--- BADGE_COLOUR: 009dff
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-1326a]
--- VERSION: 0.5
--- PRIORITY: 20000

----------------------------------------------
------------MOD CODE -------------------------

-- TEMP, none of the stuff below is important, and all will be moved to a lovely patch when i get to it

--[[ local joker_list = {
    --- Common
    --j_riff_raff = "Riff-raff",
    --j_credit_card = "Credit Card",
    --j_8_ball = "8 Ball",
    --j_raised_fist = "Raised Fist",
    --j_chaos = "Chaos the Clown",
    j_gros_michel = "Gros Michel",
    --j_business = "Business Card",
    --- Uncommon
    j_stencil = "Joker Stencil",
    j_hack = "Hack",
    -- j_four_fingers = "Four Fingers",
    j_mime = "Mime",
    j_ceremonial = "Ceremonial Dagger",
    j_marble = "Marble Joker",
    j_dusk = "Dusk",
    --- Rare
    --- Legendary
    j_perkeo = "Perkeo",
}

local function_list = {} ]]

-- Load all jokers
--[[ for k, v in pairs(joker_list) do
    function_list[k] = SMODS.load_file("content/jokers/" .. k .. ".lua")()
end ]]

-- function to multiply all listed joker values (moved to a Lovely patch)
--[[ function Card:multiply_joker_values(multiplier, deep_table)
    self:calculate_joker({before_values_updated = true})
    for k, v in pairs(deep_table or self.ability) do
        if deep_table or self.config.center.config[k] then
            if type(v) == "number" then
                if not deep_table then
                    self.ability[k] = self.ability[k] * multiplier
                else
                    deep_table[k] = deep_table[k] * multiplier
                end
            elseif type(v) == "table" then
                self:multiply_joker_values(multiplier, v)
            end
        end
    end
    self:calculate_joker({after_values_updated = true})
end ]]

-- X mult fixes
G.P_CENTERS["j_constellation"].config.x_mult = 1.0
G.P_CENTERS["j_constellation"].config.Xmult = nil
G.P_CENTERS["j_madness"].config.x_mult = 1.0
G.P_CENTERS["j_vampire"].config.x_mult = 1.0
G.P_CENTERS["j_vampire"].config.Xmult = nil
G.P_CENTERS["j_hologram"].config.x_mult = 1.0
G.P_CENTERS["j_hologram"].config.Xmult = nil
G.P_CENTERS["j_obelisk"].config.x_mult = 1.0
G.P_CENTERS["j_obelisk"].config.Xmult = nil
G.P_CENTERS["j_lucky_cat"].config.x_mult = 1.0
G.P_CENTERS["j_lucky_cat"].config.Xmult = nil
G.P_CENTERS["j_ramen"].config.x_mult = 2.0
G.P_CENTERS["j_campfire"].config.x_mult = 1.0
G.P_CENTERS["j_glass"].config.x_mult = 1.0
G.P_CENTERS["j_glass"].config.Xmult = nil
G.P_CENTERS["j_caino"].config.caino_xmult = 1.0
G.P_CENTERS["j_yorick"].config.x_mult = 1.0
G.P_CENTERS["j_duo"].config.x_mult = 2.0
G.P_CENTERS["j_duo"].config.Xmult = nil
G.P_CENTERS["j_trio"].config.x_mult = 3.0
G.P_CENTERS["j_trio"].config.Xmult = nil
G.P_CENTERS["j_family"].config.x_mult = 4.0
G.P_CENTERS["j_family"].config.Xmult = nil
G.P_CENTERS["j_order"].config.x_mult = 3.0
G.P_CENTERS["j_order"].config.Xmult = nil
G.P_CENTERS["j_tribe"].config.x_mult = 2.0
G.P_CENTERS["j_tribe"].config.Xmult = nil


-- Jokers to fix:
-- x Joker Stencil 
-- X Four Fingers
-- X Mime
-- X Credit Card
-- X Ceremonial Dagger
-- X Marble Joker
-- X 8 Ball
-- X Dusk
-- X Raised Fist
-- X Chaos The Clown
-- X Hack
-- X Gros Michel
-- X Business Card
-- Supernova
-- Space Joker
-- DNA
-- Sixth Sense ???
-- Faceless Joker ???
-- Superposition
-- Cavendish
-- Madness
-- Square Joker ???
-- Seance
-- Shortcut
-- Vagabond
-- Turtle Bean
-- Reserved Parking
-- To The Moon
-- Hallucination
-- Juggler (look at add_to_deck self.ability.h_size)
-- Drunkard
-- Diet Cola
-- Trading Card ???
-- Mr. Bones
-- Sock And Buskin
-- Troubadour
-- Certificate
-- Bloodstone
-- Merry Andy
-- Stuntman
-- Cartomancer
-- Astronomer ???
-- Burnt Joker ???
-- Bootstraps
-- Bull
-- Yorick...?


-- Updated Card:calculate_joker
--[[ local calculate_joker_basegame = Card.calculate_joker
function Card:calculate_joker(context)
    -- Check if the reworked jokers have a corresponding function and call it
    for k, v in pairs(joker_list) do
        if self.ability.name == v then
            if function_list[k] and function_list[k].calculate_joker then
                return function_list[k].calculate_joker(self, context)
            end
        end
    end
    -- Call the function on the rest of the jokers
    return calculate_joker_basegame(self, context)
end ]]

-- Updated Card:update()
--[[ local update_basegame = Card.update
function Card:update(dt)
    -- Call the function on all jokers
    update_basegame(self, dt)
    
    -- Check if the reworked jokers have a corresponding function and call it
    for k, v in pairs(joker_list) do
        if self.ability.name == v then
            if function_list[k] and function_list[k].update then
                function_list[k].update(self, dt)
                
            end
        end
    end
end ]]

--[[ local add_to_deck_basegame = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    -- Call the function on all jokers
    add_to_deck_basegame(self, from_debuff)
    -- Check if the reworked jokers have a corresponding function and call it
    for k, v in pairs(joker_list) do
        if self.ability.name == v then
            if function_list[k] and function_list[k].add_to_deck then
                function_list[k].add_to_deck(self, from_debuff)
            end
        end
    end
end ]]

--[[ local remove_from_deck_basegame = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
    -- Call the function on all jokers
    remove_from_deck_basegame(self, from_debuff)
    -- Check if the reworked jokers have a corresponding function and call it
    for k, v in pairs(joker_list) do
        if self.ability.name == v then
            if function_list[k] and function_list[k].remove_from_deck then
                function_list[k].remove_from_deck(self, from_debuff)
            end
        end
    end
end ]]


-- en-us localization updates
--[[ G.localization.descriptions.Joker.j_four_fingers.text = {
    "All {C:attention}Flushes{} and",
    "{C:attention}Straights{} can be",
    "made with {C:attention}four{} cards",
}
init_localization() ]]

----------------------------------------------
------------MOD CODE END----------------------