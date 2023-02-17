-- Tarrens Mill vs. Süderstade v1.0, copyright 2023 created by NoM0Re

-- Event made for and tested on AzerothCore 3.3.5a rev. f96b027ffd3d 2021-10-10 / ACDB 335.4-dev
-- This event adds 12 new Creatures, 8 new Smart Scripts, 6 new Quests, 4 new Gameobjects, 32 new Waypoints, 2 new Gossips and 1 Event.

-- Tarrens Mill vs. Süderstade was originally created in December 2021 by NoM0Re.


-- CONFIGURATION --

-- Game Event Setup
SET @eventId := 150; -- Id to use for the event. Make sure this id does not yet exist in game_event.
SET @eventDescription := 'Tarrens Mill vs. Süderstade'; -- Description of the event. Might be announced in-game depending on your server configuration.
-- Quests ✔️
SET @Q_ID_HORD                          := 41840; -- Up to 3
SET @Q_ID_ALLIANCE                      := 41850; -- Up to 3
-- Creature ✔️
SET @C_ID_HORD                          := 41840; -- Up to 5
SET @C_ID_ALLIANCE                      := 41850; -- Up to 5
SET @C_ID_BOSS                          := 41860; -- Up to 2
SET @C_GUID                             := 6500000; -- Up to 63
-- Gameobject ✔️
SET @GOB_ID_HORD                        := 41840; -- Up to 2
SET @GOB_ID_ALLIANCE                    := 41850; -- Up to 2
SET @GOB_GUID                           := 6500000; -- Up to 7
-- Gossips ✔️
SET @GOSSIP_ID_HORD                     := 41842; -- Up to 1
SET @GOSSIP_ID_ALLIANCE                 := 41852; -- Up to 1
SET @GOSSIP_TEXT_ID_H                   := 41842; -- Up to 1
SET @GOSSIP_TEXT_ID_A                   := 41852; -- Up to 1
-- Waypoints ✔️
SET @WP_ID                              := 35000; -- Up to 32

-- DO NOT EDIT BELOW --

REPLACE INTO `acore_world`.`game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `holidayStage`, `description`, `world_event`, `announce`)
		VALUES (@eventId, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '9999999', '2592000', 0, 0, @eventDescription, 0, 0); -- Just Started when Manually Started once (Event never Ends till stopped)

-- Waypoints

REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		VALUES (@WP_ID, 1, -807.416, -548.902, 15.5564, 0, 8000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 2, -800.686, -554.242, 15.3757, 0, 500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 3, -796.116, -554.677, 17.5339, 0, 4500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 4, -800.465, -558.166, 15.4397, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 5, -800.889, -573.128, 15.252, 0, 500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 6, -817.419, -575.715, 15.688, 0, 8500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 7, -800.889, -573.128, 15.252, 0, 4500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 8, -802.081, -561.265, 15.3605, 0, 800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID, 9, -798.24, -576.008, 15.3351, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 3, -856.02, -476.245, 13.3554, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 2, -859.117, -481.961, 13.3549, 0, 7200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 1, -856.342, -480.965, 13.3549, 0, 14700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 2, -868.446, -595.991, 11.5305, 0, 3500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 1, -860.977, -597.027, 11.3916, 0, 500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 3, -873.807, -598.9, 10.9049, 0, 7500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 4, -875.641, -584.259, 11.0938, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 5, -876.574, -584.539, 10.9781, 0, 8500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 6, -862.19, -589.754, 11.2954, 0, 2000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+1, 7, -861.093, -606.88, 11.0783, 0, 14000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 1, -884.337, -573.588, 10.0241, 0, 15700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 2, -884.808, -556.592, 9.14006, 0, 17000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 3, -893.301, -556.842, 6.88094, 0, 250, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 4, -902.668, -556.939, 6.88094, 0, 7000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 5, -901.743, -574.074, 6.88094, 0, 6500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 6, -903.139, -540.122, 6.88094, 0, 7200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 7, -882.632, -540.814, 7.456, 0, 5000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 8, -883.007, -557.411, 9.7728, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 9, -884.272, -574.099, 10.0604, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 10, -886.588, -571.86, 9.09011, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+2, 11, -891.904, -571.673, 8.60917, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 4, -856.263, -476.253, 13.3554, 0, 15600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 5, -858.413, -474.255, 13.3554, 0, 7000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 6, -859.747, -476.25, 13.3554, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 7, -855.967, -480.946, 13.3549, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+3, 8, -856.342, -480.965, 13.3549, 0, 200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 1, -835.07, -504.594, 15.4, 0, 14800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 2, -831.632, -511.001, 14.0817, 0, 6300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 3, -837.22, -518.183, 11.7367, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 4, -839.314, -507.908, 14.3333, 0, 7600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 5, -838.82, -481.389, 13.1425, 0, 12400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 6, -836.338, -478.16, 14.0431, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 7, -826.2, -479.982, 15.3405, 0, 9400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 8, -832.84, -485.08, 15.2419, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+4, 9, -835.07, -504.594, 15.4, 0, 100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 1, -860.694, -455.35, 11.1392, 0, 16800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 2, -853.45, -448.686, 11.6183, 0, 7300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 3, -843.805, -461.576, 11.1301, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 4, -848.162, -461.668, 11.1301, 0, 8600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 5, -852.875, -455.4, 11.2042, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 6, -878.179, -456.006, 11.0722, 0, 8400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 7, -891.832, -462.335, 10.9806, 0, 9400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 8, -890.667, -451.954, 9.83963, 0, 2200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+5, 9, -860.694, -455.35, 11.1392, 0, 100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 1, -768.812, -485.493, 17.7934, 0, 19100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 2, -759.37, -473.896, 19.367, 0, 12400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 3, -754.442, -493.248, 20.8326, 0, 13650, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 4, -760.239, -498.738, 19.0614, 0, 4600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 5, -759.403, -492.012, 19.438, 0, 1500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 6, -771.438, -483.658, 17.7048, 0, 8400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 7, -780.189, -486.892, 17.6491, 0, 11250, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 8, -777.405, -480.562, 17.6614, 0, 4100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 9, -769.395, -486.208, 17.7521, 0, 100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+6, 10, -768.812, -485.493, 17.7928, 0, 12000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 1, -799.825, -463.38, 15.9986, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 2, -794.996, -458.753, 17.9469, 0, 16375, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 3, -789.741, -453.969, 21.5564, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 4, -788.138, -460.284, 18.5816, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 5, -785.892, -469.787, 17.6262, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 6, -785.726, -469.829, 17.627, 0, 7800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 7, -799.665, -483.639, 17.6947, 0, 10000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 8, -810.033, -471.928, 15.3441, 0, 4700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+7, 9, -799.825, -463.38, 15.9986, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 1, -778.586, -511.45, 23.6123, 0, 8700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 2, -784.821, -507.485, 23.5875, 0, 6400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 3, -776.339, -501.914, 23.6252, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 4, -775.989, -501.373, 23.6252, 0, 3400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 5, -775.721, -499.539, 23.6253, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 6, -777.886, -498.056, 23.6225, 0, 7800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 7, -768.066, -500.877, 23.6243, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 8, -774.884, -500.932, 23.6243, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 9, -784.972, -507.813, 23.5895, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 10, -787.253, -506.074, 23.6252, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 11, -792.163, -502.11, 19.3326, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 12, -792.897, -499.976, 18.8602, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 13, -789.653, -497.315, 18.8602, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 14, -789.268, -498.025, 18.8602, 0, 12321, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 15, -793.675, -501.091, 18.8602, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 16, -792.681, -501.695, 18.8607, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 17, -787.39, -505.824, 23.472, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 18, -786.958, -506.14, 23.6229, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 19, -783.953, -507.303, 23.585, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 20, -778.312, -511.643, 23.6137, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+8, 21, -778.586, -511.45, 23.6123, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 1, -854.509, -590.636, 4.52002, 0, 16545, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 2, -854.516, -596.421, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 3, -854.339, -596.563, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 4, -852.997, -597.472, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 5, -850.495, -598.2, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 6, -848.588, -598.712, 4.52002, 0, 200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 7, -848.438, -599.531, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 8, -848.486, -600.961, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 9, -847.863, -602.957, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 10, -847.627, -602.866, 4.52002, 0, 11000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 11, -851.294, -602.837, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 12, -851.419, -602.753, 4.52002, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 13, -855.293, -602.818, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 14, -856.998, -603.434, 4.52002, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 15, -856.989, -603.304, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 22, -856.721, -601.085, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 23, -857.524, -599.966, 4.52002, 0, 6700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 24, -858.931, -599.007, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 25, -855.551, -598.303, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 26, -855.357, -597.223, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 27, -855.054, -590.58, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 28, -861.369, -589.183, 4.52002, 0, 5300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 29, -853.053, -588.548, 4.52002, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 30, -846.689, -589.249, 4.52002, 0, 5700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 31, -854.502, -590.339, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+9, 32, -854.509, -590.636, 4.52002, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 1, -762.922, -511.588, 20.3751, 0, 1200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 2, -770.186, -520.83, 21.5202, 0, 250, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 3, -781.672, -526.959, 19.9705, 0, 3700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		VALUES (@WP_ID+10, 4, -776.123, -520.204, 19.7121, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 5, -766.226, -506.589, 18.4968, 0, 700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 6, -760.576, -496.671, 18.9563, 0, 4800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 7, -755.703, -505.997, 20.6425, 0, 13000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+10, 8, -762.922, -511.588, 20.3751, 0, 3200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 1, -787.382, -599.14, 15.1515, 0, 7800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 2, -788.995, -597.387, 15.1515, 0, 1400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 3, -799.095, -606.056, 15.1515, 0, 300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 4, -809.937, -606.802, 14.4547, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 5, -815.036, -598.888, 14.9476, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 6, -809, -606, 14.5978, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 7, -801.777, -606.292, 15.0882, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+11, 8, -787.243, -599.287, 15.1515, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		VALUES (@WP_ID+11, 9, -787.382, -599.14, 15.1515, 0, 19000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 1, -816.909, -564.534, 16.4072, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 2, -813.734, -563.908, 16.4058, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 3, -813.599, -564.142, 16.4058, 0, 3800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 4, -816.588, -560.675, 16.4068, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 5, -816.141, -554.036, 16.4522, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 6, -816.278, -551.738, 15.3079, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 7, -816.724, -549.07, 15.2909, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 8, -826.287, -546.886, 15.0816, 0, 2800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 9, -828.866, -551.397, 15.0514, 0, 3750, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 10, -821.873, -547.149, 15.0872, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 11, -816.814, -550.295, 15.2508, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 12, -816.325, -552.398, 15.3276, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 13, -816.04, -553.818, 16.4366, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 14, -814.711, -558.746, 16.4086, 0, 6800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+12, 15, -816.909, -564.534, 16.4069, 0, 8800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 1, -831.889, -558.469, 14.1655, 0, 5000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 2, -832.132, -551.576, 14.5639, 0, 250, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 3, -831.376, -551.071, 14.7003, 0, 7504, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 4, -828.703, -572.121, 15.0995, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 5, -826.975, -572.967, 15.2841, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 6, -829.08, -577.679, 15.0638, 0, 5201, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+13, 7, -831.889, -558.469, 14.1655, 0, 15000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 1, -852.715, -567.869, 11.0651, 0, 8900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 2, -852.502, -565.941, 11.0651, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 3, -852.473, -565.853, 11.0651, 0, 7500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 4, -851.325, -565.643, 11.0651, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 5, -850.643, -564.44, 11.065, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 6, -848.336, -565.026, 11.065, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 7, -846.875, -568.667, 11.065, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 8, -846.733, -568.854, 11.0649, 0, 9000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 9, -849.657, -573.276, 11.0649, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 10, -853.313, -571.027, 11.0649, 0, 6000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 11, -855.749, -574.157, 11.6801, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) 
		VALUES (@WP_ID+14, 12, -850.781, -579.021, 11.6881, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 13, -849.903, -580.216, 11.6881, 0, 7000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 14, -854.582, -575.766, 11.6881, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 15, -855.265, -574.134, 11.6726, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 16, -854.811, -571.643, 11.066, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 17, -852.526, -568.224, 11.0651, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+14, 18, -852.715, -567.869, 11.0651, 0, 15000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 1, -861.118, -563.024, 18.546, 0, 17545, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 2, -861.134, -566.874, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 3, -864.044, -570.051, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 4, -864.067, -570.895, 18.546, 0, 12000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 5, -860.188, -571.435, 18.546, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 6, -857.866, -569.463, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) 
		VALUES (@WP_ID+15, 7, -857.837, -568.939, 18.546, 0, 2800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 8, -854.511, -567.498, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 9, -849.895, -563.837, 18.546, 0, 9700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 10, -847.005, -567.453, 18.546, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 11, -853.181, -567.332, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 12, -856.214, -569.339, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 13, -857.191, -571.207, 18.546, 0, 4900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 14, -861.03, -568.237, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 15, -861.125, -563.432, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 16, -864.189, -559.134, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 17, -864.208, -556.02, 18.546, 0, 7000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 18, -864.169, -559.127, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 19, -861.124, -562.529, 18.546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+15, 20, -861.118, -563.024, 18.546, 0, 2000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 1, -930.065, -523.641, 6.87963, 0, 8000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 2, -928.293, -522, 6.87963, 0, 2500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 3, -898.559, -521.633, 6.87963, 0, 3500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 4, -898.336, -538.963, 6.87963, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 5, -884.841, -540.548, 7.33896, 0, 5800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 6, -894.301, -542.98, 6.87966, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 7, -896.37, -560.35, 6.87966, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 8, -896.052, -576.083, 6.87966, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 9, -895.589, -576.576, 6.87966, 0, 9500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 10, -910.25, -575.33, 6.87966, 0, 3000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 11, -902.996, -555.612, 6.87966, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 12, -901.834, -554.654, 6.87966, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 13, -920.738, -527.005, 6.87966, 0, 100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 14, -928.886, -523.626, 6.87963, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+16, 15, -930.065, -523.641, 6.87963, 0, 2000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 1, -879.032, -542.92, 7.62603, 0, 3850, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 2, -861.298, -530.962, 9.45385, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 3, -861.01, -516.296, 11.0535, 0, 7300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 4, -851.928, -515.286, 12.216, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 5, -848.766, -516.326, 12.4313, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 6, -848.717, -516.045, 12.441, 0, 4600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 7, -840.522, -524.334, 11.268, 0, 3800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 8, -844.857, -536.674, 12.1032, 0, 3400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 9, -853.068, -539.837, 10.3001, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 10, -861.64, -542.73, 9.3619, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 11, -864.144, -543.618, 10.0253, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 12, -864.358, -543.692, 10.0145, 0, 5800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 13, -862.532, -543.084, 9.33074, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 14, -861.848, -545.515, 10.0607, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 15, -866.365, -547.657, 10.108, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 16, -871.82, -550.216, 10.8012, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 17, -875.292, -544.956, 8.08703, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 18, -887.878, -541.764, 7.08013, 0, 2700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 19, -879.712, -543.027, 7.55681, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+17, 20, -879.032, -542.92, 7.62603, 0, 5800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 1, -876.005, -493.072, 12.4533, 0, 12000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 2, -875.945, -488.017, 12.4533, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 3, -876.06, -483.289, 13.3554, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 4, -880.114, -481.095, 13.3554, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 5, -877.39, -476.389, 13.3554, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 6, -873.476, -477.417, 13.3554, 0, 5000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 7, -875.567, -484.123, 13.3554, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 8, -875.438, -488.412, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 9, -871.966, -489.788, 12.4534, 0, 3600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 10, -869.924, -489.928, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 11, -867.05, -489.887, 13.3554, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 12, -863.222, -492.648, 13.354, 0, 3900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 13, -862.278, -495.767, 13.354, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 14, -860.386, -491.215, 13.3542, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 15, -866.868, -490.417, 13.3542, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 16, -870.216, -490.468, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 17, -872.252, -490.513, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 18, -872.665, -489.041, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 19, -872.415, -488.514, 12.4534, 0, 6000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 20, -873.443, -490.672, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 21, -876.567, -490.769, 12.4534, 0, 3400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 22, -876.571, -491.304, 12.4534, 0, 2900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 23, -875.413, -492.155, 12.4534, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+18, 24, -876.005, -493.072, 12.4533, 1.09956, 4600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 1, -808.908, -513.613, 17.0961, 0, 7210, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 2, -804.686, -519.536, 17.0994, 0, 9000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 3, -787.618, -515.658, 17.641, 0, 4900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 4, -796.184, -524.782, 17.3992, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 5, -795.47, -534.871, 16.7178, 0, 4354, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 6, -812.285, -533.726, 15.2578, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 7, -832.85, -521.989, 12.0107, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 8, -824.501, -511.436, 13.9988, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 9, -824.447, -511.07, 14.0676, 0, 5700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 10, -820.866, -513.807, 13.8946, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 11, -816.118, -514.436, 14.7811, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 12, -811.612, -514.84, 16.3767, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 13, -807.39, -504.642, 17.528, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 14, -805.88, -497.498, 17.5414, 0, 4700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 15, -802.546, -501.593, 17.6779, 0, 5000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 16, -808.779, -513.523, 17.1298, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+19, 17, -808.908, -513.613, 17.0961, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`)
		 VALUES (@WP_ID+20, 1, -833.868, -474.65, 14.2956, 0, 13420, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 2, -826.513, -463.431, 15.048, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 3, -822.658, -459.941, 13.9586, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 4, -812.691, -450.505, 16.3162, 0, 10000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 5, -801.927, -471.966, 15.7453, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 6, -794.096, -468.604, 16.5886, 0, 4300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 7, -799.536, -482.742, 17.6378, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 8, -805.001, -501.153, 17.6507, 0, 8000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 9, -805.66, -489.316, 16.7732, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 10, -816.907, -482.844, 15.3433, 0, 6300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 11, -828.057, -482.012, 15.3361, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 12, -835.207, -504.842, 15.3577, 0, 12300, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 13, -833.88, -474.857, 14.3207, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+20, 14, -833.868, -474.65, 14.2956, 0, 3400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 1, -61.0129, -946.79, 55, 0, 20000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 2, -72.5731, -954.093, 55.0881, 0, 7410, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 3, -74.8247, -949.72, 55.5153, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 4, -82.261, -965.878, 56.6192, 0, 2700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 5, -71.6033, -974.051, 54.5711, 0, 3500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 6, -62.8355, -964.087, 54.2879, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 7, -60.9329, -946.875, 54.9791, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+21, 8, -61.0129, -946.79, 55, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 1, -53.1161, -993.234, 54.3324, 0, 10000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 2, -56.3226, -1001.25, 54.6672, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 3, -67.4995, -993.974, 55.419, 0, 6400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 4, -47.3595, -1003.4, 55.7414, 0, 5400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 5, -40.037, -995.057, 55.5142, 0, 3800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 6, -46.2228, -986.375, 54.5771, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 7, -64.9117, -978.909, 54.2746, 0, 5700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 8, -68.9329, -999.623, 56.2017, 0, 4900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 9, -57.5582, -997.003, 54.3559, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 10, -53.0009, -993.035, 54.3324, 0, 3200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+22, 11, -53.1161, -993.234, 54.3324, 0, 2100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 1, -31.0178, -985.005, 56.0525, 0, 21000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 2, -30.713, -983.812, 56.022, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 3, -30.4011, -983.158, 56.0547, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 4, -29.6576, -982.827, 56.0546, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 5, -29.1957, -982.706, 56.0974, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 6, -23.9811, -981.08, 55.8017, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 7, -23.4185, -981.364, 55.803, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 8, -21.1499, -982.517, 55.8318, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 9, -16.5528, -984.811, 55.8829, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 10, -14.0065, -985.794, 56.2664, 0, 12000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 11, -16.7755, -986.861, 55.8379, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 12, -16.8112, -989.114, 55.8502, 0, 3000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 13, -18.3343, -987.019, 55.8348, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 14, -19.3416, -984.856, 55.8362, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 15, -20.8651, -984.043, 55.8362, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 16, -22.0918, -983.439, 55.8212, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 17, -21.4005, -983.76, 55.8335, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 18, -23.0522, -986.165, 55.7922, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 19, -26.9016, -986.087, 56.0512, 0, 3700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 20, -26.1459, -980.781, 55.8045, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 21, -25.4, -974.966, 55.45, 0, 6700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 22, -29.2845, -980.677, 55.7422, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 23, -30.9734, -983.23, 55.9987, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 24, -31.5721, -984.135, 55.9151, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 25, -31.1331, -984.901, 56.022, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+23, 26, -31.0178, -985.005, 56.0525, 0, 3645, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 1, -22.0884, -961.757, 55.4516, 0, 4600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 2, -28.034, -945.096, 54.9319, 0, 8980, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 3, -22.1029, -945.605, 55.835, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 4, -19.2719, -945.081, 56.2041, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 5, -15.4917, -950.085, 56.254, 0, 3900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 6, -15.1119, -958.074, 56.1424, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 7, -22.0789, -961.889, 55.4516, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+24, 8, -22.0884, -961.757, 55.4516, 0, 7500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 1, 4.12406, -962.137, 55.9749, 0, 7800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 2, 10.2064, -962, 56.5775, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 3, 10.0379, -940.243, 57.3278, 0, 6800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 4, 19.6843, -939.357, 58.0659, 0, 3650, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 5, 12.2857, -950.291, 57.6601, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 6, 3.37886, -952.422, 56.7722, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 7, -1.06362, -951.719, 56.4666, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 8, -4.8974, -950.06, 56.433, 0, 9000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 9, -0.19563, -962.058, 55.4859, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 10, 3.8852, -962.023, 55.9518, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+25, 11, 4, -962, 55.9686, 0, 5000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 1, -43.3267, -974.453, 56.8901, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 2, -46.984, -973.367, 56.8901, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 3, -47.2601, -972.918, 56.8901, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 4, -47.4237, -972.425, 56.8901, 0, 4600, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 5, -49.0628, -972.404, 56.8908, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 6, -49.0146, -970.125, 56.8908, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 7, -46.9829, -969.64, 56.8908, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 8, -46.6603, -969.234, 56.8908, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 9, -46.5094, -968.739, 56.7861, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 10, -46.2439, -967.929, 56.4323, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 11, -46.0497, -967.351, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 12, -45.9954, -966.783, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 13, -46.2944, -966.208, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 14, -46.6826, -965.862, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 15, -47.0468, -965.745, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 16, -47.3962, -965.999, 56.1964, 0, 3900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 17, -42.931, -968.276, 56.1964, 0, 4115, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 18, -45.3426, -966.13, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 19, -45.2645, -965.812, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 20, -45.2857, -965.338, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 21, -44.5639, -963.3, 56.1964, 0, 2875, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 22, -46.0478, -967.588, 56.1964, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 23, -46.8, -969.817, 56.8908, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 24, -44.4843, -974.379, 56.8901, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+26, 25, -43.3267, -974.453, 56.8901, 0, 5700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 1, -37.0606, -929.047, 54.4399, 0, 7400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 2, -54.669, -923.756, 55.5769, 0, 6800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 3, -45.4862, -922.548, 54.6455, 0, 3800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 4, -44.7691, -919.738, 54.692, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 5, -29.7789, -915.732, 54.8536, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 6, -29.0785, -914.322, 55.7124, 0, 4000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 7, -25.7402, -926.423, 54.6301, 0, 6900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 8, -32.0283, -931.037, 54.376, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+27, 9, -37.0606, -929.047, 54.4393, 0, 1900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 1, -19.3231, -939.879, 61.9321, 0, 9000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 2, -16.9424, -940.167, 61.9307, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 3, -14.8187, -931.65, 61.8963, 0, 5800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 4, -9.02684, -938.535, 61.9342, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 5, -7.07867, -939.535, 61.9358, 0, 3700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 6, -13.2502, -939.707, 61.9299, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 7, -19.4094, -940.559, 61.9334, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+28, 8, -19.3231, -939.879, 61.9321, 0, 10000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 1, -5.51622, -937.391, 57.169, 0, 15000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 2, -9.1952, -938.595, 57.1708, 0, 6000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 3, -16.4642, -934.8, 57.1708, 0, 5321, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 4, -13.0438, -931.575, 57.1708, 0, 4100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 5, -9.33473, -933.463, 57.1708, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 6, -5.86147, -938.46, 57.1708, 0, 7000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+29, 7, -5.51622, -937.391, 57.169, 0, 4500, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 1, -18.3858, -913.364, 55.7512, 0, 14250, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 2, -19.1409, -910.949, 55.7336, 0, 100, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 3, -19.0408, -909.452, 55.8079, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 4, -20.7693, -904.367, 55.8616, 0, 6350, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 5, -17.5941, -902.434, 56.1673, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 6, -15.967, -904.809, 56.2008, 0, 4200, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 7, -16.4428, -906.782, 56.1307, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 8, -19.8864, -910.846, 55.6537, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 9, -22.8217, -920.925, 55.0645, 0, 7800, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 10, -14.4163, -913.569, 56.1665, 0, 4700, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+30, 11, -18.3858, -913.364, 55.7512, 0, 2400, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 1, -26.7583, -897.733, 56.036, 0, 21000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 2, -30.6036, -889.214, 56.0654, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 3, -43.0294, -875.761, 55.6867, 0, 14000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 4, -32.4837, -873.891, 56.724, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 5, -33.9463, -879.555, 56.2771, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 6, -29.1788, -891.006, 56.0507, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 7, -25.8168, -900.945, 55.8755, 0, 17000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+31, 8, -26.7583, -897.733, 56.036, 0, 1000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 1, -59.8239, -892.605, 56.5184, 0, 14000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 2, -61.8875, -893.532, 56.2347, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 3, -60.5543, -910.303, 55.601, 0, 14000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 4, -69.0032, -909.089, 55.3872, 0, 6950, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 5, -68.5956, -904.397, 55.1878, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 6, -52.5107, -892.319, 56.508, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 7, -45.7702, -891.107, 56.3458, 0, 7900, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 8, -47.8994, -886.578, 56.3538, 0, 9000, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 9, -59.5104, -892.839, 56.4885, 0, 0, 0, 0, 100, 0);
REPLACE INTO `acore_world`.`waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES (@WP_ID+32, 10, -59.8239, -892.605, 56.5184, 0, 1000, 0, 0, 100, 0);

-- Gossips

REPLACE INTO `acore_world`.`npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `Probability1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `Probability2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `Probability3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `Probability4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `Probability5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `Probability6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `Probability7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `VerifiedBuild`) VALUES (@GOSSIP_TEXT_ID_H, 'So, you just got here from Azeroth recently, huh? Prepare yourself on some things, $C$BThere are several dangers lurks in this Horde outpost, the Alliance and the Horde fight fierce battles here.$BI am Grom Hellscream Chieftain of the Warsong Clan, the War leader of our mighty Warchief, Thrall. $He honored me with the task of safeguarding this brave village, and by all spirits, I shall!', '', 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
REPLACE INTO `acore_world`.`npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `Probability0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `Probability1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `Probability2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `Probability3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `Probability4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `Probability5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `Probability6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `Probability7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `VerifiedBuild`) VALUES (@GOSSIP_TEXT_ID_A, 'So, you just got here from Azeroth recently, huh? Prepare yourself on some things, $C$BThere are several dangers lurks in this Alliance outpost, the Horde and the Alliance fight fierce battles here.$BI am General Turalyon Commander-in-Chief of the Alliance. I serve for our King Varian Wrynn$BHe honored me with the task of safeguarding this brave village, and by all spirits, I shall!', '', 0, 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12340);
REPLACE INTO `acore_world`.`npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (@GOSSIP_TEXT_ID_H, 'deDE', 'So, Ihr seid also erst kürzlich aus Azeroth hier eingetroffen, mh? Macht Euch auf einiges gefasst, $C$BIn diesem Außenposten der Horde lauern schlimme Gefahren, die Allianz und die Horde liefern sich hier erbitterte Kämpfe.$BIch bin Grom Höllenschrei Häuptling des Kriegshymnenklan, der Kriegsführer unseres mächtigen Kriegshäuptlings, Thrall.$BEr übertrug mir die ehrenvolle Aufgabe, dieses tapfere Dorf zu schützen, und bei allen Geistern, das werde ich!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
REPLACE INTO `acore_world`.`npc_text_locale` (`ID`, `Locale`, `Text0_0`, `Text0_1`, `Text1_0`, `Text1_1`, `Text2_0`, `Text2_1`, `Text3_0`, `Text3_1`, `Text4_0`, `Text4_1`, `Text5_0`, `Text5_1`, `Text6_0`, `Text6_1`, `Text7_0`, `Text7_1`) VALUES (@GOSSIP_TEXT_ID_A, 'deDE', 'So, Ihr seid also erst kürzlich aus Azeroth hier eingetroffen, mh? Macht Euch auf einiges gefasst, $C$BIn diesem Außenposten der Allianz lauern schlimme Gefahren, die Horde und die Allianz liefern sich hier erbitterte Kämpfe.$BIch bin General Turalyon Oberkommandierender der Allianz. Ich unterstehe unserem König Varian Wrynn$BEr übertrug mir die ehrenvolle Aufgabe, dieses tapfere Dorf zu schützen, und bei allen Geistern, das werde ich!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
REPLACE INTO `acore_world`.`gossip_menu` (`MenuID`, `TextID`) VALUES (@GOSSIP_ID_HORD, @GOSSIP_TEXT_ID_H);
REPLACE INTO `acore_world`.`gossip_menu` (`MenuID`, `TextID`) VALUES (@GOSSIP_ID_ALLIANCE, @GOSSIP_TEXT_ID_A);

-- -- Gameobject Templates

-- Sturmwind Map
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_ID_HORD, 2, 222, 'Stormwind Map', '', 'Reading', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
REPLACE INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
(@GOB_ID_HORD, 85, 0, 0, 0);
REPLACE INTO `acore_world`.`gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`) VALUES (@GOB_ID_HORD, 'deDE', 'Sturmwind Karte', '', 18019);

-- Orgrimmar Map
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_ID_ALLIANCE, 2, 222, 'Orgrimmar Map', '', 'Reading', '', 1.25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
REPLACE INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
(@GOB_ID_ALLIANCE, 11, 0, 0, 0);
REPLACE INTO `acore_world`.`gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`) VALUES (@GOB_ID_ALLIANCE, 'deDE', 'Orgrimmar Karte', '', 18019);

-- Sprengwagen Horde
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_ID_HORD+1, 10, 243, 'Explosive Wagon', '', 'Sprengen', '', 1, 0, 41840, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
REPLACE INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
(@GOB_ID_HORD+1, 85, 32, 0, 0);
REPLACE INTO `acore_world`.`gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`) VALUES (@GOB_ID_HORD+1, 'deDE', 'Sprengwagen', 'Anzünden', 18019);

-- Sprengwagen Allianz
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_ID_ALLIANCE+1, 10, 243, 'Explosive Wagon', '', 'Sprengen', '', 1, 0, 41850, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56488, '', '', 12340);
REPLACE INTO `gameobject_template_addon` (`entry`, `faction`, `flags`, `mingold`, `maxgold`) VALUES
(@GOB_ID_ALLIANCE+1, 11, 32, 0, 0);
REPLACE INTO `acore_world`.`gameobject_template_locale` (`entry`, `locale`, `name`, `castBarCaption`, `VerifiedBuild`) VALUES (@GOB_ID_ALLIANCE+1, 'deDE', 'Sprengwagen', 'Anzünden', 18019);

-- Gameobject Spawns

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_GUID, 41842, 0, 0, 0, 1, 1, 9.22797, -870.947, 58.7977, 2.78716, 0, 0, -0.984338, -0.176292, 300, 0, 1, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_GUID+1, 41852, 0, 0, 0, 1, 1, -712.817, -508.058, 28.1139, 4.77615, 0, 0, -0.68421, 0.729285, 300, 0, 1, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_GUID+2, 41860, 0, 0, 0, 1, 1, -874.074, -502.274, 11.4419, 1.847, 0, 0, -0.797717, -0.603032, 60, 0, 1, '', 0);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@GOB_GUID+3, 41861, 0, 0, 0, 1, 1, -3.06255, -914.033, 56.3712, 6.24372, 0, 0, -0.0197317, 0.999805, 300, 0, 1, '', 0);

-- Existing Gameobject Spawns
REPLACE INTO `acore_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GOB_GUID+4, 191473, 0, 0, 0, 1, 1, -334.517, -703.15, 64.9981, 1.20894, -0, -0, -0.568325, -0.822805, 0, 0, 1, '', 0);
REPLACE INTO `acore_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GOB_GUID+5, 191473, 0, 0, 0, 1, 1, -347.926, -705.311, 66.3061, 5.12479, -0, -0, -0.547354, 0.836901, 0, 0, 1, '', 0);
REPLACE INTO `acore_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GOB_GUID+6, 191473, 0, 0, 0, 1, 1, -330.772, -712.452, 66.294, 3.46295, -0, -0, -0.987119, 0.159989, 0, 0, 0, '', 0);
REPLACE INTO `acore_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES 
(@GOB_GUID+7, 191473, 0, 0, 0, 1, 1, -338.253, -701.306, 65.035, 1.22423, -0, -0, -0.574598, -0.818436, 300, 0, 1, '', 0);


-- Creature Templates

-- Wilder Stecher Horde
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_HORD, 0, 0, 0, 0, 0, 4617, 0, 0, 0, 'Wild Stabber', NULL, 'Attack', 0, 80, 80, 2, 12, 0, 1, 1.14286, 8.5, 1, 1, 0, 4, 1400, 2000, 1, 1, 4, 576, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 0, 3, 1, 5.8, 0, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_HORD, 0, 0, 0, 0, 0, 0, '1787');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_HORD, 1, 50737, 50737, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_HORD;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_HORD);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_HORD, 0, 0, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 11, 36554, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Schattentanz'),
(@C_ID_HORD, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 11, 6774, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zerhäckseln');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD, 'deDE', 'Wilder Stecher', '', 12340);

-- Tarrens Mühle Wache
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_HORD+1, 0, 0, 0, 0, 0, 3662, 3663, 0, 0, 'Tarren Mill Deathguard', NULL, NULL, 0, 83, 83, 0, 71, 0, 1.2, 1.42857, 9, 1.3, 1, 0, 30, 2000, 2000, 1, 1, 1, 8704, 2048, 0, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 'AggressorAI', 0, 3, 1, 78, 1, 1, 0, 0, 0, 1, 269516805, 0, 163904, '', 12340);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_HORD+1, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_HORD+1, 1, 2147, 2052, 0, 0);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'deDE', 'Todeswache von Tarrens Mühle', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'esES', 'Guardia de la Muerte de Molino Tarren', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'esMX', 'Guardia de la Muerte de Molino Tarren', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'frFR', 'Nécrogarde de Moulin-de-Tarren', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'koKR', '타렌 제분소 죽음경비병', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+1, 'ruRU', 'Страж смерти Мельницы Таррен', '', 12340);

-- Tarrens Mühle Questgeber
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_HORD+2, 0, 0, 0, 0, 0, 18672, 0, 0, 0, 'Grom Hellscream', 'Chieftain of the Warsong Clan', NULL, @GOSSIP_ID_HORD, 83, 83, 0, 1074, 3, 1, 1.14286, 9, 1, 0, 0, 140, 2000, 2000, 1, 1, 1, 9094, 2048, 0, 0, 0, 0, 0, 0, 7, 156, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 500, 1, 1, 1, 0, 0, 1, 2147483647, 0, 66, '', 12340);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_HORD+2, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_HORD+2, 1, 30414, 0, 0, 0);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'deDE', 'Grom Höllschrei', 'Häuptling des Kriegshymnenklans', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'esES', 'Grom Grito Infernal', 'Jefe del clan Grito de Guerra', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'esMX', 'Grom Grito Infernal', 'Jefe del clan Grito de Guerra', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'frFR', 'Grom Hurlenfer', 'Chef du clan Chanteguerre', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'koKR', '그롬 헬스크림', '전쟁노래 부족 족장', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'ruRU', 'Гром Адский Крик', 'Вождь клана Песни Войны', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'zhCN', '格罗姆·地狱咆哮', '战歌氏族酋长', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+2, 'zhTW', '葛羅·地獄吼', '戰歌氏族酋長', 12340);

-- Aggressiver Stecher Horde
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_HORD+3, 0, 0, 0, 0, 0, 2340, 0, 0, 0, 'Aggressive Stabber', NULL, 'Attack', 0, 80, 80, 2, 12, 0, 1, 1.14286, 8.5, 1, 1, 0, 3.8, 1400, 2000, 1, 1, 4, 576, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 1, 3, 1, 6.2, 0, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_HORD+3, 0, 0, 0, 0, 0, 0, '1787');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_HORD+3, 1, 50012, 50012, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_HORD+3;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_HORD+3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_HORD+3, 0, 0, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 11, 36554, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Schattentanz'),
(@C_ID_HORD+3, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 11, 6774, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zerhäckseln');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+3, 'deDE', 'Aggressiver Stecher', '', 12340);


-- Machterfüllter Priester Horde
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_HORD+4, 0, 0, 0, 0, 0, 4282, 0, 0, 0, 'Powerful Priest', NULL, 'Attack', 0, 80, 80, 2, 12, 0, 1, 1.14286, 13, 1, 1, 0, 4, 2000, 2500, 1, 1, 8, 2097728, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 0, 3, 1, 6.9, 50, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_HORD+4, 0, 0, 0, 0, 0, 0, '15473 48161 48073 48169 48168');
REPLACE INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(@C_ID_HORD+4, 2, 54, 0),
(@C_ID_HORD+4, 3, 54, 0),
(@C_ID_HORD+4, 4, 54, 0),
(@C_ID_HORD+4, 5, 54, 0),
(@C_ID_HORD+4, 6, 54, 0);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(@C_ID_HORD+4, 0, 48156, 0),
(@C_ID_HORD+4, 1, 48127, 0),
(@C_ID_HORD+4, 2, 10890, 0),
(@C_ID_HORD+4, 3, 34433, 0);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_HORD+4, 1, 50731, 0, 50684, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_HORD+4;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_HORD+4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_HORD+4, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 11, 6346, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Antifear'),
(@C_ID_HORD+4, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 1000, 4000, 0, 11, 65492, 64, 0, 0, 0, 514, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Gedankenschlag'),
(@C_ID_HORD+4, 0, 2, 0, 2, 0, 100, 0, 35, 50, 30000, 65000, 0, 11, 10890, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Fear'),
(@C_ID_HORD+4, 0, 3, 0, 2, 0, 100, 0, 0, 14, 60000, 120000, 0, 11, 47585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dispersion');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_HORD+4, 'deDE', 'Machterfüllter Priester', '', 12340);

-- Wilder Stecher Allianz
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE, 0, 0, 0, 0, 0, 4617, 0, 0, 0, 'Wild Stabber', NULL, 'Attack', 0, 80, 80, 2, 29, 0, 1, 1.14286, 8.5, 1, 1, 0, 4, 1400, 2000, 1, 1, 4, 576, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 0, 3, 1, 5.8, 0, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_ALLIANCE, 0, 0, 0, 0, 0, 0, '1787');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE, 1, 50737, 50737, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_ALLIANCE;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_ALLIANCE);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_ALLIANCE, 0, 0, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 11, 36554, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Schattentanz'),
(@C_ID_ALLIANCE, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 11, 6774, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zerhäckseln');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE, 'deDE', 'Wilder Stecher', '', 12340);

-- Wache Sturmwind
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+1, 0, 0, 0, 0, 0, 3705, 3708, 0, 0, 'Southshore Guard', NULL, NULL, 0, 83, 83, 2, 11, 0, 1.2, 1.42857, 9, 1.3, 1, 0, 30, 2000, 2000, 1, 1, 1, 8704, 2048, 0, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 'AggressorAI', 0, 3, 1, 78, 1, 1, 0, 0, 0, 1, 269516805, 0, 163904, '', 12340);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_ALLIANCE+1, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+1, 1, 1899, 1984, 2551, 0);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'deDE', 'Wächter der Allianz', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'esES', 'Guardia de la Alianza', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'esMX', 'Guardia de la Alianza', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'frFR', 'Garde de l\'Alliance', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'koKR', '얼라이언스 수비대', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'ruRU', 'Стражник Альянса', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'zhCN', '联盟卫兵', '', 12340);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+1, 'zhTW', '聯盟守衛', '', 12340);

-- Questgeber Allianz
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+2, 0, 0, 0, 0, 0, 18715, 0, 0, 0, 'General Turalyon', '', NULL, @GOSSIP_ID_ALLIANCE, 83, 83, 0, 11, 3, 1, 1.14286, 9, 1, 0, 0, 140, 2000, 2000, 1, 1, 1, 9094, 2048, 0, 0, 0, 0, 0, 0, 7, 156, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 499, 1, 1, 1, 0, 0, 1, 2147483647, 0, 66, '', 12340);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_ALLIANCE+2, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+2, 1, 0, 0, 0, 0);
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+2, 'ruRU', 'Generał Turalyon', '', 12340);

-- Agressiver Stecher Allianz
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+3, 0, 0, 0, 0, 0, 2340, 0, 0, 0, 'Aggressive Stabber', NULL, 'Attack', 0, 80, 80, 2, 29, 0, 1, 1.14286, 8.5, 1, 1, 0, 3.8, 1400, 2000, 1, 1, 4, 576, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 1, 3, 1, 6.2, 0, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_ALLIANCE+3, 0, 0, 0, 0, 0, 0, '1787');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+3, 1, 50012, 50012, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_ALLIANCE+3;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_ALLIANCE+3);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_ALLIANCE+3, 0, 0, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 11, 36554, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(@C_ID_ALLIANCE+3, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 11, 6774, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+3, 'deDE', 'Aggressiver Stecher', '', 12340);

-- Machterfüllter Priester
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+4, 0, 0, 0, 0, 0, 4282, 0, 0, 0, 'Powerful Priest', NULL, 'Attack', 0, 80, 80, 2, 29, 0, 1, 1.14286, 13, 1, 1, 0, 4, 2000, 2500, 1, 1, 8, 2097728, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 8000, 20000, 'SmartAI', 0, 3, 1, 6.9, 50, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_ALLIANCE+4, 0, 0, 0, 0, 0, 0, '15473 48161 48073 48169 48168');
REPLACE INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+4, 2, 54, 0),
(@C_ID_ALLIANCE+4, 3, 54, 0),
(@C_ID_ALLIANCE+4, 4, 54, 0),
(@C_ID_ALLIANCE+4, 5, 54, 0),
(@C_ID_ALLIANCE+4, 6, 54, 0);
REPLACE INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+4, 0, 48156, 0),
(@C_ID_ALLIANCE+4, 1, 48127, 0),
(@C_ID_ALLIANCE+4, 2, 10890, 0),
(@C_ID_ALLIANCE+4, 3, 34433, 0);
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_ALLIANCE+4, 1, 50731, 0, 50684, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_ALLIANCE+4;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_ALLIANCE+4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_ALLIANCE+4, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 11, 6346, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Antifear'),
(@C_ID_ALLIANCE+4, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 1000, 4000, 20, 11, 65492, 64, 0, 0, 0, 514, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Gedankenschlag'),
(@C_ID_ALLIANCE+4, 0, 3, 0, 2, 0, 100, 0, 35, 50, 30000, 65000, 0, 11, 10890, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Fear'),
(@C_ID_ALLIANCE+4, 0, 5, 0, 2, 0, 100, 0, 0, 8, 60000, 120000, 0, 11, 47585, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Dispersion');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_ALLIANCE+4, 'deDE', 'Machterfüllter Priester', '', 12340);

-- Boss Cygnus
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_BOSS, 0, 0, 0, 0, 0, 4019, 0, 0, 0, 'Cygnus', 'Leader of the Wild Stabbers', '', 0, 83, 83, 2, 14, 0, 1, 1.10286, 15, 1.5, 2, 0, 3.6, 2000, 2000, 0, 0, 4, 64, 2048, 1, 0, 0, 0, 0, 0, 7, 30, 0, 0, 0, 0, 0, 5000, 10000, 'SmartAI', 0, 3, 1, 52.52, 1, 1, 0, 0, 0, 1, 2147463039, 0, 1073741896, '', 0);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_BOSS, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_BOSS, 1, 0, 0, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_BOSS;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_BOSS);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_BOSS, 0, 0, 0, 2, 0, 100, 0, 0, 90, 20000, 25000, 0, 12, @C_ID_BOSS+1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Young Stabber at 90%-0% all 15-16 seconds'),
(@C_ID_BOSS, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 9, @C_ID_BOSS+1, 0, 100, 1, 0, 0, 0, 0, 'Kill Summoned Creatures if Reset'),
(@C_ID_BOSS, 0, 2, 0, 0, 0, 100, 0, 30000, 30000, 9780, 9780, 0, 11, 40601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Furor Buff Stacks up to 20 Starts at 30 secound and give all 10 secounds a new stack'),
(@C_ID_BOSS, 0, 3, 4, 0, 0, 60, 0, 7000, 7500, 15000, 16000, 0, 11, 7964, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Rauchbombe Stun 5 Meter start 7-7.5 sec repeats all 15-16 sec 60% Chance Linked with ID 4'),
(@C_ID_BOSS, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 20566, 64, 0, 0, 0, 0, 24, 30, 0, 0, 0, 0, 0, 0, 0, 'Knockback Threadlist Starts 7-7.5 sec Repeats all 15-16 sec 60% Chance Linked with ID 3'),
(@C_ID_BOSS, 0, 5, 6, 2, 0, 100, 0, 0, 10, 50000, 50000, 0, 11, 31224, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mantel der Schatten on 10% to 0% Health OneTime use to Dispell all Dots Linked with ID 6'),
(@C_ID_BOSS, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 26669, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Entrinnen on 10% Health Linked with ID 5'),
(@C_ID_BOSS, 0, 7, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 191473, 100, 0, 0, 0, 0, 0, 0, 'Licht an bei Reset Respawn Evade'),
(@C_ID_BOSS, 0, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 15, 191473, 100, 0, 0, 0, 0, 0, 0, 'Lichter aus bei Incombat'),
(@C_ID_BOSS, 0, 9, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @C_ID_BOSS+1, 100, 0, 0, 0, 0, 0, 0, 'Despawn Young Stabber Sicherheit 1'),
(@C_ID_BOSS, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @C_ID_BOSS+1, 100, 0, 0, 0, 0, 0, 0, 'Despawn Young Stabber Sicherheit 2'),
(@C_ID_BOSS, 0, 11, 0, 0, 0, 100, 0, 13000, 13000, 68000, 73000, 0, 86, 62807, 64, 24, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Player of the Treadlist cast Sternenlicht on Self'),
(@C_ID_BOSS, 0, 12, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 75, 73824, 0, 0, 0, 0, 0, 9, @C_ID_HORD, 0, 750, 1, 0, 0, 0, 0, '10% Buff on Reset Respawn Evade Allianz Stecher'),
(@C_ID_BOSS, 0, 13, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 75, 73818, 0, 0, 0, 0, 0, 9, @C_ID_ALLIANCE, 0, 750, 1, 0, 0, 0, 0, '10% Buff on Reset Respawn Evade Horde Stecher'),
(@C_ID_BOSS, 0, 14, 0, 2, 0, 100, 0, 0, 25, 0, 0, 0, 28, 73824, 0, 0, 0, 0, 0, 9, @C_ID_HORD, 0, 750, 0, 0, 0, 0, 0, 'Remove 10% Buff on 25%-0% Allianz Stecher'),
(@C_ID_BOSS, 0, 15, 0, 2, 0, 100, 0, 0, 0, 0, 0, 0, 28, 73818, 0, 0, 0, 0, 0, 9, @C_ID_ALLIANCE, 0, 750, 0, 0, 0, 0, 0, 'Remove 10% Buff on 25%-0% Horde Stecher'),
(@C_ID_BOSS, 0, 16, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 75, 73824, 0, 0, 0, 0, 0, 9, @C_ID_HORD+3, 0, 750, 1, 0, 0, 0, 0, '10% Buff on Reset Respawn Evade Allianz Stecher2'),
(@C_ID_BOSS, 0, 17, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 75, 73818, 0, 0, 0, 0, 0, 9, @C_ID_ALLIANCE+3, 0, 750, 1, 0, 0, 0, 0, '10% Buff on Reset Respawn Evade Horde Stecher2'),
(@C_ID_BOSS, 0, 18, 0, 2, 0, 100, 0, 0, 25, 0, 0, 0, 28, 73824, 0, 0, 0, 0, 0, 9, @C_ID_HORD+3, 0, 750, 0, 0, 0, 0, 0, 'Remove 10% Buff on 25%-0% Allianz Stecher2'),
(@C_ID_BOSS, 0, 19, 0, 2, 0, 100, 0, 0, 0, 0, 0, 0, 28, 73818, 0, 0, 0, 0, 0, 9, @C_ID_ALLIANCE+3, 0, 750, 0, 0, 0, 0, 0, 'Remove 10% Buff on 25%-0% Horde Stecher2');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_BOSS, 'deDE', 'Cygnus', 'Anführer der Wilden Stecher', 12340);

-- Junger Stecher Boss Mob
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_ID_BOSS+1, 0, 0, 0, 0, 0, 4617, 0, 0, 0, 'Young Stabber', NULL, 'Attack', 0, 80, 80, 2, 14, 0, 1, 1.14286, 8.5, 0.6, 0, 0, 2, 1400, 2000, 1, 1, 4, 576, 2048, 1, 0, 0, 0, 0, 0, 7, 16, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 3, 1, 0.752, 0, 1, 0, 0, 0, 1, 268468229, 0, 72, '', NULL);
REPLACE INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_ID_BOSS+1, 0, 0, 0, 0, 0, 0, '1787');
REPLACE INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@C_ID_BOSS+1, 1, 50737, 50737, 0, 0);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = @C_ID_BOSS+1;
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = @C_ID_BOSS+1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@C_ID_BOSS+1, 0, 0, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 11, 36554, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Schattentanz'),
(@C_ID_BOSS+1, 0, 1, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 11, 6774, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Zerhäckseln');
REPLACE INTO `acore_world`.`creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@C_ID_BOSS+1, 'deDE', 'Junger Stecher', '', 12340);

-- Creature Spawns

-- Wilder Stecher Horde
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -804.705, -560.17, 15.2298, 1.71055, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+1, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -796.387, -626.756, 16.7971, 1.95071, 300, 7, 0, 73080, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+2, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -861.093, -606.88, 11.0783, 4.65776, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+3, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -884.337, -573.588, 10.0241, 1.45491, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+4, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -883.479, -524.053, 11.2743, 4.68641, 300, 0, 0, 73080, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+5, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -860.694, -455.35, 11.1392, 6.2474, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+6, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -799.825, -463.38, 15.9986, 1.94422, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+7, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -768.812, -485.493, 17.794, 0.887459, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+8, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -778.586, -511.45, 23.6123, 2.52701, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+9, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -835.07, -504.594, 15.4, 4.7112, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+10, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -856.342, -480.965, 13.3549, 3.1931, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+11, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -854.509, -590.636, 4.52002, 4.68989, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+12, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -847.028, -588.26, 18.546, 1.59485, 300, 4, 0, 73080, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+13, @C_ID_HORD, 0, 0, 0, 1, 1, 0, 1, -66.2222, -881.51, 57.3683, 1.07324, 300, 0, 0, 73080, 0, 0, 0, 0, 0, '', 0);

-- Wachen Horde
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+14, @C_ID_HORD+1, 0, 0, 0, 1, 1, 0, 0, 8.40667, -862.817, 57.9793, 3.37914, 300, 0, 0, 813120, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+15, @C_ID_HORD+1, 0, 0, 0, 1, 1, 0, 0, 5.57829, -850.511, 59.1954, 3.46458, 300, 0, 0, 813120, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+16, @C_ID_HORD+1, 0, 0, 0, 1, 1, 0, 0, -0.924978, -866.065, 58.4143, 3.57987, 300, 0, 0, 813120, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+17, @C_ID_HORD+1, 0, 0, 0, 1, 1, 0, 0, -4.58941, -853.045, 59.6744, 3.44394, 300, 0, 0, 813120, 0, 0, 0, 0, 0, '', 0);

-- Questgeber Horde
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+18, @C_ID_HORD+2, 0, 0, 0, 1, 1, 0, 0, 7.07342, -857.196, 58.5017, 3.43889, 300, 0, 0, 2904000, 0, 0, 0, 0, 0, '', 0);

-- Agressiver Stecher Horde
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+19, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -777.909, -564.846, 20.2491, 2.21275, 300, 10, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+20, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -762.922, -511.588, 20.3751, 4.08474, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+21, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -787.382, -599.14, 15.1515, 2.3286, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+22, @C_ID_HORD+3, 0, 0, 0, 1, 1, 0, 1, -816.909, -564.534, 16.4072, 4.88665, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+23, @C_ID_HORD+3, 0, 0, 0, 1, 1, 0, 1, -831.889, -558.469, 14.1655, 1.72779, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+24, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -852.715, -567.869, 11.0651, 2.06042, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+25, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -861.118, -563.024, 18.546, 4.72505, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+26, @C_ID_HORD+3, 0, 0, 0, 1, 1, 0, 1, -930.065, -523.641, 6.87963, 3.15428, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+27, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -879.032, -542.92, 7.62603, 0.156022, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+28, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -876.005, -493.072, 12.4533, 1.09956, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+29, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -869.876, -476.226, 13.3554, 3.15448, 300, 9, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+30, @C_ID_HORD+3, 0, 0, 0, 1, 1, 0, 1, -821.096, -494.241, 16.4525, 4.64186, 300, 5, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+31, @C_ID_HORD+3, 0, 0, 0, 1, 1, 2341, 1, -808.908, -513.613, 17.0961, 3.75043, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+32, @C_ID_HORD+3, 0, 0, 0, 1, 1, 0, 1, -833.868, -474.65, 14.2956, 1.51127, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0);

-- Machterfüllter Priester Horde
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+33, @C_ID_HORD+4, 0, 0, 0, 1, 1, 0, 1, -864.092, -488.139, 13.4421, 4.81734, 300, 0, 0, 69552, 26442, 0, 0, 0, 0, '', 0),
(@C_GUID+34, @C_ID_HORD+4, 0, 0, 0, 1, 1, 0, 1, -858.72, -488.13, 13.3574, 4.75843, 300, 0, 0, 69552, 26442, 0, 0, 0, 0, '', 0),
(@C_GUID+35, @C_ID_HORD+4, 0, 0, 0, 1, 1, 4281, 1, -849.946, -481.095, 14.8869, -3.13287, 300, 0, 0, 69552, 26442, 0, 0, 0, 0, '', 0);

-- Wilder Stecher Allianz
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+36, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -53.1161, -993.234, 54.3324, 4.18677, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+37, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, 4, -962, 55.9686, 0.223884, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+38, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -43.3267, -974.453, 56.8901, 6.21922, 300, 0, 0, 73080, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+39, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -4.66994, -940.026, 57.1608, 2.62519, 300, 4, 0, 73080, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+40, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -4.26205, -941.243, 61.9377, 2.7155, 300, 5, 0, 73080, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+41, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -19.3231, -939.879, 61.9321, 1.10701, 300, 0, 0, 73080, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+42, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -26.841, -911.397, 56.3896, 3.13414, 300, 0, 0, 73080, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+43, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -48.1976, -903.482, 57.2605, 0.17006, 300, 5, 0, 73080, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+44, @C_ID_ALLIANCE, 0, 0, 0, 1, 1, 0, 1, -8.24173, -904.304, 57.5446, 2.60007, 300, 5, 0, 73080, 0, 1, 0, 0, 0, '', 0);

-- Wachen Allianz
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+45, @C_ID_ALLIANCE+1, 0, 0, 0, 1, 1, 0, 1, -704.644, -513.915, 25.8031, 4.60342, 300, 0, 0, 1952300, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+46, @C_ID_ALLIANCE+1, 0, 0, 0, 1, 1, 0, 1, -722.713, -513.888, 25.6461, 4.80762, 300, 0, 0, 1952300, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+47, @C_ID_ALLIANCE+1, 0, 0, 0, 1, 1, 0, 1, -722.887, -493.286, 26.1637, 1.61655, 300, 0, 0, 1952300, 0, 0, 0, 0, 0, '', 0),
(@C_GUID+48, @C_ID_ALLIANCE+1, 0, 0, 0, 1, 1, 0, 1, -706.592, -493.933, 26.4654, 1.64247, 300, 0, 0, 1952300, 0, 0, 0, 0, 0, '', 0);

-- Questgeber Allianz
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+49, @C_ID_ALLIANCE+2, 0, 0, 0, 1, 1, 0, 0, -714.631, -506.982, 26.8235, 5.01963, 300, 0, 0, 2898192, 0, 0, 0, 0, 0, '', 0);

-- Agressiver Stecher Allianz
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+50, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -61.0129, -946.79, 55, 2.3242, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+51, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 0, 1, -31.0178, -985.005, 56.0525, 5.5514, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+52, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -22.0884, -961.757, 55.4516, 1.64247, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+53, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 0, 1, -37.0606, -929.047, 54.4399, 2.94327, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+54, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 0, 1, -5.73923, -925.969, 57.1724, 4.18892, 300, 5, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+55, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -5.51622, -937.391, 57.169, 1.1349, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+56, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 0, 1, 11.6591, -927.675, 57.2836, 0.520333, 300, 10, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+57, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -18.3858, -913.364, 55.7512, 3.20678, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+58, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -42.815, -900.927, 57.2619, 4.86006, 300, 3, 0, 78120, 0, 1, 0, 0, 0, '', 0),
(@C_GUID+59, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 2341, 1, -26.7583, -897.733, 56.036, 1.85589, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0),
(@C_GUID+60, @C_ID_ALLIANCE+3, 0, 0, 0, 1, 1, 0, 1, -59.8239, -892.605, 56.5184, 2.49954, 300, 0, 0, 78120, 0, 2, 0, 0, 0, '', 0);

-- Machterfüllter Priester Allianz
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+61, @C_ID_ALLIANCE+4, 0, 0, 0, 1, 1, 0, 1, -54.528, -970.805, 56.8908, 2.94211, 300, 0, 0, 69552, 26442, 0, 0, 0, 0, '', 0),
(@C_GUID+62, @C_ID_ALLIANCE+4, 0, 0, 0, 1, 1, 0, 1, -47.1696, -955.486, 56.1964, 5.74128, 300, 0, 0, 69552, 440700, 0, 0, 0, 0, '', 0),
(@C_GUID+63, @C_ID_ALLIANCE+4, 0, 0, 0, 1, 1, 4281, 1, -5.68055, -900.179, 57.5432, 0.652284, 300, 0, 0, 69552, 440700, 0, 0, 0, 0, '', 0);

-- Cygnus Boss
REPLACE INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@C_GUID+64, @C_ID_BOSS, 0, 0, 0, 1, 1, 4019, 0, -341.68, -713.593, 57.7345, 1.16387, 600, 0, 0, 264579, 0, 0, 0, 0, 0, '', 0);

-- Creature Spawn Addon (Auras+Paths+Emotes)

-- Wilder Stecher Horde
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_GUID, @WP_ID, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+2, @WP_ID+1, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+3, @WP_ID+2, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+5, @WP_ID+5, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+6, @WP_ID+7, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+7, @WP_ID+6, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+8, @WP_ID+8, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+9, @WP_ID+4, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+10, @WP_ID+3, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+11, @WP_ID+9, 0, 0, 0, 0, 0, '1787');

-- Agressiver Stecher Horde
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_GUID+20, @WP_ID+10, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+21, @WP_ID+11, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+22, @WP_ID+12, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+23, @WP_ID+12, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+24, @WP_ID+14, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+25, @WP_ID+15, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+26, @WP_ID+16, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+27, @WP_ID+17, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+28, @WP_ID+18, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+31, @WP_ID+19, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+32, @WP_ID+20, 0, 0, 0, 0, 0, '1787');

-- Wilder Stecher Allianz
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_GUID+36, @WP_ID+22, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+37, @WP_ID+25, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+38, @WP_ID+26, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+42, 0, 0, 0, 0, 69, 0, '1787');

-- Aggressiver Stecher
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_GUID+50, @WP_ID+21, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+51, @WP_ID+23, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+52, @WP_ID+24, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+53, @WP_ID+27, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+55, @WP_ID+29, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+57, @WP_ID+30, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+59, @WP_ID+31, 0, 0, 0, 0, 0, '1787'),
(@C_GUID+60, @WP_ID+32, 0, 0, 0, 0, 0, '1787');

-- Machterfüllter Priester Allianz
REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `isLarge`, `auras`) VALUES
(@C_GUID+61, 0, 0, 0, 0, 69, 0, '15473 48161 48073 48169 48168'),
(@C_GUID+62, 0, 0, 0, 0, 13, 0, '15473 48161 48073 48169 48168'),
(@C_GUID+63, 0, 0, 0, 0, 69, 0, '15473 48161 48073 48169 48168');

-- Quests
-- SET @Q_ID_HORD                          := 41840; -- Up to 3
-- SET @Q_ID_ALLIANCE                      := 41850; -- Up to 3

-- Weaken the alliance forces Horde
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD, 2, 80, 80, 267, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23800, 0, 0, 4168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 690, 'Weaken the alliance forces', 'When the attack started, we dashed forward to take the field as quickly as possible. Their armed forces were almost inexhaustible...&BWe underestimated them.%BThe enemy is coming... in large numbers.%BSeaten their defense by killing the Alliance\'s Wild Stabbers!&BOnly this way can we win the battle for our territory!', 'Kill 15 Wild Stabber and blow up the Explosive Wagon to unstablize the Allianz Defense.', '', 'Return to \"Grom Hellscream\" at the Tarrens Mill.', @C_ID_HORD+1, -@GOB_ID_HORD+1, 0, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Explosive Wagon blown up', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_HORD, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(@C_ID_HORD+2, @Q_ID_HORD);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_HORD+2, @Q_ID_HORD);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD, 'deDE', 'Allianz Streitkräfte schwächen', 'Als der Angriff begann, sind wir nach vorne geprescht, um das Feld so schnell wie möglich einzunehmen. Ihre Streitkräfte waren schier unerschöpflich...$BWir haben sie unterschätzt.$BDer Feind kommt... in großer Zahl.$BSchwächt ihre Verteidigung in dem ihr die Wilden Stecher der Allianz tötet!$BNur so können wir den Kampf um unser Territorium gewinnen!', 'Tötet 15 Wilde Stecher und sprengt den Sprengwagen um die Allianz Verteidigung zu schwächen.', '', 'Kehrt zurück zu \"Grom Höllschrei\" in der Tarrens Mühle.', '', 'Sprengwagen gesprengt', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 0, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 2, 1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 0, 0, 7, -857, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 0, -741, -547, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 1, -796, -634, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 2, -888, -599, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 3, -933, -523, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 4, -885, -438, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 1, 5, -757, -462, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD, 2, 0, -874, -502, 0);

-- WANTED: Cygnus, Leader of the Wild Stabbers Horde
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD+1, 2, 80, 80, 267, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23800, 0, 0, 4170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 690, 'WANTED: Cygnus, Leader of the Wild Stabbers', 'Find and Kill \"Cygnus, the leader of the wild stabbers\",$Bhe helps the stabbers of the Alliance to more strength with his presence!', '', '', 'Return to \"Grom Hellscream\" at the Tarrens Mill.', @C_ID_BOSS, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_HORD+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(@C_ID_HORD+2, @Q_ID_HORD+1);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_HORD+2, @Q_ID_HORD+1);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD+1, 'deDE', 'GESUCHT: Cygnus, Anführer der Wilden Stecher', 'Finde und töte \"Cygnus, den Anführer der wilden Stecher\",$Ber verhilft den Stechern der Allianz mit seiner Anwesenheit zu mehr Stärke!', '', '', 'Kehrt zurück zu \"Grom Höllschrei\" in der Tarrens Mühle.', '', '', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD+1, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD+1, 1, 0, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD+1, 0, 0, 7, -857, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD+1, 1, 0, -342, -714, 0);

-- Plans: Attack on Stormwind! Horde
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD+2, 2, 80, 80, 1519, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32800, 0, 0, 32842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 690, 'Plans: Attack on Stormwind!', 'Kill King Varian Wrynn in Stormwind.', 'We are a proud nation, and the war against the humans has tested even Thrall\'s great patience.$BYou know, our warchief is wise and prudent, and his nation always come first.$BAfter all, he\'s a diplomat and he has in his Time learned a lot from the humans kind.$BWe have been spying the Alliance for a while.$BThis map shows how we can fight back the Alliance.$BThe fierce fighting must be stopped!$B$BGood luck $C$bLok\'tar ogar!', '', 'Return to \"Grom Hellscream\" at the Tarrens Mill.', 29611, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_HORD+2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(@GOB_ID_HORD, @Q_ID_HORD+2);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_HORD+2, @Q_ID_HORD+2);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_HORD+2, 'deDE', 'Pläne: Angriff auf Sturmwind!', 'Wir sind ein stolzes Volk und der Krieg gegen die Menschen hat selbst Thralls große Geduld auf die Probe gestellt.$bWisst Ihr, unser Kriegshäuptling ist weise und umsichtig und sein Volk kommt stets an erster Stelle.$bLetztendlich ist er ein Diplomat und hat in seiner Zeit bei den Menschen viel von ihrer Art gelernt.$bWir haben die Allianz schon eine Weile ausgespäht.$BDiese Karte zeigt wie wir die Allianz zurückschlagen können.$bDie erbitterten Kämpfe müssen gestoppt werden!$b$bViel Glück $C$bLok\'tar ogar!', 'Tötet König Varian Wrynn in Sturmwind', '', 'Kehrt zurück zu \"Grom Höllschrei\" in der Tarrens Mühle.', '', '', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD+2, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_HORD+2, 1, 0, 0, 1519, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD+2, 0, 0, 7, -857, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_HORD+2, 1, 0, -8442, 333, 0);

-- Weaken the alliance forces Allianz
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE, 2, 80, 80, 267, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23800, 0, 0, 4104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 'Weaken the horde forces', 'When the attack started, we dashed forward to take the field as quickly as possible. Their armed forces were almost inexhaustible...&BWe underestimated them.%BThe enemy is coming... in large numbers.%BSeaten their defense by killing the Horde\'s Wilden Stecher!&BOnly this way can we win the battle for our territory!', 'Kill 15 Wild Stabber and blow up the Explosive Wagon to unstablize the Horde Defense.', '', 'Return to \"General Turalyon\" at the Southshore.', @C_ID_ALLIANCE, -@GOB_ID_ALLIANCE+1, 0, 0, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Explosive Wagon blown up', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_ALLIANCE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(@C_ID_ALLIANCE+2, @Q_ID_ALLIANCE);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_ALLIANCE+2, @Q_ID_ALLIANCE);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE, 'deDE', 'Horde Streitkräfte schwächen', 'Als der Angriff begann, sind wir nach vorne geprescht, um das Feld so schnell wie möglich einzunehmen. Ihre Streitkräfte waren schier unerschöpflich...$BWir haben sie unterschätzt.$BDer Feind kommt... in großer Zahl.$BSchwächt ihre Verteidigung in dem ihr die Wilden Stecher der Horde tötet!$BNur so können wir den Kampf um unser Territorium gewinnen!', 'Tötet 15 Wilde Stecher und sprengt den Sprengwagen um die Horde Verteidigung zu schwächen.', '', 'Kehrt zurück zu \"General Turalyon\" in Süderstade.', '', 'Sprengwagen gesprengt', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 0, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 2, 1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 0, 0, -715, -507, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 0, -78, -891, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 1, -78, -991, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 2, 26, -1001, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 3, 36, -917, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 1, 4, -43, -861, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE, 2, 0, -874, -502, 0);

-- WANTED: Cygnus, Leader of the Wild Stabbers Allianz
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE+1, 2, 80, 80, 267, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23800, 0, 0, 4168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 'WANTED: Cygnus, Leader of the Wild Stabbers', 'Find and Kill \"Cygnus, the leader of the wild stabbers\",$Bhe helps the stabbers of the Horde to more strength with his presence!', '', '', 'Return to \"General Turalyon\" at the Southshore.', @C_ID_BOSS, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_ALLIANCE+1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
(@C_ID_ALLIANCE+2, @Q_ID_ALLIANCE+1);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_ALLIANCE+2, @Q_ID_ALLIANCE+1);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE+1, 'deDE', 'GESUCHT: Cygnus, Anführer der Wilden Stecher', 'Finde und töte \"Cygnus, den Anführer der wilden Stecher\",$Ber verhilft den Stechern der Horde mit seiner Anwesenheit zu mehr Stärke!', '', '', 'Kehrt zurück zu \"General Turalyon\" in Süderstade.', '', '', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+1, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+1, 1, 0, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+1, 0, 0, -715, -507, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+1, 1, 0, -342, -714, 0);

-- Plans: Attack on Orgrimmar! Allianz
REPLACE INTO `acore_world`.`quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE+2, 2, 80, 80, 1637, 41, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32800, 0, 0, 32842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1101, 'Plans: Attack on Orgrimmar!', 'Kill Warchief Thrall in Orgrimmar', 'We were once the glorious Alliance, the wars against the Horde have cost us many sacrifices.$BOur King Varian Wrynn, who has always been suspicious of orcs, is known for his tenacity and indomitable will.$BAll his endeavors are aimed at protecting the interests of the Alliance.$BVarian\'s life was marked by many tragedies and conflicts.$BKing Varian Wrynn is now sure to put an end to this!$BHe sees it as his duty as King to bring Azeroth back into balance.$BThe bitter fighting must be stopped!$B$BGood luck $C$BLothar Lives!', '', 'Return to General Turalyon at the Southshore.', 4949, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 12340);
REPLACE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(@Q_ID_ALLIANCE+2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
REPLACE INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(@GOB_ID_ALLIANCE, @Q_ID_ALLIANCE+2);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(@C_ID_ALLIANCE+2, @Q_ID_ALLIANCE+2);
REPLACE INTO `acore_world`.`quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`)
VALUES (@Q_ID_ALLIANCE+2, 'deDE', 'Pläne: Angriff auf Orgrimmar!', 'Wir waren einst die gloreiche Allianz, die Kriege gegen die Horde haben uns einige Opfer gefordert.$BUnser König Varian Wrynn, der Orcs gegenüber schon immer misstrauisch war, ist für seine Beharrlichkeit und seinen unbeugsamen Willen bekannt.$BSein ganzes Bestreben gilt dem Schutz der Interessen der Allianz.$BVarians Leben wurde von vielen Tragödien und Konflikten geprägt.$BKönig Varian Wrynn ist sich nun sicher dem ein Ende zu bereiten!$BEr sieht es als Pflicht als König, Azeroth wieder in Gleichgewicht zu bringen.$BDie erbitterten Kämpfe müssen gestoppt werden!$B$BViel Glück $C$BLothar Lives!', 'Tötet Kriegshäuptling Thrall in Orgrimmar', '', 'Kehrt zurück zu \"General Turalyon\" in Süderstade.', '', '', '', '', 18019);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+2, 0, -1, 0, 267, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+2, 1, 0, 1, 1637, 0, 0, 1, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+2, 0, 0, -715, -507, 0);
REPLACE INTO `acore_world`.`quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES (@Q_ID_ALLIANCE+2, 1, 0, 1920, -4124, 0);

-- Game Event Creature

REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+1);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+2);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+3);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+4);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+5);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+6);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+7);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+8);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+9);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+10);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+11);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+12);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+13);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+14);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+15);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+16);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+17);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+18);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+19);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+20);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+21);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+22);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+23);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+24);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+25);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+26);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+27);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+28);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+29);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+30);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+31);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+32);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+33);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+34);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+35);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+36);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+37);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+38);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+39);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+40);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+41);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+42);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+43);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+44);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+45);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+46);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+47);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+48);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+49);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+50);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+51);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+52);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+53);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+54);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+55);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+56);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+57);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+58);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+59);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+60);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+61);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+62);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+63);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, @C_GUID+64);
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, -2610); -- Wache die man sonst moven müsste, wenn das Event an ist, wird dieser nicht gespawnt
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, -2612); -- Wache die man sonst moven müsste, wenn das Event an ist, wird dieser nicht gespawnt
REPLACE INTO `acore_world`.`game_event_creature` (`eventEntry`, `guid`) VALUES 
(@eventId, -2636); -- Wache die man sonst moven müsste, wenn das Event an ist, wird dieser nicht gespawnt

-- Game Event Gameobject

REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+1);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+2);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+3);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+4);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+5);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+6);
REPLACE INTO `acore_world`.`game_event_gameobject` (`eventEntry`, `guid`) VALUES
(@eventId, @GOB_GUID+7);
