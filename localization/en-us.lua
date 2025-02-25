return {
    descriptions = {
        Joker = {
            j_business = {
                name = "Business Card",
                text = {
                    "Played {C:attention}face{} cards have",
                    "a {C:green}#1# in #2#{} chance to",
                    "give {C:money}$#3#{} when scored",
                }
            },
            j_8_ball = {
                name = "8 Ball",
                text = {
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}Eight{} to create {C:attention}#3#",
                    "{C:tarot}Tarot{} card#4# when scored",
                    "{C:inactive}(Must have room)",
                }
            },
            j_raised_fist = {
                name = "Raised Fist",
                text = {
                    "Adds {C:attention}#1# time#2#{} the rank",
                    "of {C:attention}lowest{} ranked card",
                    "held in hand to Mult",
                },
            },
            j_chaos = {
                name = "Chaos the Clown",
                text = {
                    "{C:attention}#1#{} free {C:green}Reroll#2#{}",
                    "per shop",
                }
            },
            j_four_fingers = {
                name = "Four Fingers",
                text = {
                    "All {C:attention}Flushes{} and",
                    "{C:attention}Straights{} can be",
                    "made with {C:attention}four{} cards",
                }
            },
            j_stencil = {
                name = "Joker Stencil",
                text = {
                    "{X:red,C:white} X#2# {} Mult for each",
                    "empty {C:attention}Joker{} slot",
                    "{s:0.8}Joker Stencil included",
                    "{C:inactive}(Currently {X:red,C:white} X#1# {C:inactive})",
                }
            },
            j_hack = {
                name = "Hack",
                text = {
                    "Retrigger",
                    "each played",
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}4{}, or {C:attention}5{}",
                    "{C:attention}#1# time#2#",
                },
            },
            j_mime = {
                name = "Mime",
                text = {
                    "Retrigger all",
                    "card {C:attention}held in",
                    "{C:attention}hand{} abilities",
                    "{C:attention}#1#{} time#2#",
                },
            },
            j_ceremonial = {
                name = "Ceremonial Dagger",
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "destroy {C:attention}#2#{} Joker#4# to the right",
                    "and permanently add {C:attention}#3# times",
                    "its sell value to this {C:red}Mult",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)",
                },
            },
            j_marble = {
                name = "Marble Joker",
                text = {
                    "Adds {C:attention}#1# Stone{} card#2#",
                    "to deck when",
                    "{C:attention}Blind{} is selected",
                },
            },
            j_dusk = {
                name = "Dusk",
                text = {
                    "Retrigger all played",
                    "cards {C:attention}#1#{} time#2# in",
                    "{C:attention}final hand{} of round",
                },
            },
            j_perkeo = {
                name = "Perkeo",
                text = {
                    "Creates a {C:dark_edition}Negative{} copy of",
                    "{C:attention}#1#{} random {C:attention}consumable{}",
                    "card in your possession",
                    "at the end of the {C:attention}shop",
                },
                unlock={
                    "{E:1,s:1.3}?????",
                },
            },
            j_supernova={
                name = "Supernova",
                text = {
                    "{C:red}+#1#{} Mult per",
                    "number of times",
                    "{C:attention}poker hand{} has been",
                    "played this run",
                    "{C:inactive}(#2#{C:red}#3#{C:inactive}#4#)"
                },
            },
            j_space={
                name="Space Joker",
                text={
                    "{C:green}#1# in #2#{} chance",
                    "to upgrade played",
                    "{C:attention}poker hand{} by {C:attention}#3#{} level#4#",
                },
            },
            j_dna={
                name="DNA",
                text={
                    "If {C:attention}first hand{} of round",
                    "has only {C:attention}one{} card, add {C:attention}#1#",
                    "permanent cop#2# to deck",
                    "and draw #3# to {C:attention}hand",
                },
            },
            j_sixth_sense={
                name="Sixth Sense",
                text={
                    "If {C:attention}first hand{} of round is",
                    "a single {C:attention}Six{}, destroy it and",
                    "create {C:attention}#1#{} {C:spectral}Spectral{} card#2#",
                    "{C:inactive}(Must have room)",
                },
            },
            j_superposition={
                name="Superposition",
                text={
                    "Create {C:attention}#1#{} {C:tarot}Tarot{} card#2# if",
                    "poker hand contains an",
                    "{C:attention}Ace{} and a {C:attention}Straight{}",
                    "{C:inactive}(Must have room)",
                },
            },
            j_madness={
                name="Madness",
                text={
                    "When {C:attention}Small Blind{} or {C:attention}Big Blind{}",
                    "is selected, {C:red}destroy {C:attention}#3#{} random",
                    "Joker#4# and gain {X:mult,C:white} X#1# {} Mult each",
                    "{s:0.8}Once if none destroyed",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)",
                },
            },
            j_square={
                name="Square Joker",
                text={
                    "This Joker gains {C:chips}+#2#{} Chips",
                    "if played hand has",
                    "exactly {C:attention}four{} cards",
                    "{C:inactive}(Currently {C:chips}#1#{C:inactive} Chips)",
                },
            },
            j_seance={
                name="Séance",
                text={
                    "If {C:attention}poker hand{} is a",
                    "{C:attention}#1#{}, create {C:attention}#2#",
                    "random {C:spectral}Spectral{} card#3#",
                    "{C:inactive}(Must have room)",
                },
            },
            j_shortcut={
                name="Shortcut",
                text={
                    "The {C:attention}rank{} gap for making",
                    "{C:attention}Straights{} increases by {C:attention}#1#",
                    "{C:inactive}(ex: {C:attention}#2# 8 #3#{C:inactive})",
                },
            },
        }
    }
}