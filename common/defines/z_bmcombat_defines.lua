--------------------------------------------------------------------------------------------------------------
-- COUNTRY
--------------------------------------------------------------------------------------------------------------
NDefines.NCountry.LOCAL_MANPOWER_ACCESSIBLE_NON_CORE_FACTOR = 0.044
NDefines.NCountry.BASE_COMMAND_POWER_GAIN = 0.51
NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.036

---- VANILLAREDUX
NDefines.NGame.OIL_RESOURCE = "coal"
NDefines.NGame.ENERGY_RESOURCE = "grain"
NDefines.NProduction.RESOURCE_TO_ENERGY_COEFFICIENT = 12.0
NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.0

NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 36
NDefines.NCountry.SPECIAL_FORCES_CAP_BASE = 0.034

-- War Support Impacts
NDefines.NCountry.MAX_BOMBING_WAR_SUPPORT_IMPACT = -0.75
NDefines.NCountry.MAX_HEROES_BEING_KILLED_WAR_SUPPORT_IMPACT = -0.65
NDefines.NCountry.MAX_CONVOYS_BEING_RAIDED_WAR_SUPPORT_IMPACT = -0.55

NDefines.NCountry.HEROES_BEING_KILLED_WAR_SUPPORT_PENALTY_SCALE = -0.06
NDefines.NCountry.WAR_SUPPORT_FROM_CASUALTIES = 0.050
NDefines.NCountry.MAX_HEROES_BEING_KILLED_WEEKLY_WAR_SUPPORT_PENALTY = -0.010

NDefines.NCountry.BOMBING_WAR_SUPPORT_PENALTY_SCALE = -0.00030
NDefines.NCountry.MAX_BOMBING_WEEKLY_WAR_SUPPORT_PENALTY = 	-0.010

NDefines.NCountry.CONVOYS_BEING_RAIDED_WAR_SUPPORT_PENALTY_SCALE = -0.10
NDefines.NCountry.MAX_CONVOYS_BEING_RAIDED_WEEKLY_WAR_SUPPORT_PENALTY = -0.010

-- Supply & Logistics
NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.05

-- Command Power
NDefines.NCountry.BASE_MAX_COMMAND_POWER = 105

-- AI Strategic Weights
NDefines.NCountry.ARMY_IMPORTANCE_FACTOR = 10.0
NDefines.NCountry.TERRAIN_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.VICTORY_POINTS_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.BUILDING_IMPORTANCE_FACTOR = 1.0
NDefines.NCountry.RESOURCE_IMPORTANCE_FACTOR = 5.0

-- Scorched Earth
NDefines.NCountry.SCORCHED_EARTH_STATE_COST = 20

-- Tech Tweaks
NDefines.NTechnology.BASE_YEAR_AHEAD_PENALTY_FACTOR = 1.85	
NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 45

--------------------------------------------------------------------------------------------------------------
-- MILITARY EXPERIENCE & TRAINING
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.BASE_DIVISION_BRIGADE_GROUP_COST = 15
NDefines.NMilitary.BASE_DIVISION_BRIGADE_CHANGE_COST = 5
NDefines.NMilitary.BASE_DIVISION_SUPPORT_SLOT_COST = 8

NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 300
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 300
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 300

NDefines.NMilitary.ARMY_LEADER_XP_GAIN_PER_UNIT_IN_COMBAT = 0.11

NDefines.NMilitary.TRAINING_MAX_DAILY_COUNTRY_EXP = 0.12
NDefines.NMilitary.UNIT_EXPERIENCE_PER_TRAINING_DAY = 0.00175
NDefines.NMilitary.TRAINING_ATTRITION = 0.01
NDefines.NMilitary.TRAINING_MIN_STRENGTH = 0.2

NDefines.NMilitary.FIELD_EXPERIENCE_SCALE = 0.003
NDefines.NMilitary.FIELD_EXPERIENCE_MAX_PER_DAY = 4
NDefines.NMilitary.TRAINING_EXPERIENCE_SCALE = 124.0

-- Dig-in
NDefines.NMilitary.DIG_IN_FACTOR = 0.01
NDefines.NMilitary.UNIT_DIGIN_CAP = 8
NDefines.NMilitary.UNIT_DIGIN_SPEED = 1.5

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT (CORE)
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.RECON_SKILL_IMPACT = 8
NDefines.NMilitary.DAMAGE_SPLIT_ON_FIRST_TARGET = 0.5

NDefines.NMilitary.COMBAT_STACKING_START = 10
NDefines.NMilitary.COMBAT_STACKING_EXTRA = 6
NDefines.NMilitary.COMBAT_STACKING_PENALTY = -0.08

NDefines.NMilitary.COMBAT_MINIMUM_TIME = 3
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.3
NDefines.NMilitary.REINFORCE_CHANCE = 0.06

NDefines.NMilitary.MULTIPLE_COMBATS_PENALTY = -0.55
NDefines.NMilitary.ENCIRCLED_PENALTY = -0.25
NDefines.NMilitary.FLANKED_PROVINCES_COUNT = 2

NDefines.NMilitary.HOURLY_ORG_MOVEMENT_IMPACT = -0.1
NDefines.NMilitary.WITHDRAWING_SPEED_FACTOR = 0.20

-- Terrain & Forts
NDefines.NMilitary.RIVER_CROSSING_PENALTY_LARGE = -0.7
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY = -0.30
NDefines.NMilitary.RIVER_CROSSING_SPEED_PENALTY_LARGE = -0.65
NDefines.NMilitary.BASE_FORT_PENALTY = -0.15

--------------------------------------------------------------------------------------------------------------
-- LAND COMBAT DAMAGE
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.030		--0.018
NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.036		--0.024

NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 2

--------------------------------------------------------------------------------------------------------------
-- ARMOR & PIERCING
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PIERCING_THRESHOLDS = {                                            -- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
    1.30,
    1.1,
    1.0,
    0.9,
    0.75,
    0.5,
    0.25,
    0.00, --there isn't much point setting this higher than 0
}

NDefines.NMilitary.PIERCING_THRESHOLD_DAMAGE_VALUES = {                                -- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
    1.00,
    0.90,
    0.80,
    0.70,
    0.60,
    0.55,
    0.40,
    0.20,
}

NDefines.NMilitary.ARMOR_VS_AVERAGE = 0.25
NDefines.NMilitary.PEN_VS_AVERAGE = 0.25

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 3
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 5

NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_DEFLECTION_FACTOR = 0.6
NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_DEFLECTION_FACTOR = 0.8

--------------------------------------------------------------------------------------------------------------
-- SUPPLY & LOGISTICS
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.MIN_SUPPLY_CONSUMPTION = 0.03
NDefines.NMilitary.SUPPLY_GRACE = 96
NDefines.NMilitary.SUPPLY_ORG_MAX_CAP = 0.55
NDefines.NMilitary.NON_CORE_SUPPLY_SPEED = -0.8

NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 350
NDefines.NSupply.SUPPLY_POINTS_PER_TRAIN = 0.2

--------------------------------------------------------------------------------------------------------------
-- AIR COMBAT & CAS
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_FLIGHT_SPEED_MULT = 0.03
NDefines.NAir.AIR_WING_MAX_STATS_ATTACK = 200
NDefines.NAir.AIR_WING_MAX_STATS_DEFENCE = 200
NDefines.NAir.AIR_WING_MAX_STATS_AGILITY = 200
NDefines.NAir.AIR_WING_MAX_STATS_SPEED = 2000
NDefines.NAir.AIR_WING_MAX_STATS_BOMBING = 200

NDefines.NAir.BIGGEST_AGILITY_FACTOR_DIFF = 5.0
NDefines.NAir.AIR_WING_COUNTRY_XP_FROM_TRAINING_FACTOR = 0.0075

NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_CHANCE = 0.03
NDefines.NAir.ANTI_AIR_PLANE_DAMAGE_FACTOR = 0.35
NDefines.NAir.ANTI_AIR_ATTACK_TO_DAMAGE_REDUCTION_FACTOR = 0.31

NDefines.NAir.CAS_NIGHT_ATTACK_FACTOR = 0.25

NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.04
NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.05

NDefines.NAir.FIELD_EXPERIENCE_MAX_PER_DAY = 1.75

--------------------------------------------------------------------------------------------------------------
-- STRATEGIC & LOGISTICS BOMBING
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.AIR_WING_BOMB_DAMAGE_FACTOR = 7.5
NDefines.NAir.BOMBING_TARGETING_RANDOM_FACTOR = 0.15

NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRUCK_DAMAGE_FACTOR = 0.35
NDefines.NAir.AIR_WING_ATTACK_LOGISTICS_TRAIN_DAMAGE_FACTOR = 0.055

NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_CHANCE = 0.2
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_SHIP_DAMAGE_FACTOR = 50
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_CHANCE = 0.65
NDefines.NAir.BASE_STRATEGIC_BOMBING_HIT_PLANE_DAMAGE_FACTOR = 50

NDefines.NAir.AA_INDUSTRY_AIR_DAMAGE_FACTOR = -0.036
NDefines.NAir.DETECT_CHANCE_FROM_NIGHT = -0.35

--------------------------------------------------------------------------------------------------------------
-- NAVAL COMBAT
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.RELATIVE_SURFACE_DETECTION_TO_POSITIONING_FACTOR = 0.02
NDefines.NNavy.MAX_POSITIONING_BONUS_FROM_SURFACE_DETECTION = 0.2
NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO = 0.8
NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR = 0.4

NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING = 0.75
NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.5
NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.6

NDefines.NNavy.BASE_JOIN_COMBAT_HOURS = 12
NDefines.NNavy.FIELD_EXPERIENCE_MAX_PER_DAY = 50

NDefines.NNavy.COMBAT_BASE_HIT_CHANCE = 0.05
NDefines.NNavy.COMBAT_MIN_HIT_CHANCE = 0.03
NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE = 0.025
NDefines.NNavy.COMBAT_EVASION_TO_HIT_CHANCE_TORPEDO_MULT = 50.0

NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_DAMAGE_MULT = 2.25
NDefines.NNavy.COMBAT_DAMAGE_TO_STR_FACTOR = 0.65
NDefines.NNavy.COMBAT_CHASE_RESIGNATION_HOURS = 10
NDefines.NNavy.COMBAT_MAX_GROUPS = 2

NDefines.NNavy.NAVAL_SUPREMACY_CAN_INVADE = 0.55

--------------------------------------------------------------------------------------------------------------
-- SUBMARINES
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.SUBMARINE_HIDE_TIMEOUT = 24
NDefines.NNavy.SUBMARINE_REVEALED_TIMEOUT = 24
NDefines.NNavy.SUBMARINE_REVEAL_POW = 3.0
NDefines.NNavy.SUBMARINE_BASE_TORPEDO_REVEAL_CHANCE = 0.035
NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 11

NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_EFFECT = 1.0
NDefines.NNavy.SUB_DETECTION_CHANCE_SPOTTING_SPEED_EFFECT = 4.0
NDefines.NNavy.SUB_DETECTION_CHANCE_BASE_SPOTTING_POW_EFFECT = 3.0

--------------------------------------------------------------------------------------------------------------
-- CARRIERS & NAVAL AIR
--------------------------------------------------------------------------------------------------------------
NDefines.NAir.COMBAT_DAMAGE_SCALE_CARRIER = 3.3
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 3.3

NDefines.NNavy.CARRIER_STACK_PENALTY = 10
NDefines.NNavy.CARRIER_STACK_PENALTY_EFFECT = 0.08
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 10

--------------------------------------------------------------------------------------------------------------
-- SHORE BOMBARDMENT
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.35
NDefines.NNavy.HEAVY_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.1
NDefines.NNavy.LIGHT_GUN_ATTACK_TO_SHORE_BOMBARDMENT = 0.05

--------------------------------------------------------------------------------------------------------------
-- TRADE
--------------------------------------------------------------------------------------------------------------
NDefines.NTrade.BASE_LAND_TRADE_RANGE = 250

--------------------------------------------------------------------------------------------------------------
-- Slower Battle Lower Attrition Weaker CAS Test Defines
--------------------------------------------------------------------------------------------------------------
--NDefines.NMilitary.LAND_COMBAT_STR_DAMAGE_MODIFIER = 0.05 --0.06
--NDefines.NMilitary.LAND_COMBAT_ORG_DAMAGE_MODIFIER = 0.05 --0.053
--NDefines.NMilitary.LAND_AIR_COMBAT_STR_DAMAGE_MODIFIER = 0.05 -- 0.05
--NDefines.NMilitary.LAND_AIR_COMBAT_ORG_DAMAGE_MODIFIER = 0.05 -- 0.10
--NDefines.NMilitary.LAND_AIR_COMBAT_MAX_PLANES_PER_ENEMY_WIDTH = 1 -- 3
NDefines.NMilitary.LAND_COMBAT_ORG_DICE_SIZE = 3 -- 4
NDefines.NMilitary.LAND_COMBAT_STR_DICE_SIZE = 1 -- 2
--NDefines.NMilitary.LAND_COMBAT_ORG_ARMOR_ON_SOFT_DICE_SIZE = 4 -- 6
--NDefines.NMilitary.LAND_COMBAT_STR_ARMOR_ON_SOFT_DICE_SIZE = 2 -- 2
NDefines.NMilitary.ATTRITION_EQUIPMENT_LOSS_CHANCE = 0.003 -- 0.005
NDefines.NSupply.TRUCK_ATTRITION = 0.002 -- 0.003

--------------------------------------------------------------------------------------------------------------
-- Total Mobilization Test Defines
--------------------------------------------------------------------------------------------------------------

--- Naval Combat & Fleets (NDefines.NNavy)
NDefines.NNavy.COMBAT_RETREAT_DECISION_CHANCE = 0.05 							-- There is also random factor in deciding if we should retreat or not. That causes a delay in taking decision, that sooner or later will be picked. It's needed so damaged fast ships won't troll the combat.
NDefines.NNavy.AGGRESION_MULTIPLIER_FOR_COMBAT = 12
NDefines.NNavy.AGGRESSION_MIN_ARMOR_EFFICIENCY =  1
NDefines.NNavy.AGGRESSION_HEAVY_GUN_EFFICIENCY_ON_LIGHT_SHIPS = 1
NDefines.NNavy.AGGRESSION_TORPEDO_EFFICIENCY_ON_LIGHT_SHIPS = 1
NDefines.NNavy.AGGRESSION_LIGHT_GUN_EFFICIENCY_ON_HEAVY_SHIPS = 1
NDefines.NNavy.AGGRESSION_HEAVY_GUN_EFFICIENCY_ON_HEAVY_SHIPS = 2.0 -- ratio for scoring for different gun types against heavy ships
NDefines.NNavy.AGGRESSION_TORPEDO_EFFICIENCY_ON_HEAVY_SHIPS = 2.1   -- ratio for scoring for different gun types against heavy ships
NDefines.NNavy.COMBAT_MIN_DURATION = 24	
NDefines.NNavy.AGGRESSION_SETTINGS_VALUES = { -- ships will use this values while deciding to attack enemies
		0,
		1.8,	
		2.4,	
		3.2,	
		10000,	
	}