local L = LibStub("AceLocale-3.0"):NewLocale("StatWeightScore", "koKR");
if not L then return end

L["Culture"] = "koKR";

L["ThousandSeparator"] = ",";
L["DecimalSeparator"] = "%.";

L["StatPaneCategoryTitle"] = "Stat Weight Score";

L["WelcomeMessage"] = "불러옴. v%s by Necroskillz";
L["GemsDisplayFormat"] = "%s 보석";
L["Offhand_DPS"] = "보조장비 DPS";
L["Offhand_Score"] = "보조장비 점수";
L["TooltipMessage_StatScore"] = "능력치 점수";
L["TooltipMessage_WithGem"] = "보석 장착";
L["TooltipMessage_WithProcAverage"] = "발동 시 평균";
L["TooltipMessage_WithUseAverage"] = "사용 시 평균";
L["Options_Open"] = "설정 열기";
L["Options_Weights_Open"] = "능력치 중요도 설정 열기";
L["Options_Weights_Section"] = "능력치 중요도";
L["Options_StatWeightsSetup"] = "능력치 중요도 구성";
L["Options_Specialization_Label"] = "전문화";
L["Options_Specialization_Tooltip"] = "능력치 중요도 세트의 라벨";
L["Options_CreateNewSpec"] = "새 전문화 만들기";
L["Options_DuplicateSpec"] = "전문화 복사하기";
L["Options_DeleteSpec"] = "전문화 삭제";
L["Options_DeleteSpec_Confirm"] = "'%s' 전문화를 정말 삭제할까요?";
L["Options_Enabled"] = "사용";
L["Options_EnabledSpec_Tooltip"] = "특정 전문화에 대한 능력치 점수를 툴팁을 표시합니다";
L["Options_EnabledGlobal_Tooltip"] = "툴팁에 능력치 점수를 표시합니다";
L["Options_SelectStats_Label"] = "능력치 선택";
L["Options_SelectStats_Tooltip"] = "이 전문화에 적절한 능력치를 선택하세요";
L["Options_BlankLineMainAbove_Label"] = "상단에 빈 줄 삽입 (메인)";
L["Options_BlankLineMainAbove_Tooltip"] = "메인 툴팁의 능력치 점수 정보 위에 빈 줄을 삽입합니다";
L["Options_BlankLineMainBelow_Label"] = "하단에 빈 줄 삽입 (메인)";
L["Options_BlankLineMainBelow_Tooltip"] = "메인 툴팁의 능력치 점수 정보 아래에 빈 줄을 삽입합니다";
L["Options_BlankLineRefAbove_Label"] = "상단에 빈 줄 삽입 (비교)";
L["Options_BlankLineRefAbove_Tooltip"] = "비교 툴팁의 능력치 점수 정보 위에 빈 줄을 삽입합니다 (예. 쉬프트키를 눌렀을 때 비교 툴팁)";
L["Options_BlankLineRefBelow_Label"] = "하단에 빈 줄 삽입 (비교)";
L["Options_BlankLineRefBelow_Tooltip"] = "비교 툴팁의 능력치 점수 정보 아래에 빈 줄을 삽입합니다 (예. 쉬프트키를 눌렀을 때 비교 툴팁)";
L["Options_EnableCmMode_Label"] = "도전모드 사용";
L["Options_EnableCmMode_Tooltip"] = "도전 모드 던전에서, 능력치를 툴팁에서 직접 읽습니다 - 도전모드에서의 정확한 능력치. 이 옵션을 켜면 도전 모드 던전 안에서 쉬프트 키를 눌렀을 때만 작동합니다.";
L["Options_EnchantLevel_Label"] = "보석 등급";
L["Options_EnchantLevel_Tooltip"] = "빈 보석 홈에 사용 할 보석의 등급";
L["Options_GemStat_Label"] = "보석 능력치";
L["Options_GemStat_Best"] = "최상의 능력치";
L["Options_GemStat_Tooltip"] = "빈 보석 홈에 선택한 능력치를 대입합니다. 최상의 능력치는 자동으로 능력치 중 제일 높은 능력치를 선택합니다.";
L["Options_ForceSelectedGemStat_Label"] = "보석 능력치/값 강제 선택";
L["Options_ForceSelectedGemStat_Tooltip"] = "홈에 보석이 장착된 아이템은, 계산에 장착된 보석을 사용하지 않습니다, 하지만 전문화 설정에 기반한 최상의 보석 등급과 보석 능력치를 대신 사용합니다";
L["Options_Import_Title"] = "중요도 가져오기";
L["Options_ImportType_Label"] = "가져오기:";
L["Options_ImportType_Tooltip"] = "가져올 자료 형식 선택";
L["Options_Import_Label"] = "가져오기";
L["Options_Import_Tooltip"] = "가져올 자료 복사&붙여넣기";
L["Options_Order_Label"] = "순서";
L["Options_Export_Title"] = "중요도 내보내기";
L["Options_ExportType_Label"] = "내보내기:";
L["Options_ExportType_Tooltip"] = "내보낼 형식 선택";
L["Options_Export"] = "내보내기";
L["Options_Export_Label"] = "외부로 내보내기";
L["Options_NormalizeWeights_Label"] = "값 일반화";
L["Options_NormalizeWeights_Tooltip"] = "주 능력치를 1.0으로 기준하여 다른 능력치들을 계산할 수 있게 값을 조정합니다";
L["Error_MultiplePrimaryStatsSelected"] = "주 능력치를 하나 선택할 수 있습니다 (민첩, 힘 또는 지능)";
L["Options_Compare_Label"] = "비교할 획득 백분율";
L["Options_Compare_Tooltip"] = "툴팁에 표시 할 장착 중인 아이템 또는 전체 캐릭터 점수의 백분율 값.";
L["Options_Compare_Item"] = "장착한 아이템 점수";
L["Options_Compare_Character"] = "전체 캐릭터 점수";
L["Options_Percentage_Label"] = "백분율 계산";
L["Options_Percentage_Tooltip"] = "툴팁에 표시 할 백분율의 변경 또는 차이 값. ";
L["Options_Percentage_Change"] = "변경";
L["Options_Percentage_Difference"] = "차이";
L["Options_ShowStatsPane_Label"] = "전체 점수 표시";
L["Options_ShowStatsPane_Tooltip"] = "캐릭터 탭에 전체 점수 표시";
L["Options_GetStats_Label"] = "능력치 가져오기";
L["Options_GetStats_Tooltip"] = "능력치를 WOW api (GetItemStats()) 또는 툴팁에 기반해 가져올 방법입니다. 툴팁을 이용할 때 몇가지 이점이 있습니다 (예를 들어 회색으로 표시된 능력치를 보조전문화에 계산할 수 있습니다), 하지만 사용중인 언어권에서 지원을 해야 합니다.";
L["Options_GetStats_WoWAPI"] = "WoW API";
L["Options_GetStats_ParseTooltip"] = "아이템 툴팁";
L["Warning"] = "경고";
L["CharacterPane_CM_Tooltip"] = "도전모드 던전에서 전체 점수는 감소 되지 않습니다";
L["CharacterPane_Tooltip_Title"] = "중요 능력치 점수";
L["CharacterPane_Tooltip_Title_Text"] = "현재 장착 중인 모든 아이템의 %s 전문화 중요 능력치 전체 점수입니다";

-- +<value> <stat>; <value> Armor; (<value> damage per second)
L["Matcher_StatTooltipParser_Stat"] = "^([%a ]+) %+([%d,%. ]+)$";
L["Matcher_StatTooltipParser_Armor"] = "^(RESISTANCE0_NAME) (%d+)$";
L["Matcher_StatTooltipParser_DPS"] = "^%(([%a ]+) ([%d,%. ]+)%)$";

L["Matcher_Precheck_Equip"] = "^착용 효과:";
L["Matcher_Precheck_Use"] = "^사용 효과:";
L["Matcher_Precheck_BonusArmor"] = "BONUS_ARMOR$";

L["Matcher_Partial_CdMin"] = "(%d+)분";
L["Matcher_Partial_CdSec"] = "(%d+)초";

-- Use: Increases your <stat> by <value> for <dur> sec. (<cd> Min Cooldown)
-- Use: Increases <stat> by <value> for <dur> sec. (<cdm> Min <cds> Sec Cooldown)
-- Use: Grants <value> <stat> for <dur> sec. (<cdm> Min <cds> Sec Cooldown)
-- Equip: Your attacks have a chance to grant <value> <stat> for <dur> sec.  (Approximately <procs> procs per minute)
-- Equip: Each time your attacks hit, you have a chance to gain <value> <stat> for <dur> sec. (<chance>% chance, <cd> sec cooldown)
-- Equip: Your attacks have a chance to grant you <value> <stat> for <dur> sec. (<chance>% chance, <cd> sec cooldown)
-- Insignia of Conquest - Equip: When you deal damage you have a chance to gain <value> <stat> for <dur> sec.
-- Solium Band - Equip: Your attacks have a chance to grant Archmage's Incandescence for <duration> sec.  (Approximately <procs> procs per minute)
-- +<value> Bonus Armor
-- Equip: Your (attacks/melee attacks/spells) have a chance to trigger <effect> for <dur> sec. While <effect> is active, you gain <value> <stat> every <tick> sec, stacking up to <maxstack> times.  (Approximately <procs> procs per minute)
-- Equip: When you heal or deal damage you have a chance to increase your Strength, Agility, or Intellect by <value> for <duration> sec.  Your highest stat is always chosen.

L["Matcher_RPPM_Pattern"] = "^Equip: Your attacks have a chance to grant ([%d,%. ]+) ([%a ]-) for (%d+) sec%.  %(Approximately ([%d%.]+) procs per minute%)$";
L["Matcher_RPPM_ArgOrder"] = "value stat duration ppm";

L["Matcher_SoliumBand_Pattern"] = "^착용 효과: 공격 시 일정 확률로 (%d+)초 동안 대마법사의 ?(%a-) 염화를 얻습니다%. %(분당 약 ([%d%.]+)번 발동%)$";
L["Matcher_SoliumBand_ArgOrder"] = "type duration ppm";
L["Matcher_SoliumBand_BuffType_Greater"] = "상급";

L["Matcher_ICD_Pattern"] = "^Equip: Each time your attacks hit, you have a chance to gain ([%d,%. ]+) ([%a ]-) for (%d+) sec%.  %((%d+)%% chance, (%d+) sec cooldown%)$";
L["Matcher_ICD_ArgOrder"] = "value stat duration chance cd";

L["Matcher_ICD2_Pattern"] = "^Equip: Your attacks have a chance to grant you ([%d,%. ]+) ([%a ]-) for (%d+) sec%.  %((%d+)%% chance, (%d+) sec cooldown%)$";
L["Matcher_ICD2_ArgOrder"] = "value stat duration chance cd";

L["Matcher_InsigniaOfConquest_Pattern"] = "^Equip: When you deal damage you have a chance to gain ([%d,%. ]+) ([%a ]-) for (%d+) sec%.";
L["Matcher_InsigniaOfConquest_ArgOrder"] = "value stat duration";

L["Matcher_Use_Pattern"] = "^Use: Increases y?o?u?r? ?([%a ]-) by ([%d,%. ]+) for (%d+) sec%. %(([%d%a ]-) Cooldown%)$";
L["Matcher_Use_ArgOrder"] = "stat value duration cd";

L["Matcher_Use2_Pattern"] = "^Use: Grants ([%d,%. ]+) ([%a ]-) for (%d+) sec%. %(([%d%a ]-) Cooldown%)$";
L["Matcher_Use2_ArgOrder"] = "value stat duration cd";

L["Matcher_BonusArmor_Pattern"] = "^BONUS_ARMOR %+(%d+)$";
L["Matcher_BonusArmor_ArgOrder"] = "value";

L["Matcher_BlackhandTrinket_Pattern"] = "^Equip: Your [%a ]- have a chance to trigger [%a' ]- for (%d+) sec.  While [%a' ]- is active, you gain ([%d,%. ]+) ([%a ]-) every ([%d,%. ]+) sec, stacking up to ([%d,%. ]+) times%.  %(Approximately ([%d%.]+) procs per minute%)$";
L["Matcher_BlackhandTrinket_ArgOrder"] = "duration value stat tick maxstack ppm";

L["Matcher_StoneOfFire_Pattern"] = "^착용 효과: 생명력을 회복시키거나 피해를 입힐 때 일정 확률로 (%d+)초 동안 힘, 민첩성, 지능 중 가장 높은 능력치가 ([%d,%. ]+)만큼 증가합니다%.$";
L["Matcher_StoneOfFire_ArgOrder"] = "value duration";