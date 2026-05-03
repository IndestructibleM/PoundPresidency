-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-- AGGRESSIVENESS
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 1.4               -- Encourages more aggressive stance overall
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.7       -- Makes AI take bigger risks vs weak nations
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 0.8            -- More willing to stop being cautious
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED = 1.8  -- Requires less strength to attempt balanced attack
NDefines.NAI.AGGRESSIVENESS_CHECK_PARTLY_FORTIFIED_WEAK_POINTS = 0.6 -- Encourages exploiting weaknesses more
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED = 8.0    -- Less conservative vs strongholds
NDefines.NAI.AGGRESSIVENESS_CHECK_FULLY_FORTIFIED_POCKET = 2.0 -- Pushes AI to kill off encircled enemies sooner

--------------------------------------------------------------------------------------------------------------
-- RESEARCH
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 7
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP			
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5 				-- AI will bump score of a research with this mult if it can use XP

NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075 -- Multiplies value based on relative naval industry size / country size.

NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 5.0		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3 -- (was 0.2) --To which extent AI should care about not falling behind (i.e. increase weight for old tech)

NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12 -- Multiplies value based on relative military industry size / country size.

NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 10.0
NDefines.NAI.RESEARCH_BONUS_FACTOR = 2.0

---------------------------------------------------------------------------------------------
-- DESIGNS
---------------------------------------------------------------------------------------------
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 20 --50	-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 20 --50	-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 20 --25	-- Same as above but for the air designer.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 30 --50					-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30 --50					-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR  = 30 --50					-- Same as above but for air XP.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 20
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 15
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 10
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 1

-- If a design with a weight when divided by the largest weight falls below this value it's excluded from the
-- selection. Valid values are in the range [0, 1] inclusive.

--------------------------------------------------------------------------------------------------------------
-- DIVISION PRODUCTION & UPGRADES
--------------------------------------------------------------------------------------------------------------
--NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTORY = 0.1 --1 		        			-- How many units a country wants is partially based on how much military industry that is available

NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2 				-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1     		-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during peace time

--NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time
--NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1		-- deployment will try to buffer a ratio of manpower (for reinforcements) during peace time

--NDefines.NAI.MANPOWER_RATIO_REQUIRED_TO_PRIO_MOBILIZATION_LAW = 0.4		-- percentage of manpower in field is desired to be buffered for AI when it has upcoming wars or already at war. if it has less manpower, it will prio manpower laws

--NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 100	                                -- Ignore supply cap if below this value when deciding on how many divisions to produce.

	-- Calculating wanted nr of divisions
--NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 5                        -- How many units a country wants is partially based on how much military industry that is available
NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.7                             -- If no threat, multiply min wanted units by this
--NDefines.NAI.WANTED_UNITS_THREAT_MAX = 25.0                             -- Normalized threat is clamped to this
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.5                       -- Factor threat with this if country is at war. this value is overriden by the value in ideology database if that value exceedes this.
--NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.25              -- Factor if has dangerous neighbor
--NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 22000                      -- Normalizing divisor for AI manpower. (for each x max available manpower, they want one division)
--NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 1                      -- Weight of front needs when computing final nr wanted units
--NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 1                        -- Weight of military factories when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 0.75                         -- Weight of manpower availability when computing final nr wanted units
--NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.4						-- Factor on units required for min defence
	-- End of calculating wanted nr of divisions

--NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7 --0.7			            -- Cancel unit production if below this to get resources out to units in the field
--NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.7 --0.7					        -- Cancel unit production if below this to get resources out to units in the field
--NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8 --0.9                               -- ai will not start to train if equipment drops below this level
--NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7 --0.8                                -- ai will not train if equipment drops below this level

NDefines.NAI.WANTED_UNITS_MAX_WANTED_CAP = 1000

NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.4
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8 
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 1
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.7
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.7
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 0.0042 -- aggressively trying to get the AI to upgrade divisions to newer templates, may work, may not, but it doesn't break anything. vanilla is 14, .0042 is just over 1 hour, where I believe the vanilla value at 14 = 14 days. So it should be checking to upgrade ONE division every single hour. 
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 1
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 0.99
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 60
NDefines.NAI.LOW_PRIO_TEMPLATE_BONUS_FOR_GARRISONS = 300000
NDefines.NAI.LOW_PRIO_TEMPLATE_PENALTY_FOR_FRONTS = -2000

NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.7
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.7

--------------------------------------------------------------------------------------------------------------
-- EQUIPMENT PRODUCTION
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 1 -- [0.4] -- Base value for how much of currently used equipment the AI will at least strive to have in stock

NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 1
NDefines.NAI.NEEDED_NAVAL_FACTORIES_EXPENSIVE_SHIP_BONUS = 1000
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0.001 -- temp fix
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.25
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_CHEAP = 0.75

NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 1000			-- The extent to which number of dockyards play into amount of sips a nation wants
NDefines.NAI.NAVAL_BASES_SHIP_FACTOR = 1000				-- The extent to which number of naval bases play into amount of sips a nation wants
NDefines.NAI.NAVAL_STATES_SHIP_FACTOR = 1000			-- The extent to which number of states play into amount of sips a nation wants

NDefines.NAI.PRODUCTION_UNAVAILABLE_RESORCE_FACTORY_FACTOR = 0.5

NDefines.NAI.RAILWAY_GUN_PRODUCTION_BASE_DIVISIONS_RATIO_PERCENT = 5
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_DIVISONS = 100
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_FACTORIES = 50

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 120
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION = 120
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 120

--------------------------------------------------------------------------------------------------------------
-- DIPLOMACY
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.0
NDefines.NAI.MAX_REQUEST_EXPEDITIONARIES_ARMY_RATIO = 0.0
NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.6
NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 1	-- AI will not repeat offers until at least this time has passed, and at most the double

---------------Volunteers Stuff---------------
NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 175.0  -- How far away it will evaluate sending volunteers if not a major power
NDefines.NAI.SEND_VOLUNTEER_EVAL_MAJOER_POWER = 1.0 	-- How willing major powers are to send volunteers.
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.2 -- How much AI containment factors into its evaluation of sending volunteers.

NDefines.NAI.DIPLO_PREFER_OTHER_FACTION = -400		-- The country has yet to ask some other faction it would prefer to be a part of.
NDefines.NDiplomacy.NOT_READY_FOR_WAR_BASE = -500 -- AI should be unwilling to enter accept a call to war if not ready ---for war against the relevant enemies. vanilla -50 - suggested define by SensitiveDannyBoi

--NDefines.NAI.SEND_VOLUNTEER_AIDESIRE_SAME_IDEOLOGY = 1000				-- Added to AI desire to send volunteers if recipent is same ideology (and AI can't declare war on recipient)
--NDefines.NAI.SEND_VOLUNTEER_AIDESIRE_SAME_IDEOLOGY_CIVIL_WAR = 1500		-- Added to AI desire to send volunteers if recipent is same ideology and they are currently in civil war
	
--------------------------------------------------------------------------------------------------------------
-- PP
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 1 --2.0								 -- Country must have at least this many times extra PP to get new admirals or army leaders
NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 7.0                       -- Desire to boost relations subtracts the cost multiplied by this

--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 7.5
NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 5.0

NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 200

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 12.0 -- Vanilla 6.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = 0.1 -- Vanilla 0.4

NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20 				-- Vanilla is 52  Check if activating motorization would improve supply situation this often.

NDefines.NAI.SCARY_LEVEL_AVERAGE_DEFENSE = -1.0                               -- average front defense modifier to make it consider it as a PITA to go for

NDefines.NAI.CANCEL_COMBAT_DISADVANTAGE_RATIO = 1.25	-- Vanilla 1.5                     -- If the enemy's advantage ratio over us during (normal) combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_COMBAT_MIN_DURATION_HOURS = 60	-- Vanilla 48 						-- Only allow canceling (normal) combat if at least <value> hours have passed
NDefines.NAI.CANCEL_INVASION_COMBAT_DISADVANTAGE_RATIO = 2.8	-- Vanilla 3.5 			-- If the enemy's advantage ratio over us during invasion combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_INVASION_COMBAT_MIN_DURATION_HOURS = 72	-- Vanilla 120			-- Only allow canceling invasion combat if at least <value> hours have passed

NDefines.NAI.REDEPLOY_DISTANCE_VS_ORDER_SIZE = 0.9 			                -- Factor applied to the path length of a unit compared to length of an order to determine if it should use strategic redeployment
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 10.0 		                -- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.FRONT_TERRAIN_DEFENSE_FACTOR = 7.0			-- Multiplier applied to unit defense modifier for terrain on front province multiplied by terrain importance
NDefines.NAI.FRONT_TERRAIN_ATTACK_FACTOR = 7.0			-- Multiplier applied to unit attack modifier for terrain on enemy front province multiplied by terrain importance
--NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 2								-- Minimum number of provinces to the front edge to determine for cutoff oportunity.

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.60						-- Minimum org % for a unit to actively attack an enemy unit when executing a plan	
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.85						-- Minimum strength  % for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.40						-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.60

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.30	
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.45	

NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.6     -- Vanilla -0.5                                     -- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).
NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.35 -- Vanilla -0.5		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.3  -- Vanilla -0.65					 -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.30  -- Vanilla -0.65		        -- % or more of units in an order to consider ececuting the plan
NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.4	-- Vanilla -0.5	            -- % or more average plan preparation before executing

NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.35
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.5

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 10.0 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.

NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 8.0
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0

NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 50.0

------ AI Superchargers -----------
-- These 4 defines below genuinely make the AI somehow smarter and supercharges it with the right values
NDefines.NAI.FRONT_EVAL_UNIT_ACCURACY = 2.0	-- Vanilla 1.0	-- scale how stupid ai will act on fronts. 0 is potato
NDefines.NAI.FRONT_EVAL_UNIT_AIR_SUP_IMPACT = 2.0 -- Vanilla 1.0	-- scale how good the AI thinks air superiority is for units
NDefines.NAI.FRONT_EVAL_PERCENT_TO_ASSIST_ALLY_FRONT = 0.75  -- Vanilla 0.5  percentage of how many units the AI thinks it should have compared to an ally before considering sending units
NDefines.NAITheatre.FRONT_EVAL_UNIT_SUPPLY_AND_ORG_LACK_IMPACT = 1.5	-- Vanilla 1.0; scale how painful the AI thinks a combined lack of supply and organization is for units	

---NDefines.NAI.PLAN_STEP_COST_LIMIT = 15          --- vanilla 9; When stepping to draw a plan this cost makes it break if it hits hard terrain (multiplied by number of desired steps)	
---NDefines.NAI.PLAN_STEP_COST_LIMIT_REDUCTION = 0.012   -- vanilla 3	Cost limit is reduced per iteration, making hard terrain less likely to be crossed the further into enemy territory it is	
---NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 0.1		--- vanilla 0.5; Factor applied to size or enemy being attacked.		
NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION = 1.5

NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 2	--- vanilla 2; Minimum number of provinces to the front edge to determine for cutoff oportunity.	
NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 0.85	--- vanilla 0.95; If local bulginess drops below this, a point of interest is found	
NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.4	--- vanilla 1.5; If total bulginess is lower than this, the front is ignored.	

NDefines.NAI.GARRISON_FRACTION = 0.0					-- DONT CHANGE THIS AS THIS FUCKS WITH VOLUNTEERS AND MAKE EM DO NOTHING AND BE PASSIVE How large part of a front should always be holding the line rather than advancing at the enemy
NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 	

NDefines.NAI.ASSIGN_FRONT_ARMY_SOFT_ATTACK_FACTOR = 0.1                 -- Importance of unit's ARMY_SOFT_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_HARD_ATTACK_FACTOR = 0.1                -- Importance of unit's ARMY_HARD_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_BREAKTHROUGH_FACTOR = 0.1               -- Importance of unit's ARMY_BREAKTHROUGH stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_ARMY_DEFENSE_FACTOR = 3.0                -- Importance of unit's ARMY_DEFENSE stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_ARMY_ENTRENCHMENT_FACTOR = 2.0              -- Importance of unit's ARMY_ENTRENCHMENT stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TEMPLATE_CLASS_SCORE = 3.0                  -- Importance of unit's AI template class (AREA_DEFENSE, CAVALRY) when assigning to an area defense order
NDefines.NAI.ASSIGN_INVASION_AMPHIBIOUS_ATTACK_FACTOR = 50.0            -- Importance of unit's amphibious attack adjuster when assigning to an invasion order
NDefines.NAI.ORDER_ASSIGNMENT_DISTANCE_FACTOR = 100.0                     -- When the AI assigns units to orders, how much should distance be taken into account?
NDefines.NAI.UNIT_ASSIGNMENT_STATS_IMPORTANCE = 2.0                     -- Stats score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.ASSIGN_FRONT_TERRAIN_ATTACK_FACTOR = 0.1                   -- Importance of unit's terrain adjusted attack stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_DEFENSE_FACTOR = 0.1                 -- Importance of unit's terrain adjusted defense stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_MOVEMENT_FACTOR = 0.1                 -- Importance of unit's terrain adjusted movement stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_ATTACK_FACTOR = 0.5                 -- Importance of unit's terrain adjusted attack stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_DEFENSE_FACTOR = 4.0               -- Importance of unit's terrain adjusted defense stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_MOVEMENT_FACTOR = 0.5               -- Importance of unit's terrain adjusted movement stat when assigning to an area defense order

NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS = 1.0		-- front unit request factor at max enemy fortification
NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS_MAX = 0.1 	-- max factor that can be added by enemy fortification

NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.50
NDefines.NAI.FRONT_REASSIGN_DISTANCE = 250.0

NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -10.0
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -10.0

NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 2.0

NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 4.0
--NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 0.70
--NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 1
NDefines.NAI.ENTRENCHMENT_WEIGHT = 5.0
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 1.1
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 20
NDefines.NAI.MICRO_POCKET_SIZE = 5
NDefines.NAI.POCKET_DISTANCE_MAX = 6000


NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.0
NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 13.0
NDefines.NAI.RAIDS_CREATE_FREQUENCY_DAYS = 20
NDefines.NAI.RAIDS_COMMAND_POWER_CAP_TO_CREATE = 150.0 
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 10.0
--NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.15

NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 100

NDefines.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.8
NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 10
NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 5

NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 3.0
NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 3.0

NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 2.0
NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.3

NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.3
NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.2

NDefines.NAI.MANPOWER_RATIO_CAREFULNESS_THRESHOLD = 0.25	-- Vanilla 0.05 -- if manpower ratio (available/used-by-army) is less than this, start being more careful with plan execution (i.e. don't throw your men into the meat grinder if you're running out of manpower)

NDefines.NAI.DEFAULT_SUPPLY_TRUCK_BUFFER_RATIO = 2.0	-- -- Vanilla 1.5 -- ai will set to truck buffer ratio to this. can be modified by wanted_supply_trucks min_wanted_supply_trucks ai strats

NDefines.NAI.FORT_LEVEL_TO_CONSIDER_HIGHLY_FORTIFIED = 4

------ Changing Careful AI -----------

-- So I don't know a single person who actually uses the careful attack plan. Therefore i'm gonna heavily change it for the AI use.

NDefines.NAI.PLAN_EXECUTE_CAREFUL_LIMIT = 5                -- When looking for an attack target, this score limit is required in the battle plan to consider province for attack
NDefines.NAI.PLAN_EXECUTE_CAREFUL_MAX_FORT = 7				-- If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this
NDefines.NAI.PLAN_EXECUTE_SUPPLY_CHECK = { 0.5, 0.4, 0.5, 1.0, 0.6 }
--                                                      ^^^ changed from 0.7
--------------------------------------------------------------------------------------------------------------
-- BATTLEPLANNER AI (KILL ME)
--------------------------------------------------------------------------------------------------------------
NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 15.0	-- Vanilla 12.0		-- Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 2.5	-- Vanilla 1.5			-- Bonus factor for port level

NDefines.NMilitary.PLAN_PROVINCE_BASE_IMPORTANCE = 2.0	-- Vanilla 2.0

NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0 	-- Vanilla 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5 	-- Vanilla 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)

NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5	-- Vanilla -2.0		-- Factor applied to province score in area defense order per enemy unit in that province
NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30		-- Vanilla 0.25		-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0		-- Vanilla 3.0	-- Used when calculating the calue of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0		-- Vanilla 1.1	-- Used when calculating the calue of defense area provinces for the battle plan system

NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 90	-- Vanilla 100.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
		
NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.3	-- Vanilla 0.2; Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)
NDefines.NMilitary.MIN_BALANCE_SCORE_TO_PROCEED_ATTACK = 0.15	-- Vanilla 0.2; A combat balance score of less than this will prevent auto attacking

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 1.0 -- 300.0 -- (was 12.0)	-- The higher the value, the less it should crowd provinces with multiple attacks.		#WICHTIG
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 10		-- (was 2) -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.3 -- #MOD was 0.0 -- was 0.6,				-- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 4 --#MOD -- was 8,					-- If a units path is at least this long to reach its front location, it will strategically redeploy.

NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 25	-- Vanilla 50 -- A country with less provinces than this will not draw fallback plans, but rather station their troops along the front
NDefines.NAI.FALLBACK_LOSING_FACTOR = 2.0 		-- Vanilla 1.0 -- The lower this number, the longer the AI will hold the line before sending them to the fallback line

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.60

NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)
---NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			Unused -- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_DEFENSE_IMPORTANCE = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_DEFENSE_IMPORTANCE = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_DEFENSE_IMPORTANCE = 20.0

--------------------------------------------------------------------------------------------------------------
-- GARRISON AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.AREA_DEFENSE_SETTING_VP = true								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_PORTS = true								-- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_AIRBASES = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_BORDERS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FORTS = false								-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_COASTLINES = false						        -- Vanilla is true
NDefines.NAI.AREA_DEFENSE_SETTING_RAILWAYS = false							-- Vanilla is false
NDefines.NAI.AREA_DEFENSE_SETTING_FACILITY = false							-- Vanilla is false

NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 2.0 --vanilla 0.75 -- Factor for max number of units to assign to area defense orders
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 1.5 --vanilla 0.7 -- Factor for desired number of units to assign to area defense orders
NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 1.0 --vanilla 1.0 -- Factor for min number of units to assign to area defense orders

-- VP weights (Peacetime / Medium Threat / High Threat)
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 }  -- Keep capital important
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 0.5, 1.0 }        -- CHANGED: Reduced from 1.5/2.0
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.25, 0.5 }          -- CHANGED: Reduced from 0.75/1.0
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.1, 0.3 }          -- CHANGED: Reduced from 0.5/1.0

-- Coast weights (mostly disabled now since COASTLINES = false)
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.1, 0.3 }
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.05, 0.15 }
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.0, 0.0 }

-- Base weights
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.5, 1.0, 1.5 }     -- CHANGED: Reduced high-threat
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.5, 0.75, 1.0 }       -- CHANGED: Reduced high-threat
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.5, 0.5, 0.75 }      -- CHANGED: Reduced high-threat

NDefines.NAI.AREA_DEFENSE_CIVIL_WAR_IMPORTANCE = 1.0                  -- CHANGED: Treat civil wars as normal wars

--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------
NDefines.NNavy.MAX_CAPITALS_PER_AUTO_TASK_FORCE = 24 -- 5							-- maximum number of capital ships the auto-task force creation will put together when designing SurfaceActionGroup
NDefines.NNavy.MAX_SUBMARINES_PER_AUTO_TASK_FORCE = 96 -- 30						-- maximum number of submarines the auto-task force creation will put together when designing wolfpack
NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.5 -- 0.25 							-- capitals / screens ratio used for creating FEX groups in naval combat

NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 2			-- carrier fleets will at least have this amount of capitals 원래 6
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 1				-- capital to carrier count in carrier taskfoces 원래 1.5
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3.0					-- screens to capital/carrier count in carrier & capital taskforces 원래 4.0

NDefines.NAI.MIN_MAIN_SHIP_RATIO = 0.5 -- 0.3                      -- if main ship ratio is below this, steal other ships.
NDefines.NAI.MIN_SUPPORT_SHIP_RATIO = 0.5 -- 0.7                   -- if support ship ratio is below this, steal other ships.
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_REINFORCE = 0.5         -- the main ships will be tried to reinforce this level.
NDefines.NAI.MIN_SUPPORT_SHIP_RATIO_TO_REINFORCE = 0.5 -- 0.9      -- the support ships will be tried to reinforce this level.
NDefines.NAI.MIN_MAIN_SHIP_TO_SPARE = 0.5 -- 0.7                   -- can only steal ships from a task force if their main ship ratio is above this.
NDefines.NAI.MIN_SUPPORT_SHIP_TO_SPARE = 0.5 -- 1.0                -- can only steal ships from a task force if their support ship ratio is above this.
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_MERGE = 0.5 -- 0.7             -- try merge task force if main ship ratio is lower than this.
NDefines.NAI.MAX_MAIN_SHIP_RATIO_TO_MERGE = 1.0 -- 1.001           -- if resulting main ship ratio would be at most this, allow merging into this task force.
NDefines.NAI.MAIN_SHIP_RATIO_TO_SPLIT = 2.0 -- 1.8                 -- if main ship ratio in a task force is larger than this, split it. (If a carrier TF wants 4 carriers (see defines above), but it has more than [this * 4] carriers, then we try to split the TF.)

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250 -- highest mines for highest prio for mine missions

NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 75.0

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	200, -- PATROL		
	200, -- STRIKE FORCE 
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	200, -- MINES PLANTING	
	100, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	100, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	3800, -- PATROL - 100000	
	3000, -- STRIKE FORCE 
	1500, -- CONVOY RAIDING
	3000, -- CONVOY ESCORT - 1000
	600, -- MINES PLANTING
	300, -- MINES SWEEPING	
	0, -- TRAIN
	0, -- RESERVE_FLEET
	1000, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	4, -- PATROL		
	8, -- STRIKE FORCE 
	1.5, -- CONVOY RAIDING
	2, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	10, -- NAVAL INVASION SUPPORT
}

NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 500
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 5
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 50
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 50

NDefines.NAI.NAVAL_MISSION_MINES_PLANTING_NEAR_OWNED = 80000
NDefines.NAI.NAVAL_MISSION_MINES_SWEEPING_NEAR_OWNED = 100000

-------------------------
-- naval invasions
-------------------------
NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 1.5							-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
--NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0 --0.08			-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend.
--NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0 --0.4	-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country.

NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 2 -- vanilla 15   -- AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 400 -- 200				 -- AI is extremely unwilling to plan naval invasions above this naval distance limit.
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 6 --24								-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)

-------------------------
-- convoy escorts
-------------------------
NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 25 -- 25					-- Threat value per convoy sunk in a region. Decays over time.
NDefines.NAI.REGION_THREAT_LEVEL_TO_AVOID_REGION = 25 * 5 -- 25 * 10		-- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 25 * 200 -- 25 * 100		-- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI will decide to mark the region as avoid

NDefines.NAI.CONVOY_ESCORT_MUL_FROM_NO_CONVOYS = 0 -- score multiplier when no convoys are around

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 500 -- 1500 -- AI will increase screen assignment for escort missions as threate increases

NDefines.NAI.MAX_SCREEN_FORCES_FOR_INVASION_SUPPORT = 0.2 -- 0 -- max ratio of screens forces to be used in naval invasion missions
NDefines.NAI.MAX_CAPITAL_FORCES_FOR_INVASION_SUPPORT = 0.2 -- 0 -- max ratio of capital forces to be used in naval invasion missions
NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 8.0 -- 4.0	-- maximum patrol/strike force ratio

NDefines.NAI.PATROL_FLEETS_PER_INVASION_REGION_ON_PATH = 4 -- 2			-- How many STL patrol fleet templates should the AI try to use when generating dominance
NDefines.NAI.DANGEROUS_DISTANCE_TO_CAPITAL = 500.0 -- 1000.0					-- Distance in pixels from the target province to capital location where the AI will add the naval invasion defense importance

NDefines.NAI.SUGGESTED_NUM_MAX_CARRIERS = 8 -- 4							-- We don't know exactly how many planes we should use when evaluating AI build so we need a suggested number to start things off. ALso used for task force suggestions list.

NDefines.NAI.ESTIMATED_CONVOYS_PER_DIVISION = 18 -- Not always correct, but mainly used to make sure AI does not go crazy vanilla 6
NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 120 -- 25
NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 30000 -- 1000 -- Base score for region with naval invasion (modified dynamically by prioritizing orders)

--------------------------------------------------------------------------------------------------------------
-- AIR AI
--------------------------------------------------------------------------------------------------------------
-------------------------
-- Land combat
-------------------------
NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0

NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 150		-- Strategic importance of our armies in the combats
NDefines.NAI.LAND_COMBAT_CAS_PER_COMBAT = 110
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 20
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 0.10

NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 3.00
NDefines.NAI.AI_FRACTION_OF_FIGHTERS_RESERVED_FOR_INTERCEPTION = 0
NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 1.1
NDefines.NAI.LAND_COMBAT_AIR_SUPERIORITY_IMPORTANCE = 1
NDefines.NAI.LAND_COMBAT_FRIEND_ARMIES_AIR_IMPORTANCE = 5
NDefines.NAI.LAND_COMBAT_OUR_ARMIES_AIR_IMPORTANCE = 15
NDefines.NAI.LAND_COMBAT_ENEMY_COASTAL_FORTS_AIR_IMPORTANCE = 6
NDefines.NAI.LAND_DEFENSE_INTERCEPTORS_PER_BOMBERS = 1.4

NDefines.NAI.LAND_COMBAT_FRIEND_COMBATS_AIR_IMPORTANCE = 8
NDefines.NAI.LAND_COMBAT_ENEMY_LAND_FORTS_AIR_IMPORTANCE = 10
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_COASTAL_FORT_LEVEL = 10

NDefines.NAI.LAND_COMBAT_IMPORTANCE_SCALE = 2.5

-------------------------
-- Defense
-------------------------
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 1.0		-- Original = 1 Amount of air interceptor planes requested per enemy bomber
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 50 -- 50			-- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 70 -- 70		-- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 30 -- 30			-- Strategic importance of naval factories

NDefines.NAI.AI_AIR_MISSION_COVERAGE_TO_STAY_PUT = 0.45		-- Vanilla 0.5 -- AI will not rebase air wings on missions if their new mission target exceeds this percentage of region coverage
NDefines.NAI.AIR_SCORE_DISTANCE_IMPACT = 0.0				-- Vanilla 0.3 -- -- Effect of distance applied to the score calculations
NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 3		--- Vanilla 4 -- Amount of days between air ai updates priorities for air wings ( from 1 to N )

NDefines.NAI.LAND_DEFENSE_AIR_SUPERIORITY_IMPORTANCE = 0.8
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0
NDefines.NAI.LAND_DEFENSE_AA_IMPORTANCE_FACTOR = 1.0
NDefines.NAI.LAND_DEFENSE_INFRA_IMPORTANCE_FACTOR = 0.7

-------------------------
-- Str bombing
-------------------------
--NDefines.NAI.STR_BOMB_PLANES_PER_CIV_FACTORY = 100				-- Amount of planes requested per enemy civ factory
--NDefines.NAI.STR_BOMB_PLANES_PER_MIL_FACTORY = 100				-- Amount of planes requested per enemy military factory
--NDefines.NAI.STR_BOMB_PLANES_PER_NAV_FACTORY = 100				-- Amount of planes requested per enemy naval factory
--NDefines.NAI.STR_BOMB_PLANES_PER_SUPPLY_HUB = 30                 -- Amount of planes requested per enemy supply node
NDefines.NAI.STR_BOMB_AIR_SUPERIORITY_IMPORTANCE = 0.5
NDefines.NAI.STR_BOMB_FIGHTERS_PER_PLANE = 1.5

-------------------------
-- Naval air
-------------------------
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 1.2 --0.65						-- Naval total importance scale (every naval score get's multiplied by it)
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40 --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 2.0
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 30.0
NDefines.NAI.NAVAL_COMBAT_TRANSFER_AIR_IMPORTANCE = 500.0

--------------------------------------------------------------------------------------------------------------
-- AMRS MARKET AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.2            -- Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_NR_DELIVERIES_SOFT_MAX = 7                   -- AI tries to adjust assigned factories and amount of equipment to keep nr deliveries at max this
	
--------------------------------------------------------------------------------------------------------------
-- LEND LEASE AI
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.DIPLOMACY_LEND_LEASE_MONTHS_TO_CANCEL = 16

NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 0


NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ASK_LEND_LEASE = 60								-- AI will accept to lend lease fuel only if the player have less fuel than this number multiply by his max daily consumption.
NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ACCEPT_LEND_LEASE = 60					 		-- AI will accept to lend lease fuel only if they have more fuel than this number multiply by their max daily consumption. Note that for a GiE asking to its host, we divide this number by 2.

NDefines.NAI.PROPOSE_LEND_LEASE_AIDESIRE_SAME_IDEOLOGY_CIVIL_WAR = 50	-- Vanilla 25; Added to AI desire to propose lend lease if recipent is same ideology and they are currently in civil war

--------------------------------------------------------------------------------------------------------------
-- INTELLIGENCE AGENCY AI
--------------------------------------------------------------------------------------------------------------
NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0 --25.0
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0 --6.0

--------------------------------------------------------------------------------------------------------------
-- AI SUPPLY/LOGISTICS DEFINES 
--------------------------------------------------------------------------------------------------------------
NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.85
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.

NDefines.NAI.AVERAGE_SUPPLY_USE_PESSIMISM = 2.0  -- Increased multiplier to reflect realistic supply usage.

NDefines.NAI.MAX_SUPPLY_DIVISOR = 2  -- Vanilla 1.75						-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. van 2.0

--------------------------------------------------------------------------------------------------------------
-- UNIT ASSIGNMENT & FRONT MANAGEMENT
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 6   -- Vanilla 4 --When the AI picks units for a front, it prioritises units already nearby.	
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.05 -- Vanilla 0.2	--Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.3  -- Vanilla 0.5	--Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.	
NDefines.NAI.PLAN_VALUE_BONUS_FOR_MOVING_UNITS = 0.45	-- Vanilla 0.35  --AI plans gets a bonus when units are not moving and ready to fight
NDefines.NAI.PLAN_FRONTUNIT_DISTANCE_FACTOR	= 8.0	-- Vanilla 10.0  --Factor for candidate units distance to front positions.
NDefines.NAI.AI_PREFERRED_TACTIC_WEEKLY_CHANGE_CHANCE = 0.10	-- Vanilla 0.05	--Chance for AI to select a new preferred tactic if they don't have one selected

--------------------------------------------------------------------------------------------------------------
-- LEADER ASSIGNMENT
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.ARMY_LEADER_ASSIGN_EMPTYNESS_MALUS	= 0.3	-- Vanilla 0.2 ---Factor for avoiding assigning leaders that can lead large armies to small armies (a value of 0.2 reduces the score by max 20 %)
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_SPEED_FACTOR	= 30.0	-- Vanilla 20.0 --Importance of general's ARMY_ARMOR_SPEED_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_ATTACK_FACTOR = 30.0		-- Vanilla 20.0 ---Importance of general's ARMY_ARMOR_ATTACK_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_BOOST_ARMOR_SKILL = 25.0	-- Vanilla 20.0	---Importance of general's trait where armor skill is boosted, e.g. armor_officer which boosts panzer_leader (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMOR_LEADER_IF_NO_ARMOR = -1.0		-- Vanilla -0.5   ---Avoid assigning a general with armor skills to an army with no armor (can be negative)
NDefines.NAI.ARMY_LEADER_ASSIGN_AMPHIBIOUS_INVASION	= 6.0	 -- Vanilla 1.0 --If involved in invasion, importance of general's AMPHIBIOUS_INVASION modifier	
NDefines.NAI.ARMY_LEADER_ASSIGN_NAVAL_INVASION_PREPARATION = 6.0	-- Vanilla 1.0 --If involved in invasion, importance of general's NAVAL_INVASION_PREPARATION modifier
NDefines.NAI.ARMY_LEADER_ASSIGN_KEEP_CURRENT_LEADER_FACTOR = 2.0		-- Vanilla 1.2        -- Boosts the score for keeping the current leader. Value > 1.0 favors the current leader.
NDefines.NAI.ARMY_LEADER_ASSIGN_DONT_STEAL_OTHER_FACTOR = 0.25		-- Vanilla 0.75          -- Reduces the score for leaders assigned elsewhere. Value < 1.0 discourages reassigning these leaders.

--------------------------------------------------------------------------------------------------------------
-- AI FORCE CONCENTRATION DEFINES
--------------------------------------------------------------------------------------------------------------
-- AIFC stands for "AI Force Concentration". Using acronym to keep define names shorter.
NDefines.NAI.AIFC_UPDATE_FREQUENCY_DAYS = 4 	-- Vanilla 5                             -- How often will AI run its AI force concentration logic. Lowering this number may decrease performance.
NDefines.NAI.AIFC_FRESHNESS_BASE_VALUE = 35.0	-- Vanilla 45.0                           -- AIFC fronts have a "freshness value" which decreases if no progress is made. When it reaches zero, it will give up on the current target and try another.
NDefines.NAI.AIFC_REFRESH_NEED_PER_DAY = 1.0                         -- Decrease freshness value with this every day.
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 4.0		-- Vanilla 0.8             -- Decrease freshness value with this multiplied by average supply ratio every day.
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 20.0  -- Vanilla 25.0                    -- Increase freshness value with this when we advance a province along the target path.
NDefines.NAI.AIFC_UNIT_RATIO_BASE = 0.05	-- Vanilla 0.15           mod 0.10                     -- After fulfilling minimum front unit needs, this ratio of the "extra"/desired units can be allocated to AI force concentration duty
NDefines.NAI.AIFC_MAX_NR_FRONTS = 4                                     -- The X (this) fronts with highest AIFC score are considered for AI force concentration
NDefines.NAI.AIFC_CA_DIVISIONS_PER_PROVINCE = 2		-- Vanilla 3                     -- AI will use this as a baseline of how many divisions to have per province
NDefines.NAI.AIFC_ACTIVATE_AVG_ORG_RATIO_THRESHOLD = 0.6		-- Vanilla 0.2                -- Only activate the offensive order if average organisation is above this.
NDefines.NAI.AIFC_ACTIVATE_IN_POSITION_RATIO_THRESHOLD = 0.3	-- Vanilla 0.3            -- Only activate the offensive order if divisions in position is more than this ratio.
NDefines.NAI.AIFC_OFFENSIVE_DEACTIVATION_DAYS_THRESHOLD = 5             -- Deactivate the offensive order only if the conditions have been unfulfilled for this many days.
NDefines.NAI.AIFC_UNIT_NUDGE_FREQUENCY_DAYS = 10.0	-- Vanilla 15                      -- On average every X day (randomly), check if another division (within same front) is better for AIFC based on score factors below.
	-- Unit offensiveness score factors for AIFC. Division stats are factored by this before adding up to total score.
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_BREAKTHROUGH = 12.0	-- Vanilla 11.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SOFT_ATTACK = 12.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARD_ATTACK = 16.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ARMOR = 80.0   -- Heavy incentive for Panzers
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_PIERCING = 8.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARDNESS = 800.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SPEED = 15.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_INITIATIVE = 5.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ORGANISATION = 1.0    -- Slightly positive: no more AI using garbage
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HITPOINTS = 0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_DEFENSE = -0.2
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ENTRENCHMENT = -0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_EXPERIENCE = 500.0
	-- End of unit offensiveness score factors for AIFC
	-- Strategic target scoring for AIFC
NDefines.NAI.AIFC_TARGET_IGNORE_VP_THRESHOLD = 10                       -- VP target needs at leas this many victory points to be considered a target
NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 25	-- Vanilla 200                   -- Base score for supply hubs
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 15.0                   -- Base score for naval bases
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 2.0               -- Score for naval bases increases by this for each level
NDefines.NAI.AIFC_TARGET_VP_SCORE_FACTOR = 1.0                          -- Score for VPs increases by this for every victory point
NDefines.NAI.AIFC_TARGET_CAPITAL_SCORE_EXTRA = 10.0		-- Vanilla 5.0                   -- Extra score for Capitals (in addition to VP score)
NDefines.NAI.AIFC_TARGET_SHORT_PATH_PENALTY_FACTOR = 0.0                -- Penalty factor for short AIFC paths (path <= 3 (including own start province))
NDefines.NAI.AIFC_TARGET_PERSISTED_FACTOR = 35.0   		-- Vanilla 30.0                     -- Bonus factor for persisted targets (used to incentivize AI to select target again after e.g. front lines have reformed or save file is loaded)
	-- End of strategic target scoring for AIFC
	
	-- Offensive path scoring (cost multipliers) for AIFC
NDefines.NAI.AIFC_PATH_MAX_COST = 5.0	-- Vanilla 7.0                                  -- Only allow paths with total cost <= this. WARNING: increasing this value may cause stuttering and other performance issues (since AIFC will evaluate larger areas)
NDefines.NAI.AIFC_PATH_COST_ADJ_NORMAL = 1.0
NDefines.NAI.AIFC_PATH_COST_ADJ_STRAIT = 4.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 1.5
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 2.3
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 2.5		-- Vanilla 2.0
NDefines.NAI.AIFC_PATH_COST_TRN_FOREST = 1.15
NDefines.NAI.AIFC_PATH_COST_TRN_DESERT = 1.5
NDefines.NAI.AIFC_PATH_COST_TRN_HILLS = 1.2
NDefines.NAI.AIFC_PATH_COST_TRN_JUNGLE = 3.5 		-- Vanilla 3.0
NDefines.NAI.AIFC_PATH_COST_TRN_PLAINS = 1.0		-- Vanilla 0.8
NDefines.NAI.AIFC_PATH_COST_TRN_URBAN = 0.8
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 2.5
NDefines.NAI.AIFC_PATH_COST_PER_FORT_LEVEL = 0.4                        -- This multiplier is calculated as: 1.0 + <define>*fort_level    (only for fort levels > 0)
NDefines.NAI.AIFC_PATH_COST_HAS_SUPPLY_HUB = 0.50	-- Vanilla 0.5                        -- If the province we're entering has a supply hub
NDefines.NAI.AIFC_PATH_COST_HAS_NAVAL_BASE = 0.25	-- Vanilla 0.5                         -- If the province we're entering has a naval base
NDefines.NAI.AIFC_PATH_COST_RAILWAY_CONNECTION = 0.70	-- Vanilla 0.75                  -- If the provinces are connected by a railway with level > 0
	-- End of offensive path scoring for AIFC

--------------------------------------------------------------------------------------------------------------
-- CONSTRUCTION AI
--------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------
-- AMINE'S PERSONAL TEST DEFINES
-------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------
------ Fort Behavior, Front Cohesion, War Readiness -----------
--------------------------------------
NDefines.NAI.DECLARE_WAR_MIN_FRONT_SIZE_TO_CONSIDER_FOR_NOT_READY = 0.08    -- vanilla 0.04
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 12              -- vanilla 8
NDefines.NAI.FORTIFIED_MIN_ORG_FACTOR_TO_CONSIDER_A_FRONT_FORTIFIED = 0.55  -- vanilla 0.45
NDefines.NAI.PLAN_VALUE_FORTIFICATION_LEVEL_MAX_PENALTY = 0.85              -- vanilla 1.0
NDefines.NAI.AREA_DEFENSE_IMPORTANCE_FACTOR = 1.35                          -- vanilla 1.0

--------------------------------------
------ Supply-Aware AI & Training Sanity -----------
--------------------------------------
NDefines.NAI.DEFAULT_SUPPLY_TRAIN_NEED_FACTOR = 1.15          -- vanilla 1.0
NDefines.NAI.START_TRAINING_SUPPLY_LEVEL = 0.55               -- vanilla 0.40
NDefines.NAI.STOP_TRAINING_SUPPLY_LEVEL = 0.45                -- vanilla 0.30
NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 150                  -- vanilla 100
NDefines.NAI.STR_BOMB_SUPPLY_HUB_IMPORTANCE = 20              -- vanilla 10

--------------------------------------
------ Combat Evaluation / Targeting Logic -----------
--------------------------------------
NDefines.NMilitary.COMBAT_VALUE_ORG_IMPORTANCE = 1.1     -- vanilla 1
NDefines.NMilitary.COMBAT_VALUE_STR_IMPORTANCE = 1.0      -- vanilla 1
NDefines.NMilitary.SOFT_ATTACK_TARGETING_FACTOR = 1.15    -- vanilla 1.0
NDefines.NMilitary.HARD_ATTACK_TARGETING_FACTOR = 1.35    -- vanilla 1.2

--------------------------------------
------ Theatre Generation, Merging & Unit Distribution -----------
--------------------------------------
NDefines.NAITheatre.AI_THEATRE_AI_FRONT_MIN_DESIRED_RATIO = 0.65         -- vanilla 0.5
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_SCORE = 2.4              -- vanilla 2.0
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_PERCENTAGE_OF_MINIMUM_UNITS_TO_KEEP = 0.35  -- vanilla 0.25
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_SAME_THEATRE_SCORE_MODIFIER = 0.35          -- vanilla 0.25

NDefines.NAITheatre.AI_THEATRE_GENERATION_MINIMUM_STATE_COUNT = 4        -- vanilla 3
NDefines.NAITheatre.AI_THEATRE_GENERATION_MAX_DISTANCE_TO_MERGE = 250   -- vanilla 200
NDefines.NAITheatre.AI_THEATRE_BREAKDOWN_MAX_DISTANCE_TO_MERGE = 350    -- new, consistent with above
NDefines.NAITheatre.AI_THEATRE_GENERATION_BORDER_SIZE_RESTRICTION = 9    -- vanilla 7

--------------------------------------
------ Air Logic -----------
--------------------------------------
NDefines.NAI.AIR_SUPERIORITY_FACTOR = 2.0                 -- vanilla 1.5
NDefines.NAI.AIR_SUPERIORITY_FOR_FRIENDLY_CAS_RATIO = 0.65 -- vanilla 0.5
NDefines.NAI.MAX_AIR_REGIONS_TO_CARE_ABOUT = 10            -- vanilla 5
NDefines.NAI.LAND_COMBAT_ENEMY_ARMIES_AIR_IMPORTANCE = 8  -- vanilla 10
NDefines.NAI.LAND_DEFENSE_MIN_FACTORIES_FOR_AIR_IMPORTANCE = 12 -- vanilla 8

NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = 4.0        -- vanilla 3.0
NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 20              -- vanilla 15
NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 12        -- vanilla 8

NDefines.NAI.AIR_DESIGN_ALTERNATIVE_ABSENT = 1000000            -- vanilla 1000000 in your file (insane)
NDefines.NAI.AIR_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 100     -- vanilla 100
NDefines.NAI.AIR_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1   -- vanilla 1
NDefines.NAI.AIR_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 10000     -- vanilla 10000

--NDefines.NAI.AIR_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.15 -- vanilla 0.25

--------------------------------------
------ Macro-Strategy: Guarantees, Calling Allies, War Entry ----------
--------------------------------------
NDefines.NAI.AI_GUARANTEE_DESIRE_WITH_PRESSURE_MODIFIER = -0.35   -- vanilla 0 (less spam guarantees)
NDefines.NAI.TENSION_MIN_FOR_GUARANTEE_VS_MINOR = 0.45            -- vanilla 0.25

NDefines.NAI.CALL_ALLY_BASE_DESIRE = 40                           -- vanilla 50
NDefines.NAI.CALL_ALLY_WAR_LENGTH_NR_MONTHS = 6                   -- vanilla 3
NDefines.NAI.CALL_ALLY_RELATIVE_ARMY_STRENGTH_THRESHOLD = 0.7     -- vanilla 0.5
NDefines.NAI.CALL_ALLY_RELATIVE_INDUSTRY_STRENGTH_THRESHOLD = 0.7 -- vanilla 0.5
NDefines.NAI.CALL_ALLY_LOSING_WAR_THRESHOLD = 0.15                -- vanilla 0.3

NDefines.NAI.DIPLOMACY_CALL_ALLY_VALIDITY_DURATION = 75           -- vanilla 60
NDefines.NAI.JOIN_FACTION_BOTH_LOSING = -15                       -- vanilla -30

NDefines.NAI.MIN_DELIVERED_TRADE_FRACTION = 0.85               -- AI will cancel trade deals that are not able to deliver more than this fraction of the agreed amount   
NDefines.NAI.MIN_AI_SCORE_TO_ECONOMY_LAW_OVERRIDE_HARD_CODED_SCORE = -100.0

NDefines.NAI.MAX_VOLUNTEER_ARMY_FRACTION = 0.10
NDefines.NAI.DIPLOMACY_ACCEPT_VOLUNTEERS_BASE = 150
NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE = 10
--NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.60
NDefines.NAI.TRADEABLE_FACTORIES_FRACTION = 1.0	

NDefines.NAI.RESOURCE_WANT_PER_MISSING_BALANCE = 1.0
NDefines.NAI.RESOURCE_WANT_PER_CONSUMED = 0.15

--------------------------------------
------ Supply & Front Deployment (NSupply) -----------
--------------------------------------
NDefines.NSupply.AI_FRONT_MAX_UNITS_ENEMY_COUNT_FACTOR = 1.05     -- vanilla 1.2
NDefines.NSupply.AI_FRONT_MINIMUM_UNITS_PER_PROVINCE_FOR_SUPPLY_CALCULATIONS = 0.8 -- vanilla 1.0
NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_PERCENT_UNMET_DEMAND_PER_FRONT = 0.1   -- Percentage of how much fronts should request from other lower priority fronts, 0 means once a front gets hold of a unit it stays there forever until its demand is reduced, controlls shuffling of units.
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25

--------------------------------------
------ Construction AI -----------
--------------------------------------
NDefines.NAI.BUILDING_TARGETS_BUILDING_PRIORITIES = { 'arms_factory', 'industrial_complex', 'air_base', 'supply_node', 'rail_way', 'naval_base', 'bunker', 'coastal_bunker', 'anti_air_building', 'synthetic_refinery', 'fuel_silo', 'radar_station', 'rocket_site', }
	
NDefines.NAI.CONSTRUCTION_PRIO_SUPPLY_BUILDING = 3.50
NDefines.NAI.CONSTRUCTION_PRIO_RAILWAY = 20.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_CORE = 5.0
NDefines.NAI.CONSTRUCTION_PRIO_FACTOR_OWNED_NONCORE = 3.0

--- AI – Fuel & Trade Decisions
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_MISSION_FUEL_TRADE = 0.5
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_CRITICAL_MISSION_FUEL_TRADE = 0.5
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL = 0.6
NDefines.NAI.FUEL_TRADE_PRIO_FOR_CONVOY_DEFENSE = 1
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_MISSION_FUEL_TRADE_IN_PEACE = 0.6
NDefines.NAI.MAX_FACTORY_TO_SPARE_FOR_CRITICAL_MISSION_FUEL_TRADE_IN_PEACE = 0.6
NDefines.NAI.MAX_FACTORY_TO_TRADE_FOR_FUEL_IN_PEACE = 0.6
NDefines.NAI.FUEL_CONSUMPTION_MULT_FOR_FUEL_SAVING_MODE = 0.30
NDefines.NAI.FUEL_CONSUMPTION_MULT_REGULAR_FUEL_MODE = 1
NDefines.NAI.FUEL_CONSUMPTION_MULT_AGRESSIVE_FUEL_MODE = 6.0
--NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE = 60
NDefines.NAI.DAYS_FUEL_REMAINING_TO_ENTER_FUEL_SAVING_MODE_FUEL_RATIO = 0.33
NDefines.NAI.FUEL_RATIO_TO_EXIST_FUEL_SAVING_MODE = 0.5

--- AI – Naval Taskforces & Priorities
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3.0
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 4
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 8
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 10
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 6
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 4
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.35
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.80
NDefines.NAI.MIN_FUEL_RATIO_TO_NOT_IGNORE_STRIKE_FORCE_COST = 0.2
NDefines.NAI.MIN_FUEL_RATIO_TO_NOT_IGNORE_INVASION_SUPPORT_COST = 0
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 150
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 8.0
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 0.2
NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 0.6

--- AI – Lend Lease & Air Wing Requests

NDefines.NAI.PROPOSE_LEND_LEASE_AIDESIRE_SAME_IDEOLOGY = 100
NDefines.NAI.LENDLEASE_FRACTION_OF_PRODUCTION = 0.75
NDefines.NAI.LENDLEASE_FRACTION_OF_STOCKPILE = 0.75
NDefines.NAI.MINIMUM_EQUIPMENT_TO_ASK_LEND_LEASE = -100
NDefines.NAI.MINIMUM_CONVOY_TO_ASK_LEND_LEASE = 100
NDefines.NAI.LAND_COMBAT_CAS_PLANES_PER_ENEMY_ARMY_LIMIT = 300
NDefines.NAI.LAND_COMBAT_BOMBERS_PER_LAND_FORT_LEVEL = 10
NDefines.NAI.LAND_COMBAT_MIN_EXCORT_PLANES = 200
NDefines.NAI.LAND_COMBAT_INTERCEPT_PER_PLANE = 1
NDefines.NAI.MIN_ALLIED_DEFENSE_FACTOR_AIRWING_REQUESTS = 0.07
NDefines.NAI.LAND_COMBAT_GUIDE_DISTANCE = 290.0
NDefines.NAI.STR_BOMB_MIN_EXCORT_PLANES = 200
NDefines.NAI.STR_BOMB_MIN_ENEMY_FIGHTERS_IN_AREA = 600


NDefines_Graphics.NGraphics.COUNTRY_COLOR_HUE_MODIFIER = 0.0                    -- 0.0
NDefines_Graphics.NGraphics.COUNTRY_COLOR_SATURATION_MODIFIER = 0.8             -- 0.6
NDefines_Graphics.NGraphics.COUNTRY_COLOR_BRIGHTNESS_MODIFIER = 0.75            -- 0.8