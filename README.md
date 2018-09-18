# Sensor-Awareness-Database
A database that stores image, temperature, and GPS sensor-based observations.

### Database Overview
This is a design of a database to support "awareness" applications built on top of sensors and store sensor-based observations.

#### SENSOR
Sensor is the most important entity in our design. Every sensor has a unique id ( SID ) and a name. Every sensor belongs to 
one of the subclasses (total participation, disjoint) - Image Sensor , Temperature Sensor and GPS Sensor. A sensor can also 
be a Location Sensor . Each of the subclasses has a unique attribute. Image sensor has an attribute called resolution that 
can take one of the following values : “ 720×480”, “1280×720” and “2048×1080”. Temperature sensor has an attribute called 
“Metric System”, which can be “Celsius” or “Kelvin”. GPS sensor has an attribute “Power”, which is the power consumption per
hour of the sensor. Finally location sensor has an attribute called “real time”, which represents the sensors ability to 
detect the location in real time or not. 

#### SENSOR PLATFORM
Every Sensor Platform has sensor(s) . A sensor platform is nothing more than a group of sensors. A sensor 
platform must have (total participation) one or more sensors (1-N cardinality). For example, a smartphone is a sensor platform 
that has a GPS sensor and Image Sensor, i.e. camera. A sensor platform type can be Mobile or Fixed . Every mobile platform must
have location sensor attached to it. Also a sensor platform has to belong to one of the two subclasses, otherwise the data 
collected from it are not meaningful to us. A fixed platform is installed at a Location Object . Every Location Object has a 
unique identifier ( LOID ), a name, and a bounding box. Location objects can be one (total participation, disjoint) of the 
following categories: Rooms , Corridors or Open Areas . Rooms might be offices or meeting rooms or both (overlapping ISA). A 
room can be assigned to multiples persons. A location object might be part of of a Building’ s floor . Every building has a 
unique key ( BID), a name and an address. An address of build consists of a street, a city, a state, and a zip code. 

#### OBSERVATION
Every sensor collects observations. Different sensors collect different kinds of observations. Image sensors collect only Raw
Images , temperature sensors collect only Raw Temperatures and GPS sensors collect only Raw GPS . An observation is a weak 
entity that depends on a sensor. Each sensor collects multiple observations (1-N cardinality) and stores each of them along 
with a timestamp. An observation can be only one of the type described earlier (disjoint ISA). 

#### EVENT
An event is (total participation) is consisted of one or more activities. An event has a key ( EID) , a start and end time and 
a name. 

#### ACTIVITY
An activity is (total participation) derived from one or more observations. The same observations can create multiple activities
(N-M cardinality). For each activity we have a confidence level that tells us how accurate the activity is. An activity has a 
key ( AID) , a start and end time, type and a confidence. Start and end time are derived attributes, which are derived from 
the observations that describe the activity. An activity can have values from a specific list of actions, e.g. entering, 
walking, running, bending, standing, etc. An activity might take place at a location block (object). Multiple persons might
participate at an activity. 
