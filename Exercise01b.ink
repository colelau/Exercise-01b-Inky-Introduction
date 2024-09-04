/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 * Knot structure
 * Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrace of a cave. {not torch_pickup: There is a torch on the floor.} The cave extends to the east and west. 
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is very dark, you can barely see anything.
* {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
{not return_to_entrance: You can now see inside the east tunnel.} The light of your torch glints off of hundreds of skeletons in the room. There is water slowly dripping from the ceiling, creating small puddles on the rocky floor. At the end of the tunnel reveals a rotting wooden door.
+ [Walk to the door] -> inspect_door
+ [Inspect the skeletons] -> inspect_skeletons
* [Go back to the entrance] -> return_to_entrance
-> END

== west_tunnel_lit ==
The light of your torch reveals you have reached a dead end. 
+ [Go Back] -> cave_mouth
-> END

== inspect_door ==
There is a hole in the door where a doorknob should be. Peaking through the hole reveals another dark room.
+ [Open the door] -> open_door
-> END

== inspect_skeletons == 
These appear to be human skeletons. It's obvious they've been decaying for a while. You think to yourself, "What could have lead to this?"
+ [Go Back] -> east_tunnel_lit
-> END

== open_door ==
Walking into this room reveals a gold figurine perched atop a stone pillar. You have a feeling this room may be booby-trapped, so you proceed with caution. 
+ [Walk towards the figurine] -> near_figurine
-> END

== near_figurine ==
You use your torch to inspect the room before taking the figurine. You notice a trap door surrounding the stone pillar. You decide to reach for the figurine without stepping on the trap door.
+ [Reach for figurine] -> set_off_booby_trap
+ [Turn around and leave the room] -> exit_to_safety
-> END

== set_off_booby_trap ==
Picking up the figurine sets off a secret booby-trap. Rocks begin to tumble all around you. They fall in front of your only escape out of this room. You are now trapped for eternity. 
-> END 

== exit_to_safety ==
You got a bad feeling about trying to take that figurine, so you decide to leave the cave altogether and explore somewhere else.
-> END

== return_to_entrance ==
You are feeling afraid of what might be hiding deep within the tunnel.
+ [Go back inside the tunnel] -> east_tunnel_lit
+ [Leave] -> leave

== leave ==
You decided to not risk your life over exploring a creepy tunnel. You instead decide to go to McDonald's to get a Big Mac before heading home.
-> END

/*