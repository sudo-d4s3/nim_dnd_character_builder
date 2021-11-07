import std/strutils

proc get_name() =
        echo "Please Enter Your Character's Name:"
        let name = readLine(stdin)

proc get_race_and_subrace() =
        echo "Please Choose Your Race: (You can type the number or word)"
        echo "0 - Dwarf\n1 - Elf\n2 - Halfling\n3 - Human\n4 - Dragonborn\n5 - Gnome\n6 - Half-Elf\n7 - Half-Orc\n8 - Tiefling"
        let race = readLine(stdin)
        if normalize(race) == "dwarf" or normalize(race) == "0":
                echo "Please Choose Your Sub-Race:"
                echo "0 - Hill Dwarf"
                let subrace = readLine(stdin)
        elif normalize(race) == "elf" or normalize(race) == "1":
                echo "Please Choose Your Sub-Race:"
                echo "0 - High Elf"
                let subrace = readLine(stdin)
        elif normalize(race) == "halfling" or normalize(race) == "2":
                echo "Please Choose Your Sub-Race:"
                echo "0 - Lightfoot"
                let subrace = readLine(stdin)
        elif normalize(race) == "human" or normalize(race) == "3":
                echo "Please Choose Your Sub-Race:"
                echo "Sorry the SRD doesn't have any subraces for Humans"
                let subrace = readLine(stdin)
        elif normalize(race) == "dragonborn" or normalize(race) == "4":
                echo "Please Choose Your Sub-Race:"
                echo "0 - Black\n1 - Blue\n2 - Brass\n3 - Bronze\n4 - Copper\n5 - Gold\n6 - Green\n7 - Red\n8 - Silver\n9 - White"
                let subrace = readLine(stdin)
        elif normalize(race) == "Gnome" or normalize(race) == "5":
                echo "Please Choose Your Sub-Race:"
                echo "0 - Rock Gnome"
                let subrace = readLine(stdin)
        elif normalize(race) == "Half-Elf" or normalize(race) == "6":
                echo "Please Choose Your Sub-Race:"
                echo "Sorry the SRD doesn't have any subraces for Half-Elves"
                let subrace = readLine(stdin)
        elif normalize(race) == "Half-Orc" or normalize(race) == "7":
                echo "Please Choose Your Sub-Race:"
                echo "Sorry the SRD doesn't have any subraces for Half-Orcs"
                let subrace = readLine(stdin)
        elif normalize(race) == "Tiefling" or normalize(race) == "8":
                echo "Please Choose Your Sub-Race:"
                echo "Sorry the SRD doesn't have any subraces for Tieflings"
                let subrace = readLine(stdin)
        else:
                get_race_and_subrace()
        
proc get_class() =
        echo "0 - Barbarian\n1 - Bard\n2 - Cleric\n3 - Druid\n4 - Fighter\n5 - Monk\n6 - Paladin\n7 - Ranger\n8 - Rogue\n9 - Sorcerer\n10 - Warlock\n11 - Wizard\n(Only numbers work)"
        let class = readLine(stdin)
        if normalize(class) == "0" or normalize(class) == "1" or normalize(class) == "2" or normalize(class) == "3" or normalize(class) == "4" or normalize(class) == "5" or normalize(class) == "6" or normalize(class) == "7" or normalize(class) == "8" or normalize(class) == "9" or normalize(class) == "10" or normalize(class) == "11":
                echo ""
        else:
                get_class()

proc get_ability_scores() =
        echo "Please Set Your Ability Scores (Only Standard Array Works rn)"
        echo "Strength:"
        let str = readLine(stdin)
        echo "Dexterity:"
        let dex = readLine(stdin)
        echo "Intelligence:"
        let int = readLine(stdin)
        echo "Wisdom:"
        let wis = readLine(stdin)
        echo "Charisma:"
        let cha = readLine(stdin)

get_name()
get_race_and_subrace()
get_class()
get_ability_scores()
