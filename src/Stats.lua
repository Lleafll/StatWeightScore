local SWS_ADDON_NAME, StatWeightScore = ...;
local StatsModule = StatWeightScore:NewModule(SWS_ADDON_NAME.."Stats");

local L;
local Utils;

local StatRepository = {};
local StatAliasMap = {};

local function AddAlias(alias, key)
    StatAliasMap[alias] = key;
    StatAliasMap[key] = alias;
end

local function AddStat(alias, key, options)
    options = options or {};
    AddAlias(alias, key);
    StatRepository[key] = {
        Key = key,
        Alias = alias,
        DisplayName = options.DisplayName or getglobal(key),
        Gem = not not options.Gem,
    };
end

function StatsModule:OnInitialize()
    L = StatWeightScore.L;
    Utils = StatWeightScore.Utils;

    AddStat("dps", "ITEM_MOD_DAMAGE_PER_SECOND_SHORT");
    AddStat("wohdps", "OFFHAND_DPS", { DisplayName = L["Offhand_DPS"]});

    AddStat("agi", "ITEM_MOD_AGILITY_SHORT");
    AddStat("int", "ITEM_MOD_INTELLECT_SHORT");
    AddStat("sta", "ITEM_MOD_STAMINA_SHORT", { Gem = true });
    AddStat("spi", "ITEM_MOD_SPIRIT_SHORT");
    AddStat("str", "ITEM_MOD_STRENGTH_SHORT");
    AddStat("mastery", "ITEM_MOD_MASTERY_RATING_SHORT", { Gem = true });

    AddStat("armor", "RESISTANCE0_NAME");
    AddStat("bonusarmor", "BONUS_ARMOR");

    AddStat("ap", "ITEM_MOD_ATTACK_POWER_SHORT");
    AddStat("crit", "ITEM_MOD_CRIT_RATING_SHORT", { Gem = true });
    AddStat("haste", "ITEM_MOD_HASTE_RATING_SHORT", { Gem = true });
    AddStat("sp", "ITEM_MOD_SPELL_POWER_SHORT");
    AddStat("multistrike", "ITEM_MOD_CR_MULTISTRIKE_SHORT", { Gem = true });
    AddStat("versatility", "ITEM_MOD_VERSATILITY", { Gem = true });

    AddAlias("socket", "EMPTY_SOCKET_PRISMATIC");

    local order = 10;
    for _, statKey in ipairs(Utils.SortedKeys(StatRepository, function (key1, key2)
        return StatRepository[key1].DisplayName < StatRepository[key2].DisplayName;
    end)) do
        StatRepository[statKey].Order = order;
        order = order + 10;
    end
end

function StatsModule:GetStats()
    return StatRepository;
end

function StatsModule:GetStatInfo(key)
    if(StatRepository[key]) then
        return StatRepository[key];
    elseif(StatAliasMap[key]) then
        local alias = StatAliasMap[key];
        return StatRepository[alias];
    end

    return nil;
end

function StatsModule:AliasToKey(alias)
    return StatAliasMap[alias];
end

function StatsModule:KeyToAlias(key)
    return StatAliasMap[key];
end

function StatsModule:GetStatInfoByDisplayName(displayName)
    displayName = displayName:lower();

    for _, stat in pairs(StatRepository) do
        if(stat.DisplayName:lower() == displayName) then
            return stat;
        end
    end
end

function StatsModule:GetBestGemStat(spec)
    local bestStat;
    local bestStatWeight = 0;

    if(not spec.GemStat or spec.GemStat == "best") then
        for stat, weight in pairs(spec.Weights) do
            local statInfo = self:GetStatInfo(stat);
            if(statInfo.Gem) then
                if(weight > bestStatWeight) then
                    bestStatWeight = weight;
                    bestStat = statInfo;
                end
            end
        end
    else
        bestStat = self:GetStatInfo(spec.GemStat);
        bestStatWeight = spec.Weights[spec.GemStat];
    end

    return {
        Stat = bestStat;
        Weight = bestStatWeight;
    };
end