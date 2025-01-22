/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> kitchen
== kitchen ==
You're in your sunny kitchen. It's time for your morning cereal. First, you need a spoon, fruit, milk, and of course cereal.
+[Check Cabinet] ->cabinet
+[Check Drawer] ->drawer
+[Check Pantry] ->pantry
+[Check Fridge] ->fridge
+[Check Counter] ->counter

== cabinet ==
The cabinet creaks open. {banana: There is nothing inside.|Inside is a single banana.}
*[Pick Up Banana] -> banana
+[Go back] ->kitchen

== banana ==
You picked up the banana.
*[Go back] ->cabinet

== drawer ==
You open the drawer. Inside is a variety of untensils.
*[Take Spoon] -> spoon
+[Go back] -> kitchen

== spoon ==
You  took the spoon.
*[Go back] ->drawer

== pantry ==
You open the pantry. Inside is chips,{cereal: | a box of cereal,} crackers, cans, and bottled water.
*[Pick up Box of Cereal] ->cereal
+[Go Back] ->kitchen

== cereal ==
You pick up the box of cereal.
*[Go back] ->pantry

== fridge ==
You open the fridge. The light flickers on. {milk: Its's empty.|Inside is an almost empty milk container.}
*[Take Milk] ->milk
+[Go back] ->kitchen

== milk ==
You took the milk.
*[Go back] ->fridge

== counter ==
A counter with a single bowl on it. Perfect for assembling cereal.
*{banana} {spoon} {cereal} {milk} [Assemble Cereal] ->assemble
+[Go back] ->kitchen

== assemble ==
You start making your cereal. What do you start with?
*[Milk] ->milk_choice
*[Cereal] ->cereal_choice

== milk_choice ==
You monster.
*[Continue] ->done

== cereal_choice ==
The correct choice.
*[Continue] ->done

== done ==
You finished assembling your cereal.
*[Eat] ->end

== end ==
You eat the cereal. Did you enjoy it?
*[Yes] ->nice
*[No] ->sorry

== nice ==
Nice.
->DONE

== sorry ==
Damn. Sorry.
->DONE
