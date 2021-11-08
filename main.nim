import std/strutils
import std/osproc
import std/json

let race = ["Dwarf","Elf","Halfling","Human","Dragonborn","Gnome","Half_Elf","Half_Orc","Tiefling"]
let class = ["Barbarian","Bard","Cleric","Druid","Fighter","Monk","Paladin","Ranger","Rogue","Sorcerer","Warlock","Wizard"]

iterator count_to(n: int): int =
        var i = 0
        while i <= n:
                yield i
                inc i

proc get_name() =
        echo "Please Enter Your Character'S Name:"
        let usr_name = readline(stdin)

proc get_race_and_subrace() =
        echo "Please Choose Your Race: (Numbers Don't Work Yet)"
        let files = execCmdEx("ls srd/race/")
        var num = 0
        try:
                for race in split(files[0]):
                        let json_object = parseFile("srd/race/" & race )
                        echo num, " - ", json_object{"race"}.getStr
                        num += 1
        finally:
                let usr_race = normalize(readline(stdin))
                let json_object = parseFile("srd/race/" & usr_race & ".json")
                echo "Please Choose Your Subrace:"
                num = 0
                for subrace in json_object{"subrace"}:
                        echo num, " - ", subrace.getStr
                        num += 1
                let usr_subrace = normalize(readline(stdin))
                return
        
proc get_class() =
        echo "Please Choose Your Class:"
        let files = execCmdEX("ls srd/class/")
        var num = 0
        try:
                for class in split(files[0]):
                        let json_object = parseFile("srd/class/" & class )
                        echo num, " - ", json_object{"class"}.getStr
                        num += 1
        finally:
                let usr_class = normalize(readline(stdin))
                return

proc get_ability_scores() =
        echo "Please Set Your Ability Scores (Only Standard Array Works Rn)"
        echo "strength:"
        let str = readline(stdin)
        echo "dexterity:"
        let dex = readline(stdin)
        echo "intelligence:"
        let int = readline(stdin)
        echo "wisdom:"
        let wis = readline(stdin)
        echo "charisma:"
        let cha = readline(stdin)

get_name()
get_race_and_subrace()
get_class()
get_ability_scores()
