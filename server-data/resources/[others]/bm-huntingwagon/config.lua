BMConfig = {}

BMConfig.Framework          = 'vorp' -- 'rsg' = RSG, 'vorp' = VORP, 'redemrp' = RedEM-RP

BMConfig.Debug              = false

-- BMConfig.WagonContentsTitle = 'Hunting Wagon Contents'
BMConfig.PromptGroupName    = 'Hunting Wagon'
BMConfig.StowPromptName     = 'Stow'
BMConfig.FetchPromptName    = 'Fetch'
BMConfig.StowPromptKey      = 0xE30CD707 -- R
BMConfig.FetchPromptKey     = 0xE30CD707 -- R

BMConfig.MaxAnimalStowed    = 20

BMConfig.SupportedPelts =
{
    -- Bull Pelt
    {name = 'Poor Bull Pelt',               hash = 9293261,         model = 'p_cs_pelt_xlarge'}, -- Poor
    {name = 'Good Bull Pelt',               hash = -336086818,      model = 'p_cs_pelt_xlarge'}, -- Good
    {name = 'Perfect Bull Pelt',            hash = -53270317,       model = 'p_cs_pelt_xlarge'}, -- Perfect

    -- Ox Pelt
    {name = 'Poor Ox Pelt',                 hash = 462348928,       model = 'p_cs_pelt_xlarge'}, -- Poor
    {name = 'Good Ox Pelt',                 hash = 1208128650,      model = 'p_cs_pelt_xlarge'}, -- Good
    {name = 'Perfect Ox Pelt',              hash = 659601266,       model = 'p_cs_pelt_xlarge'}, -- Perfect

    -- Cow Pelt
    {name = 'Poor Cow Pelt',                hash = 334093551,       model = 'p_cs_cowpelt2_xlarge'}, -- Poor
    {name = 'Good Cow Pelt',                hash = 1150594075,      model = 'p_cs_cowpelt2_xlarge'}, -- Good
    {name = 'Perfect Cow Pelt',             hash = -845037222,      model = 'p_cs_cowpelt2_xlarge'}, -- Perfect

    -- Elk  
    {name = 'Poor Elk Pelt',                hash = 2053771712,      model = 'p_cs_pelt_xlarge_elk'}, -- Poor
    {name = 'Good Elk Pelt',                hash = 1181652728,      model = 'p_cs_pelt_xlarge_elk'}, -- Good
    {name = 'Perfect Elk Pelt',             hash = -1332163079,     model = 'p_cs_pelt_xlarge_elk'}, -- Perfect
    {name = 'Legendary Elk Pelt',           hash = 229379699,       model = 'p_cs_pelt_elklegendary'}, -- Legendary

    -- Alligator
    {name = 'Poor Alligator Pelt',          hash = -1243878166,     model = 'p_cs_pelt_ws_alligator'}, -- Poor
    {name = 'Perfect Alligator Pelt',       hash = -1475338121,     model = 'p_cs_pelt_ws_alligator'}, -- Perfect
    {name = 'Legendary Alligator Pelt',     hash = -444893329,      model = 'p_cs_bullgator_xlarge_roll'}, -- Legendary

    -- Bear
    {name = 'Poor Bear Pelt',               hash = 957520252,       model = 'p_cs_pelt_xlarge_bear'}, -- Poor
    {name = 'Good Bear Pelt',               hash = 143941906,       model = 'p_cs_pelt_xlarge_bear'}, -- Good
    {name = 'Perfect Bear Pelt',            hash = 1292673537,      model = 'p_cs_pelt_xlarge_bear'}, -- Perfect
    {name = 'Legendary Bear Pelt',          hash = -514494287,      model = 'p_cs_pelt_xlarge_bearlegendary'}, -- Legendary

    -- Black Bear
    {name = 'Poor Black Bear Pelt',         hash = 1083865179,      model = 'p_cs_blackbearskin_medlarge'}, -- Poor
    {name = 'Good Black Bear Pelt',         hash = 1490032862,      model = 'p_cs_blackbearskin_medlarge'}, -- Good
    {name = 'Perfect Black Bear Pelt',      hash = 663376218,       model = 'p_cs_blackbearskin_medlarge'}, -- Perfect

    -- Bison/Buffalo
    {name = 'Poor Bison Pelt',              hash = -1730060063,     model = 'p_cs_pelt_xlarge_buffalo'}, -- Poor
    {name = 'Good Bison Pelt',              hash = -591117838,      model = 'p_cs_pelt_xlarge_buffalo'}, -- Good
    {name = 'Perfect Bison Pelt',           hash = -237756948,      model = 'p_cs_pelt_xlarge_buffalo'}, -- Perfect
    {name = 'Legendary White Bison Pelt',   hash = 2022985736,      model = 'p_cs_pelt_xlarge_wbuffalo'}, -- Legendary White
    {name = 'Legendary Takanta Bison Pelt', hash = -987731097,      model = 'p_cs_pelt_xlarge_tbuffalo'}, -- Legendary Takanta

    -- Moose
    {name = 'Poor Bear Pelt',               hash = 1868576868,      model = 'p_bespokemoosexlpelt01x'}, -- Poor
    {name = 'Good Bear Pelt',               hash = 1636891382,      model = 'p_bespokemoosexlpelt01x'}, -- Good
    {name = 'Perfect Bear Pelt',            hash = -217731719,      model = 'p_bespokemoosexlpelt01x'}, -- Perfect
    {name = 'Legendary Bear Pelt',          hash = -687487191,      model = 'p_lgrymoosexlpelt01x'}, -- Legendary
}