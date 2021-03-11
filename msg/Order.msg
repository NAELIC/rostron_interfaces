# id of the robot
uint8 id

# Order velocity
geometry_msgs/Twist velocity

uint8 spin_power
bool tare_odom

# kick
uint8 NO_KICK=0
uint8 FLAT_KICK=1
uint8 CHIP_KICK=2

uint8 kick_type
uint8 kick_power