@echo off

set /a secretrandom1=%random%
set /a secretrandom2=%random%
set /a secretrandom3=%random%
set /a secretrandom4=%random%
set /a secretrandom5=%random%
set /a secretrandom6=%random%
set /a secretrandom7=%random%
set /a secretrandom8=%random%
set /a secretrandom9=%random%
set /a secretrandom10=%random%
set /a secretrandom11=%random%
set /a spirits=1

:restart
title Batchfile RPG
color 07
set /a lvl=1
set /a exp=0
set /a gold=10
set /a potion=2
set /a debug=0
set /a exptolvl=100
set /a swordlvl=0
set /a shieldlvl=0
set /a exp2=0
set /a swordprice=2
set /a shieldprice=2
set /a potprice=0
set /a potprice2=20
set /a priceupdate=0
set /a questnum=1
set /a questlvl=1
set /a critchance=0
set /a critchance2=0
set /a goldreward=0
set /a expreward=0
set /a inquest=0
set /a math1=0
set /a math2=0
set /a math3=0
set /a indlc=0
set /a dlcmission=0
set /a vamphp=0
set /a dlcchoice=0
set /a battleoption=0
set /a class=0
set /a overworldoption=0
set /a shopoption=0
set /a dlclvlreq=0
set /a dlcnum=0
set /a classchange=0
set /a classexp=0
set /a classexpadd=0
set /a slot1=0
set /a slot2=0
set /a slot3=0
set /a pass1=0
set /a pass2=0
set /a pass3=0
set /a pass4=0
set /a pass5=0
set /a pass6=0
set /a pass7=0
set /a pass8=0
set /a pass9=0
set /a pass10=0
set /a pass11=0
set /a exp1=0
set /a exp2=0
set /a exp3=0
set /a exp4=0
set /a totalexp=0
set /a begin=1
set /a quiz=0
set /a rbs=0
set /a rbswin=0
set /a rare=0
set /a rarecharm=0
set /a seasonevent=0
set /a holidayevent=0
set /a luckcharmdlc=0
set /a luckcharmchance=0
set /a luckcharmchance=%random% %%30
set /a secret=0
set /a festival=0
set /a festivalchain=0
set /a festivalchainhigh=0
set /a beingloaded=0
set /a colorchoice=0
set /a color=1

set month=%date:~4,2%
set day=%date:~7,2%

set /a bazaarchoice=0
set /a bazaarbet=10
set /a bazaarwin=0


if %debug% EQU 1 echo %month% %day%

if %debug% EQU 1 set /p month=month 
if %debug% EQU 1 set /p day=day 

if %month% EQU 01 set /a seasonevent=4
if %month% EQU 02 set /a seasonevent=4
if %month% EQU 03 set /a seasonevent=1
if %month% EQU 04 set /a seasonevent=1
if %month% EQU 05 set /a seasonevent=1
if %month% EQU 06 set /a seasonevent=2
if %month% EQU 07 set /a seasonevent=2
if %month% EQU 08 set /a seasonevent=2
if %month% EQU 09 set /a seasonevent=3
if %month% EQU 10 set /a seasonevent=3
if %month% EQU 11 set /a seasonevent=3
if %month% EQU 12 set /a seasonevent=4

if %month% EQU 10 if %day% EQU 09 set /a holidayevent=1
if %month% EQU 11 if %day% EQU 29 set /a holidayevent=2
if %month% EQU 12 if %day% EQU 25 set /a holidayevent=3







goto begin
===
Title
===
:begin
cls
if %debug%==1 echo Debug Enabled 
echo Batchfile RPG
echo      Alpha V 0.3.0
echo (1) New Game
echo (2) Load Game
set /p begin=
if %begin%==1 goto classselector
if %begin%==2 goto load
goto begin
===
CLASS
===
:classselector
cls
echo Select your class
echo (1) Warrior
echo (2) Tank
echo (3) Berserker
echo (4) Thief
echo (5) Spirit
set /p class=
if %class%==1 goto setwar
if %class%==2 goto settan
if %class%==3 goto setber
if %class%==4 goto setthi
if %class%==5 goto setspi
echo Not a valid choice.
pause
goto classselector
===
Class Setup
===
:setwar
set /a atk=5
set /a def=4
set /a hp=30
set /a hpmax=%hp%
set /a crit=1
set /a spd=3
set /a atkboost=3
set /a defboost=2
set /a hpboost=5
set /a critboost=1
set /a spdboost=1
set /a class=1
cls
goto stats
<><><>
:settan
set /a atk=2
set /a def=5
set /a hp=70
set /a hpmax=%hp%
set /a crit=0
set /a spd=1
set /a class=2
set /a atkboost=1
set /a defboost=4
set /a hpboost=15
set /a critboost=1
set /a spdboost=1
cls
goto stats
<><><>
:setber
set /a atk=9
set /a def=0
set /a hp=20
set /a hpmax=%hp%
set /a crit=2
set /a spd=5
set /a class=3
set /a atkboost=4
set /a defboost=1
set /a hpboost=1
set /a critboost=2
set /a spdboost=3
cls
goto stats
<><><>
:setthi
set /a atk=3
set /a def=2
set /a hp=35
set /a hpmax=%hp%
set /a crit=9
set /a spd=9
set /a class=4
set /a atkboost=2
set /a defboost=2
set /a hpboost=2
set /a critboost=3
set /a spdboost=3
cls
goto stats
<><><>
:setspi
set /a atk=1
set /a def=1
set /a hp=1
set /a hpmax=%hp%
set /a crit=1
set /a spd=1
set /a class=5
set /a atkboost=1
set /a defboost=1
set /a hpboost=1
set /a critboost=1
set /a spdboost=1
set /a rarecharm=3
cls
goto stats
<><><>
:setsec
set /a atk=7
set /a def=7
set /a hp=7
set /a hpmax=%hp%
set /a crit=7
set /a spd=7
set /a class=6
set /a atkboost=7
set /a defboost=7
set /a hpboost=7
set /a critboost=7
set /a spdboost=7
cls
goto stats
<><><>
===
Stats
===
:stats
set /a rare=%random% %%100
if %beingloaded% EQU 0 title Batchfile RPG: Looking at Stats
if %beingloaded% EQU 1 title Batchfile RPG: Loading Save Data...
cls
if %exp% GEQ %exptolvl% set /a exp2=%exp%
if %exp% GEQ %exptolvl% set /a exp=%exp% -%exptolvl%
if %exp2% GEQ %exptolvl% set /a exptolvl=%exptolvl% +50
if %beingloaded% EQU 1 echo Loading..... Please Wait..... This May Take Some Time.....
if %beingloaded% EQU 0 if %class%==1 echo Class: Warrior
if %beingloaded% EQU 0 if %class%==2 echo Class: Tank
if %beingloaded% EQU 0 if %class%==3 echo Class: Berserker
if %beingloaded% EQU 0 if %class%==4 echo Class: Thief
if %beingloaded% EQU 0 if %class%==5 echo Class: Spirit
if %beingloaded% EQU 0 if %class%==6 echo Class: Gambler
if %beingloaded% EQU 0 if %class%==7 echo Class: Knight
if %beingloaded% EQU 0 if %class%==8 echo Class: Wall
if %beingloaded% EQU 0 if %class%==9 echo Class: Dark Knight
if %beingloaded% EQU 0 if %class%==10 echo Class: Ninja
if %beingloaded% EQU 0 if %class%==11 echo Class: Angel
if %beingloaded% EQU 0 if %class%==12 echo Class: Merchant
if %beingloaded% EQU 0 if %class%==13 echo Class: Mushroom

if %beingloaded% EQU 0 echo LVL: %lvl%
if %beingloaded% EQU 0 echo EXP to next Level Up: %exp%/%exptolvl%
if %beingloaded% EQU 0 echo HP: %hpmax%
if %beingloaded% EQU 0 echo ATK: %atk% (+%swordlvl%)
if %beingloaded% EQU 0 if %rare% LEQ 5 echo DEF: %def% (10 - %secretrandom10%)
if %beingloaded% EQU 0 if %rare% GTR 5 echo DEF: %def% (+%shieldlvl%)
if %beingloaded% EQU 0 echo SPD: %spd%
if %beingloaded% EQU 0 echo CRIT: %crit%
if %debug%==1 echo HP %hpboost%
if %debug%==1 echo ATK %atkboost%
if %debug%==1 echo DEF %defboost%
if %debug%==1 echo SPD %spdboost%
if %debug%==1 echo Crit %critboost%
if %beingloaded% EQU 0 pause
cls
if %beingloaded% EQU 1 echo Loading..... Please Wait..... This May Take Some Time.....
if %beingloaded% EQU 0 if %exp% GEQ %exptolvl% echo You leveled up!
if %beingloaded% EQU 0 if %exp% GEQ %exptolvl% pause
if %exp% GEQ %exptolvl% set /a hpmax=%hpmax% +%hpboost%
if %exp% GEQ %exptolvl% set /a hp=%hpmax%
if %exp% GEQ %exptolvl% set /a atk=%atk% +%atkboost%
if %exp% GEQ %exptolvl% set /a def=%def% +%defboost%
if %exp% GEQ %exptolvl% set /a spd=%spd% +%spdboost%
if %exp% GEQ %exptolvl% set /a crit=%crit% +%critboost%
if %exp% GEQ %exptolvl% set /a lvl=%lvl% +1
if %exp% GEQ %exptolvl% goto stats
set /a beingloaded=0
if %indlc%==1 goto dlcmission%dlcmission%
if %inquest%==1 goto questcomplete
goto overworld
==============================================================================================================================
OVERWORLD
==============================================================================================================================
:overworld
set /a beingloaded=0
set /a inquest=0
set /a rare=%random% %%100
title Batchfile RPG: In the Overworld
cls
echo.
echo                  (1)
echo                 Wilds
echo.
echo Quests (2)                  (3) Shop
if %holidayevent% EQU 1 echo             Happy Birthday
if %holidayevent% EQU 2 echo             Happy Birthday
if %holidayevent% EQU 1 echo                 Tony!
if %holidayevent% EQU 2 echo                Althea!
if %holidayevent% EQU 3 echo                 Merry
if %holidayevent% EQU 3 echo               Christmas!
if %holidayevent% EQU 0 echo. 
if %holidayevent% EQU 0 echo. 
echo  Stats (4)                  (5) Otherworld
echo.                               
echo            (6)         (7)
echo         Save Game    Bazaar
echo.
echo                          Level: %lvl%
echo                          EXP: %exp%/%exptolvl%
if %rare% LEQ 5 echo                          HP: %hp%/4 - %secretrandom4%
if %rare% GTR 5 echo                          HP: %hp%/%hpmax%
echo                          Potion Amount: %potion%
echo                          Lucky Charms: %rarecharm%
set /p overworldoption=
if %overworldoption%==1 goto battle
if %overworldoption%==2 goto quest%questnum%
if %overworldoption%==3 goto shop
if %overworldoption%==4 goto stats
if %overworldoption%==5 goto dlc
if %overworldoption%==6 goto save
if %overworldoption%==7 goto bazaar
if %overworldoption%==8 goto custom
if %overworldoption%==2147483647 goto battle2147483647
goto overworld
==============================================================================================================================
Battles
==============================================================================================================================
:battle
set /a battlechoice=%random% %%7
set /a rare=%random% %%1000
set /a rare=%rare% -%rarecharm%

if %debug%==1 echo bat:%battlechoice% rare:%rare%
if %debug%==1 pause

if %rare% LEQ 100 set /a battlechoice=%random% %%4
if %rare% LEQ 0 goto battle20%battlechoice%
if %rare% LEQ 100 goto battle10%battlechoice%


if %battlechoice%==1 goto battle1
if %battlechoice%==2 goto battle2
if %battlechoice%==3 goto battle3
if %battlechoice%==4 goto battle4
if %battlechoice%==5 goto battle5
if %battlechoice%==6 goto battle6
if %battlechoice%==0 goto battle0
--
:battle0
title Batchfile RPG: Fighting a Bear!
set /a atkenemy=5
set /a defenemy=5
set /a hpenemy=5
set /a expgain=6
set /a goldgain=5
set /a battle=0
set /a lvlenemy=%random% %%8
set /a lvlenemy=%lvlenemy% +1 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +3
set /a defenemy=%lvlenemy% + %defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle0enm
set /a rare=%random% %%100
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Bear
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 if %rare% LEQ 5 echo (2) Potion (8 - %secretrandom8%)
if %potion% GEQ 1 if %rare% GTR 5 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle0enm
=================================================================================================
:battle1
title Batchfile RPG: Fighting a Slime!
set /a atkenemy=3
set /a defenemy=6
set /a hpenemy=3
set /a expgain=5
set /a goldgain=7
set /a battle=1
set /a lvlenemy=%random% %%10
set /a lvlenemy=%lvlenemy% +1 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +3
set /a defenemy=%lvlenemy% + %defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle1enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Slime
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle1enm
=================================================================================================
:battle2
title Batchfile RPG: Fighting a Dragon!
set /a atkenemy=18
set /a defenemy=17
set /a hpenemy=11
set /a expgain=9
set /a goldgain=15
set /a battle=2
set /a lvlenemy=%random% %%10
set /a lvlenemy=%lvlenemy% +1 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +3
set /a defenemy=%lvlenemy% + %defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle2enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Dragon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle2enm
=================================================================================================
:battle3
title Batchfile RPG: Fighting a Harpy!
set /a atkenemy=9
set /a defenemy=1
set /a hpenemy=9
set /a expgain=7
set /a goldgain=8
set /a battle=3
set /a lvlenemy=%random% %%9
set /a lvlenemy=%lvlenemy% +3 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +3
set /a defenemy=%lvlenemy% + %defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle3enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Harpy
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle3enm
=================================================================================================
:battle4
title Batchfile RPG: Fighting an Elemental!
set /a atkenemy=2
set /a defenemy=9999
set /a hpenemy=1
set /a expgain=1
set /a goldgain=0
set /a battle=4
set /a lvlenemy=%random% %%24
set /a lvlenemy=%lvlenemy% +5 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% *%atkenemy%
set /a defenemy=%lvlenemy% *%defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%hpenemy%
set /a goldgain=%lvlenemy% *%goldgain%
:battle4enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Elemental
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle4enm
=================================================================================================
:battle5
title Batchfile RPG: Fighting an Elf!
set /a atkenemy=3
set /a defenemy=3
set /a hpenemy=3
set /a expgain=3
set /a goldgain=6
set /a battle=5
set /a lvlenemy=%random% %%5
set /a lvlenemy=%lvlenemy% +7 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% 
set /a defenemy=%lvlenemy% + %defenemy% +3
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle5enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Elf
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle5enm
=================================================================================================
:battle6
title Batchfile RPG: Fighting a Skeleton!
set /a atkenemy=6
set /a defenemy=1
set /a hpenemy=4
set /a expgain=4
set /a goldgain=4
set /a battle=6
set /a lvlenemy=%random% %%7
set /a lvlenemy=%lvlenemy% +2 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +2
set /a defenemy=%lvlenemy% + %defenemy% -3
set /a hpenemy=%lvlenemy% *%hpenemy% +3
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle6enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Skeleton
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle6enm
=================================================================================================

:battle100
title Batchfile RPG: Fighting a sapphire slime!
set /a atkenemy=13
set /a defenemy=13
set /a hpenemy=13
set /a expgain=90
set /a goldgain=50
set /a battle=100
set /a lvlenemy=%random% %%10
set /a lvlenemy=%lvlenemy% +9 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +4
set /a defenemy=%lvlenemy% + %defenemy% +6
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle100enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Sapphire Slime
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle100enm
=================================================================================================
:battle101
title Batchfile RPG: Fighting an emerald dragon!
set /a atkenemy=35
set /a defenemy=29
set /a hpenemy=19
set /a expgain=90
set /a goldgain=90
set /a battle=101
set /a lvlenemy=%random% %%20
set /a lvlenemy=%lvlenemy% +15 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +19
set /a defenemy=%lvlenemy% + %defenemy% +9
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle101enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Emerald Dragon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle101enm
=================================================================================================
:battle102
title Batchfile RPG: Fighting a ruby skeleton!
set /a atkenemy=18
set /a defenemy=7
set /a hpenemy=9
set /a expgain=40
set /a goldgain=60
set /a battle=102
set /a lvlenemy=%random% %%35
set /a lvlenemy=%lvlenemy% +9 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% 
set /a defenemy=%lvlenemy% + %defenemy% +3
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle102enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Ruby Skeleton
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle102enm
=================================================================================================
:battle103
title Batchfile RPG: Fighting a topaz bear!
set /a atkenemy=15
set /a defenemy=15
set /a hpenemy=15
set /a expgain=60
set /a goldgain=75
set /a battle=103
set /a lvlenemy=%random% %%15
set /a lvlenemy=%lvlenemy% +12 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +8
set /a defenemy=%lvlenemy% + %defenemy% +9
set /a hpenemy=%lvlenemy% *%hpenemy% +17
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle103enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Topaz Bear
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle103enm
=================================================================================================
:battle200
title Batchfile RPG: Fighting an amethyst hydra!
set /a atkenemy=35
set /a defenemy=27
set /a hpenemy=38
set /a expgain=800
set /a goldgain=800
set /a battle=200
set /a lvlenemy=%random% %%20
set /a lvlenemy=%lvlenemy% +19 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +35
set /a defenemy=%lvlenemy% + %defenemy% +27
set /a hpenemy=%lvlenemy% *%hpenemy% +38
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle200enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Amethyst Hydra
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle200enm
=================================================================================================
:battle201
title Batchfile RPG: Fighting a diamond unicorn!
set /a atkenemy=20
set /a defenemy=48
set /a hpenemy=66
set /a expgain=600
set /a goldgain=734
set /a battle=201
set /a lvlenemy=%random% %%77
set /a lvlenemy=%lvlenemy% +7 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +7
set /a defenemy=%lvlenemy% + %defenemy% +7
set /a hpenemy=%lvlenemy% *%hpenemy% +7
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle201enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Diamond Unicorn
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle201enm
=================================================================================================
:battle202
title Batchfile RPG: Fighting a peridot centaur!
set /a atkenemy=97
set /a defenemy=26
set /a hpenemy=45
set /a expgain=318
set /a goldgain=240
set /a battle=202
set /a lvlenemy=%random% %%5
set /a lvlenemy=%lvlenemy% +7 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% +64
set /a defenemy=%lvlenemy% + %defenemy% +37
set /a hpenemy=%lvlenemy% *%hpenemy% +95
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle202enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Peridot Centaur
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle202enm
=================================================================================================
:battle203
title Batchfile RPG: Fighting an alexandrite Carbuncle!
set /a atkenemy=21
set /a defenemy=21
set /a hpenemy=98
set /a expgain=215
set /a goldgain=360
set /a battle=203
set /a lvlenemy=%random% %%5
set /a lvlenemy=%lvlenemy% +7 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% 
set /a defenemy=%lvlenemy% + %defenemy% +3
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle203enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Alexandrite Carbuncle
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle203enm
=================================================================================================




:battle991
title Batchfile RPG: Fighting an Evil Slime!
set /a atkenemy=1
set /a defenemy=2
set /a hpenemy=3
set /a expgain=5
set /a goldgain=7
set /a battle=991
set /a lvlenemy=3 +%questlvl%
set /a atkenemy=%lvlenemy% *%atkenemy%
set /a defenemy=%lvlenemy% *%defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle991enm
set /a rare=%random% %%100
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
if %rare% LEQ 5 title Batchfile RPG: 6 - %secretrandom6%
if %rare% GTR 5 title Batchfile RPG: Fighting an Evil Slime!
cls
echo Enemy: Evil Slime
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle991enm
=================================================================================================
:battle992
title Batchfile RPG: Fighting a thief!
set /a atkenemy=2
set /a defenemy=2
set /a hpenemy=6
set /a expgain=2
set /a goldgain=16
set /a battle=992
set /a lvlenemy=4 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle992enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Thief
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle992enm
=================================================================================================
:battle993
title Batchfile RPG: Fighting a minotaur!
set /a atkenemy=4
set /a defenemy=2
set /a hpenemy=6
set /a expgain=23
set /a goldgain=5
set /a battle=993
set /a lvlenemy=8 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle993enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Minotaur
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle993enm
=================================================================================================
:battle994
title Batchfile RPG: Fighting a golem!
set /a atkenemy=2
set /a defenemy=6
set /a hpenemy=6
set /a expgain=30
set /a goldgain=50
set /a battle=994
set /a lvlenemy=9 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle994enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Golem
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle994enm
=================================================================================================
:battle995
title Batchfile RPG: Fighting a chimera!
set /a atkenemy=5
set /a defenemy=3
set /a hpenemy=6
set /a expgain=23
set /a goldgain=5
set /a battle=995
set /a lvlenemy=6 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle995enm
set /a rare=%random% %%100
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Chimera
echo Level: %lvlenemy%
if %rare% LEQ 5 echo HP: 1 - %secretrandom1%
if %rare% GTR 5 echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle995enm
=================================================================================================
:battle996
title Batchfile RPG: Fighting a dopple!
set /a atkenemy=1
set /a defenemy=1
set /a hpenemy=1
set /a expgain=%exp%
set /a goldgain=%gold%
set /a battle=996
set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%atk% +(%questlvl% *%atkboost%)
set /a defenemy=%def% +(%questlvl% *%defboost%)
set /a hpenemy=%hpmax%
:battle996enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Dopple
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle996enm
=================================================================================================
:battle997
title Batchfile RPG: Fighting a vampire!
set /a atkenemy=4
set /a defenemy=3
set /a hpenemy=8
set /a expgain=23
set /a goldgain=5
set /a battle=997
set /a lvlenemy=7 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a vamphp=%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle997enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
set /a hpenemy=%hpenemy% +%damamge%
if %hpenemy% GEQ %vamphp% set /a hpenemy=%vamphp%
cls
echo Enemy: Vampire
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle997enm
=================================================================================================
:battle998
title Batchfile RPG: Fighting the King Dragon, Viirsnogaff!
set /a atkenemy=5
set /a defenemy=5
set /a hpenemy=6
set /a expgain=75
set /a goldgain=65
set /a battle=998
set /a lvlenemy=10 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle998enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Viirsnogaff
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle998enm
=================================================================================================

:battle2147483647
title B@tcHfi1e rP6: Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a Fighting a !
set /a atkenemy=%random%
set /a defenemy=%random%
set /a hpenemy=%random%
set /a expgain=%random%
set /a goldgain=%random%
set /a battle=2147483647
set /a lvlenemy=%random% 
set /a lvlenemy=%lvlenemy%
set /a atkenemy=%lvlenemy% + %atkenemy% 
set /a defenemy=%lvlenemy% + %defenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle2147483647enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: ##############################################################################################################################################################################
echo Level: %random%%lvlenemy%%random%%random%%lvlenemy%
echo HP: %random%%random%%hpenemy%%random%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %random%%lvl%%random%%random%
echo HP: %random%%random%%hp%%random%/%random%%hpmax%%random%%random%
echo.
echo (%random%) Attack
if %potion% GEQ 1 echo (%random%) Potion (%potion%)
if %potion% GEQ 1 echo (%random%) Run
if %potion%==0 echo (%random%) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle2147483647enm
=================================================================================================

==========
Battle Commands
==========
:Attack
set /a damamge=%atk% -%defenemy%
set /a damamge=%damamge% +%swordlvl%
set /a critchance= %random% %%101
if %critchance% LEQ %crit% set /a damamge=%damamge% *3
if %damamge% LEQ 0 set /a damamge=1
set /a hpenemy=%hpenemy% -%damamge%
if %debug%==1 echo dmg %damamge%
if %debug%==1 echo crit %critchance%
if %debug%==1 echo critper %crit%
if %debug%==1 echo ehp %hpenemy%
set /a damamge=%atkenemy% -%def%
set /a damamge=%damamge% -%shieldlvl%
if %damamge% LEQ 0 set /a damamge=1
set /a hp=%hp% -%damamge%
if %debug%==1 echo dmg %damamge%
if %debug%==1 echo hp %hp%
if %debug%==1 pause
if %critchance% LEQ %crit% echo CRITICAL HIT!!!
if %critchance% LEQ %crit% pause
goto battle%battle%enm
---
:pot
if %potion%==0 goto run
if %potion% GEQ 1 set /a hpheal=%hpmax% /2
if %potion% GEQ 1 set /a hp=%hp% +%hpheal%\
if %hp% GEQ %hpmax% set /a hp=%hpmax%
if %potion% GEQ 1 set /a potion=%potion% -1
goto battle%battle%enm
---
:run
set /a runchance=%random% %%101
set /a runchance=%runchance% +%spd%
if %runchance% GEQ 50 set /a inquest=0
if %runchance% GEQ 50 set /a indlc=0
if %runchance% GEQ 50 goto Overworld
if %runchance% LEQ 50 echo It failed!
pause
set /a damamge=%atkenemy% -%def%
set /a damamge=%damamge% -%shieldlvl%
if %damamge% LEQ 0 set /a damamge=1
set /a hp=%hp% -%damamge%
if %debug%==1 echo dmg %damamge%
if %debug%==1 echo hp %hp%
if %debug%==1 pause
goto battle%battle%enm
---
====
Win
====
:winbattle
cls

set /a rare=%random% %%1000
set /a rare=%rare% -%rarecharm%

set /a hp=%hpmax%
set /a exp=%expgain% +%exp%
set /a gold=%gold% +%goldgain%
if %rare% LEQ 50 set /a potion=%potion% +1
echo You win!
echo You gained %expgain% Exp Points! (%exp%/%exptolvl%)
echo You got %goldgain% Gold! (Total: %gold%)
if %rare% LEQ 50 echo You found a potion! (Total: %potion%)
pause
cls
if %exp% GEQ %exptolvl% echo You leveled up!
if %exp% GEQ %exptolvl% pause
if %exp% GEQ %exptolvl% set /a hpmax=%hpmax% +%hpboost%
if %exp% GEQ %exptolvl% set /a hp=%hpmax%
if %exp% GEQ %exptolvl% set /a atk=%atk% +%atkboost%
if %exp% GEQ %exptolvl% set /a def=%def% +%defboost%
if %exp% GEQ %exptolvl% set /a spd=%spd% +%spdboost%
if %exp% GEQ %exptolvl% set /a crit=%crit% +%critboost%
if %exp% GEQ %exptolvl% set /a lvl=%lvl% +1
if %exp% GEQ %exptolvl% goto stats
if %indlc%==1 goto dlcmission%dlcmission%
if %inquest%==1 goto questcomplete
goto overworld
====
Lose
====
:lose
set /a rare=%random% %%100
cls
if %rare% LEQ 5 echo 2 - %secretrandom2%
if %rare% GTR 5 echo You lose!
pause
goto restart


==============================================================
SHOP
==============================================================
:shop
if %debug%==1 set /a gold=2147483647
title Batchfile RPG: Shopping in the Store
set /a potprice2=%lvl% *2
set /a potprice=%potprice2% +20
cls
echo.
echo (1) Level up sword (Price:%swordprice%) (Current Level: %swordlvl%)
echo (2) Level up shield (Price:%shieldprice%) (Current Level: %shieldlvl%)
echo (3) Potion (Price:%potprice%) (Total: %potion%)
echo (4) Exit                                  (Gold: %gold%)
set /p shopoption=
if %shopoption%==1 goto shopsword
if %shopoption%==2 goto shopshield
if %shopoption%==3 goto shoppot
if %shopoption%==4 goto overworld
goto shop
------
:shopsword
set /a priceupdate=%swordprice%
if %gold% GEQ %swordprice% set /a swordlvl=%swordlvl% +1
if %swordprice%==1073741824 set /a swordprice=536870912
if %gold% GEQ %swordprice% set /a priceupdate=%swordprice% *2
if %gold% GEQ %swordprice% set /a gold=%gold% -%swordprice%
set /a swordprice=%priceupdate%
goto shop
------
:shopshield
set /a priceupdate=%shieldprice%
if %gold% GEQ %shieldprice% set /a shieldlvl=%shieldlvl% +1
if %shieldprice%==1073741824 set /a shieldprice=536870912
if %gold% GEQ %shieldprice% set /a priceupdate=%shieldprice% *2
if %gold% GEQ %shieldprice% set /a gold=%gold% -%shieldprice%
set /a shieldprice=%priceupdate%
goto shop
------
:shoppot
if %gold% GEQ %potprice% set /a potion=%potion% +1
if %gold% GEQ %potprice% set /a gold=%gold% -%potprice%
goto shop
------
==============================================================
QUESTS
==============================================================
:quest0
cls
goto overworld

:quest1
cls
echo Can you help defeat this puzzle I've been stuck on?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=40 *%questlvl%
if %questoption%==1 set /a goldreward=50 *%questlvl%
if %questoption%==1 goto quest1puzzle
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest2
cls
echo Can you help defeat this slime attacking my farm?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=35 *%questlvl%
if %questoption%==1 set /a goldreward=95 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle991
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest3
cls
echo Can you help defeat this puzzle I've been stuck on?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=80 *%questlvl%
if %questoption%==1 set /a goldreward=10 *%questlvl%
if %questoption%==1 goto quest3puzzle
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest4
cls
echo Help! Defeat this thief robbing my village!
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=45 *%questlvl%
if %questoption%==1 set /a goldreward=45 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle992
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest5
cls
echo Can you help me explore this dungeon?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=50 *%questlvl%
if %questoption%==1 set /a goldreward=50 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto quest5puzzle
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest6
cls
echo Can you help defeat this golem attacking my village?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=35 *%questlvl%
if %questoption%==1 set /a goldreward=95 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle994
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest7
cls
echo Can you help defeat this summoned chimera?
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=45 *%questlvl%
if %questoption%==1 set /a goldreward=55 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle995
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest8
cls
echo Hey... I think I saw you in the village attacking people!
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=30 *%questlvl%
if %questoption%==1 set /a goldreward=30 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle996
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest9
cls
echo Help! A vampire is attacking the village!
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=55 *%questlvl%
if %questoption%==1 set /a goldreward=55 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle997
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest10
cls
echo Help! The King Dragon Viirsnogaff has revived!
echo (1) Take Quest
echo (2) Maybe Later
set /p questoption=
if %questoption%==1 set /a expreward=250 *%questlvl%
if %questoption%==1 set /a goldreward=250 *%questlvl%
if %questoption%==1 set /a inquest=1
if %questoption%==1 goto battle998
if %questoption%==2 goto overworld
goto quest%questnum%
--------
:quest11
set /a questnum=1
goto quest%questnum%
--------


====
:questcomplete
set /a beingloaded=0
cls
set /a inquest=0
if %questnum%==5 set /a questlvl=questlvl +3
if %questnum%==10 set /a questlvl=questlvl +5

if %questnum%==5 set /a priceupdate=%swordprice%
if %questnum%==5 set /a swordlvl=%swordlvl% +1
if %questnum%==5 set /a priceupdate=%swordprice% *2
if %questnum%==5 set /a swordprice=%priceupdate%

if %questnum%==10 set /a priceupdate=%shieldprice%
if %questnum%==10 set /a shieldlvl=%shieldlvl% +1
if %questnum%==10 set /a priceupdate=%shieldprice% *2
if %questnum%==10 set /a shieldprice=%priceupdate%

echo You completed Quest #%questnum%!
set /a questnum=questnum +1
set /a exp=%exp%+%expreward%
set /a gold=%gold%+%goldreward%
echo You earned %expreward% EXP. (%exp%/%exptolvl%)
echo You earned %goldreward% Gold. (Total: %gold%)
if %questnum%==6 echo You earned a sword upgrade!
if %questnum%==11 echo You earned a shield upgrade!

pause
cls
if %exp% GEQ %exptolvl% echo You leveled up!
if %exp% GEQ %exptolvl% pause
if %exp% GEQ %exptolvl% set /a hp=%hp% +%hpboost%
if %exp% GEQ %exptolvl% set /a hpmax=%hp%
if %exp% GEQ %exptolvl% set /a atk=%atk% +%atkboost%
if %exp% GEQ %exptolvl% set /a def=%def% +%defboost%
if %exp% GEQ %exptolvl% set /a spd=%spd% +%spdboost%
if %exp% GEQ %exptolvl% set /a crit=%crit% +%critboost%
if %exp% GEQ %exptolvl% set /a lvl=%lvl% +1
if %exp% GEQ %exptolvl% goto stats
goto overworld


=================================================================
Quests
=================================================================
:quest1puzzle
set /a math1=%random%
set /a math2=%random%
set /a math3=%math1% + %math2%
set /a rare=%random% %%100
cls
if %rare% LEQ 5 echo What is the answer to the following math problem? (type '7 - %secretrandom7%' to leave)
if %rare% GTR 5 echo What is the answer to the following math problem? (type '99' to leave)
echo               %math1% + %math2%
if %debug%==1 echo %math3%
set /p questionans=
if %questionans%==%math3% goto questcomplete
if %questionans%==/cheater goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest1puzzle


:quest3puzzle
set /a quiz=%random% %%6
goto quest3puzzle%quiz%
:quest3puzzle0
cls
echo What is the chance that you can get this answer right by guessing randomly? (type '99' to leave)
echo     1) 25 percent     3) 50 percent
echo.
echo     2) 0 percent      4) 25 percent
set /p questionans=
if %questionans%==99 goto questcomplete
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle1
cls
echo Four points are chosen at random on the surface of a sphere. What is the probability that the center of the sphere lies inside the tetrahedron whose vertices are at the four points, as a fraction? (type '99' to leave)
echo Type your answer.
set /p questionans=
if %questionans%==1/8 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle2
cls
echo There are 640 marbles in a bag. There are red, blue, and green marbles. After losing a total of 47 green and blue marbles, there are a total of 113 green and blue marbles left. Assuming you still had all the marbles, what are the odds of drawing a red marble two times in a row? (type '99' to leave)
echo     1) 9/16     3) 8/3
echo.
echo     2) 7/15      4) 1/640
set /p questionans=
if %questionans%==1 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle3
set /a rare=%random% %%100
cls
echo What is the answer to life, the universe, and everything? (type '99' to leave)
echo     1) Paperclips                                         3) 42
echo.
echo     2) There is no answer, as anybody is                  4) dank memes boi
echo        allowed to go on any path they so wish
set /p questionans=
if %questionans%==3 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle4
set /a rare=%random% %%100
cls
echo Two carts, Cart A and Cart B, simultaneously depart Station A and Station B. Station A and Station B are 252.5 miles apart from each other. Cart A is moving at 124.7mph towards Station B, and Cart B is moving at 253.5mph towards Station A. If both carts departed at 10:00AM and it is now 10:08, how much longer until both carts pass each other? (type '99' to leave)
echo     1) 16.232 minutes     3) 32.058 minutes

if %rare% LEQ 5 echo                     9 - %secretrandom9%
if %rare% GTR 5 echo.
echo     2) 32.054 minutes     4) 32.049 minutes
set /p questionans=
if %questionans%==3 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle5
cls
echo Which of the following is the lowest number? (type '99' to leave)
echo     1) V     3) X
echo.
echo     2) M     4) I
set /p questionans=
if %questionans%==4 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%

:quest3puzzle#
cls
echo What is the chance that you can get this answer right by guessing randomly? (type '99' to leave)
echo     1) 25 percent     3) 50 percent
echo.
echo     2) 0 percent      4) 25 percent
set /p questionans=
if %questionans%==1234 goto questcomplete
if %questionans%==99 goto overworld
echo Incorrect!
pause
goto :quest3puzzle%quiz%



:quest5puzzle
:quest5dungeon1
cls
echo You see 3 different paths. Which do you go down? (type '99' to leave)
echo (1) The left one, with a glow coming from it
echo (2) The right one, with darkness pouring out
echo (3) The middle one, where growls are heard
set /p questionans=
if %questionans%==1 goto quest5dungeon2
if %questionans%==2 goto quest5dungeon3
if %questionans%==3 goto quest5dungeon4
if %questionans%==99 goto overworld
goto quest5dungeon1
:quest5dungeon2
cls
echo You see 3 different paths. Which do you go down? (type '99' to leave)
echo (1) The left one, with bricks crumbling down the passageway
echo (2) The right one, where sunlight bleeds through
echo (3) The middle one, where fire is heard from within
set /p questionans=
if %questionans%==1 goto quest5dungeon3
if %questionans%==2 goto quest5dungeon1
if %questionans%==3 goto quest5dungeon4
if %questionans%==99 goto overworld
goto quest5dungeon2
:quest5dungeon3
set /a rare=%random% %%100
cls

echo You see 3 different paths. Which do you go down? (type '99' to leave)
if %rare% LEQ 5 echo (1) The left one, where 3 - %secretrandom3%
if %rare% GTR 5 echo (1) The left one, where you can smell blood
echo (2) The right one, where a human scream is heard
echo (3) The middle one, where a shimmer of silver can be seen.
set /p questionans=
if %questionans%==1 goto quest5dungeon2
if %questionans%==2 goto quest5dungeon1
if %questionans%==3 goto quest5dungeon4
if %questionans%==99 goto overworld
goto quest5dungeon3
:quest5dungeon4
cls
echo You are in the arena, with a minotaur in the middle. (type '99' to leave)
echo (1) Attack
set /p questionans=
if %questionans%==1 goto battle993
if %questionans%==99 goto overworld
goto quest5dungeon4

=================================================================
BLANKS FOR STUFF
=================================================================

:battle[NUMBERHERE]
title Batchfile RPG: Fighting a!
set /a atkenemy=3
set /a defenemy=3
set /a hpenemy=3
set /a expgain=3
set /a goldgain=6
set /a battle=#
set /a lvlenemy=%random% %%5
set /a lvlenemy=%lvlenemy% +7 +%questlvl%
if %lvlenemy% GTR %lvl% set /a lvlenemy=%lvl% +%questlvl%
set /a atkenemy=%lvlenemy% + %atkenemy% 
set /a defenemy=%lvlenemy% + %defenemy% +3
set /a hpenemy=%lvlenemy% *%hpenemy% +2
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle[NUMBERHERE]enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: 
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle[NUMBERHERE]enm
=================================================================================================


credit: u/DragoniteChamp


=================================================================================================
:dlc
cls
echo Select your alternate world to enter. (type '99' to leave)
echo (1) Shrine of Evolution
echo (2) Original Ones
echo (3) High Stakes Slots
echo (4) The Shrooms
echo (5) Shining Gold
echo (6) Vampire Kingdom
echo (7) Clockwork Tower
echo (8) The Drygin Realm
echo (9) Parousia
if %seasonevent% EQU 1 echo (10) Cherry Blossom Festival
if %seasonevent% EQU 2 echo (10) Summer Seasonal Event
if %seasonevent% EQU 3 echo (10) Tombstone Rumble
if %seasonevent% EQU 4 echo (10) Snow Ball
set /p dlcchoice=
if %dlcchoice%==1 goto dlc1
if %dlcchoice%==2 goto dlc2
if %dlcchoice%==3 goto dlc3
if %dlcchoice%==4 goto dlc4
if %dlcchoice%==5 goto dlc5
if %dlcchoice%==6 goto dlc6
if %dlcchoice%==7 goto dlc7
if %dlcchoice%==8 goto dlc8
if %dlcchoice%==9 goto dlc9
if %dlcchoice%==10 goto dlc10
if %dlcchoice%==99 goto overworld
goto dlc
========================================================================================================================================
:dlc1
set /a dlclvlreq=15
set /a dlcmission=1
cls
echo Shrine of Evolution Bonus Quest (Level Required 15)
echo.
echo     "The journey to true power ends with going down another journey..."
echo       This quest allows any of the base classes to achieve their true strength!
if %lvl% GEQ 15 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 15 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc1
========================================================================================================================================
:dlc2
set /a dlclvlreq=5
set /a dlcmission=2
cls
echo Original Ones Bonus Quest (Level Required 5)
echo.
echo     "Sometimes, you have to take a step back and look where you started..."
echo       This quest allows you to change into any of the base classes.
if %lvl% GEQ 5 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 5 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc2
========================================================================================================================================
:dlc3
set /a dlclvlreq=7
set /a dlcmission=3
cls
echo High Stakes Slots Bonus Quest (Level Required 7)
echo.
echo     "Even the luckiest have to take chances"
echo       Completing this quest rewards you with the option to change into a new 
echo       class!
if %lvl% GEQ 7 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 7 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc3
========================================================================================================================================
:dlc4
set /a dlclvlreq=10
set /a dlcmission=4
cls
echo The Shrooms Bonus Quest (Level Required 10)
echo.
echo     "Sometimes, life is better together.."
echo       Completing this quest rewards you with the option to change into a new 
echo       class!
if %lvl% GEQ 10 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 10 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc4
========================================================================================================================================
:dlc5
set /a dlclvlreq=13
set /a dlcmission=5
cls
echo Shining Gold Bonus Quest (Level Required 13)
echo.
echo     "Starting with a fortune isn't as rewarding as earning one."
echo       Completing this quest rewards you with the option to change into a new 
echo       class!
if %lvl% GEQ 13 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 13 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc5
========================================================================================================================================
:dlc6
set /a dlclvlreq=28
set /a dlcmission=6
cls
echo Vampire Kingdom Bonus Quest (Level Required 28)
echo.
echo     "The blood of the vampire is a true treasure indeed."
echo       This quest takes you through the dark kingdom, long forgotten to time, now 
echo       infested with vampires who drain your HP.
if %lvl% GEQ 28 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 28 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc6
========================================================================================================================================
:dlc7
set /a dlclvlreq=40
set /a dlcmission=7
cls
echo Clockwork Tower Bonus Quest (Level Required 40)
echo.
echo               "Time passes, but isn't forgotten."
echo       This quest takes you through a tower with many automaton!
if %lvl% GEQ 40 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 40 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc7
========================================================================================================================================
:dlc8
set /a dlclvlreq=70
set /a dlcmission=8
set /a rare=%random% %%100
cls
if %rare% LEQ 5 echo The Drygin Realm Bonus Quest (Level Required 5 - %secretrandom5%)
if %rare% GTR 5 echo The Drygin Realm Bonus Quest (Level Required 70)
echo.
echo     "Even the darkest ones have a spotlight to stand in."
echo       This quest takes you through the underworld and allows you to fight it's
echo       many demons.
if %lvl% GEQ 70 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 70 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc8
========================================================================================================================================
:dlc9
set /a dlclvlreq=100
set /a dlcmission=9
cls
echo Parousia Bonus Quest (Level Required 100)
echo.
echo     "When it comes to it, we're all insignificant in the long run..."
echo       One cannot easily comprehend the coming of the original one
if %lvl% GEQ 100 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 100 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc9
========================================================================================================================================
:dlc10
set /a dlclvlreq=25
if %seasonevent% EQU 1 goto dlc101
if %seasonevent% EQU 2 goto dlc102
if %seasonevent% EQU 3 goto dlc103
if %seasonevent% EQU 4 goto dlc104
goto dlc

:dlc101
set /a dlcmission=101
cls
echo Cherry Blossom Festival Bonus Quest (Level Required 25)
echo.
echo     "In the cherry blossom's shade there's no such thing as a stranger."
echo       Participate in a spring festival!
if %lvl% GEQ 25 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 25 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc101

:dlc102
set /a dlcmission=102
cls
echo  Bonus Quest (Level Required 25)
echo.
echo     "When it comes to it, we're all insignificant in the long run..."
echo       Participate in a summer festival!
if %lvl% GEQ 25 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 25 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc102

:dlc103
set /a dlcmission=103
cls
echo Tombstone Rumble Bonus Quest (Level Required 25)
echo.
echo     "It's a monster brawl, and you're the human they've chosen!"
echo       Participate in a autumn festival!
if %lvl% GEQ 25 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 25 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc103

:dlc104
set /a dlcmission=104
cls
echo Snow Ball Bonus Quest (Level Required 25)
echo.
echo     "Life is like a snowflake—transient, translucent, adventurous, ephemeral, and beautiful."
echo       Participate in a winter ball!
if %lvl% GEQ 25 echo                (1) Take Quest     (2) Maybe Later
if %lvl% LSS 25 echo                (You cannot take this quest yet) (2) Maybe Later
set /p dlcchoice=
if %dlcchoice%==1 goto testdlc
if %dlcchoice%==2 goto dlc
goto dlc104
========================================================================================================================================
========================================================================================================================================
:testdlc
if %lvl% GEQ %dlclvlreq% goto dlcmission%dlcmission%
if %lvl% LSS %dlclvlreq% goto dlc%dlcmission%
goto overworld
=========================
:dlcmission1
set /a indlc=1
cls
echo As you travel through the darkness, a spirit appears before you..
echo       "Come, and allow me to test your abilities..."
pause
set /a dlcmission=12
goto battle9991
:dlcmission12
echo "You show potential... Allow me to evolve you......."
set /a dlcmission=13
pause
if %class%==1 set /a classchanger=7
if %class%==2 set /a classchanger=8
if %class%==3 set /a classchanger=9
if %class%==4 set /a classchanger=10
if %class%==5 set /a classchanger=11
if %class% LEQ 5 goto classchange
cls
echo "Hmm, you seem to not be able to become stronger..., I apologize..."
pause
:dlcmission13
cls
echo "That is all I can do! Go on, brave hero!
pause
goto dlcquestcomplete
=========================
:dlcmission2
set /a indlc=1
cls
echo A white spirit appears in the forest...
echo     "You... you seem lost...."
pause
cls
echo "You should see the errors of your ways...."
pause
echo "...and start anew..."
set /a dlcmission=22
goto battle9992
:dlcmission22
set /a dlcmission=23
cls
echo Select your base class to see the error of your way.
echo (1) Warrior
echo (2) Tank
echo (3) Berserker
echo (4) Thief
echo (5) Spirit
set /p classchanger=
if %classchanger% LEQ 0 set /a classchanger=6
if %classchanger% LEQ 5 goto classchange
goto dlcmission22
:dlcmission23
goto dlcquestcomplete
=========================
:dlcmission3
set /a indlc=1
cls
echo A giant slot machine drops from the sky.
pause
cls
echo It transformed into a woman!
pause
set /a dlcmission=32
goto battle9993
:dlcmission32
set /a dlcmission=33
cls
echo I can take you under my wing, if you so wish.
echo   (1) Yes           (2) No
set /p questionans=
if %questionans%==1 set /a classchanger=6
if %questionans%==1 goto classchange
if %questionans%==2 cls
if %questionans%==2 echo Ah, tis but a shame, farewell traveler.
if %questionans%==2 pause
if %questionans%==2 goto dlcmission33
goto dlcmission32
:dlcmission33
goto dlcquestcomplete
=========================
:dlcmission4
set /a indlc=1
cls
echo You bite into a strage looking mushroom.
pause
cls
echo Suddenly, colors look weird and a mushroom(?) is trying to fight you!
pause
set /a dlcmission=42
goto battle9994
:dlcmission42
set /a dlcmission=43
echo Eat the defeated mushroom?
echo   (1) Yes        (2) No
set /p questionans=
if %questionans%==1 set /a classchanger=13
if %questionans%==1 goto classchange
if %questionans%==2 goto dlcquestcomplete
goto dlcmission42
:dlcmission43
goto dlcquestcomplete
=========================
:dlcmission5
set /a indlc=1
cls
echo "So, you think you can beat me?"
pause
cls
echo "Well, let's just see if you can beat me!" (type '99' to leave)
pause
:dlcmission51
set /a rbs=%random% %%3
set /a rbs=%rbs% +1
cls
echo  (1) Rock
echo  (2) Paper
echo  (3) Scissors
set /p questionans=
if %rbs%==1 echo She picked rock!
if %rbs%==2 echo She picked paper!
if %rbs%==3 echo She picked scissors!

pause

if %questionans%==1 if %rbs%==1 echo "Arg! A tie!"
if %questionans%==1 if %rbs%==1 pause
if %questionans%==1 if %rbs%==3 goto dlcmission52
if %questionans%==1 if %rbs%==2 goto dlcmission53

if %questionans%==2 if %rbs%==2 echo "Arg! A tie!"
if %questionans%==2 if %rbs%==2 pause
if %questionans%==2 if %rbs%==1 goto dlcmission52
if %questionans%==2 if %rbs%==3 goto dlcmission53

if %questionans%==3 if %rbs%==3 echo "Arg! A tie!"
if %questionans%==3 if %rbs%==3 pause
if %questionans%==3 if %rbs%==2 goto dlcmission52
if %questionans%==3 if %rbs%==1 goto dlcmission53

if %questionans%==99 goto overworld
goto dlcmission51
:dlcmission52
echo "Arg! You won...."
pause
echo "You seem like a good merchant.."
pause
echo "You should become my apprentice!"
pause
:dlcmission55
echo Become her apprentice?
echo   (1) Yes        (2) No
set /p questionans=
if %questionans%==1 set /a dlcmission=56
if %questionans%==1 set /a classchanger=12
if %questionans%==1 goto classchange
if %questionans%==2 cls
if %questionans%==2 echo "It's your loss."
if %questionans%==2 pause
if %questionans%==2 goto dlcquestcomplete
goto dlcmission55

:dlcmission56
goto dlcquestcomplete

:dlcmission53
echo "Haha! I win!"
pause
echo "And for losing, I'm taking 200 Gold!"
pause
set /a gold=%gold% -200
goto overworld


=========================
:dlcmission6
set /a indlc=1
set /a luckcharmdlc=1
cls
echo A great castle is before you, with a blood moon risen above it...
pause
cls
echo As you walk in, a vampire attacks you!
pause
set /a dlcmission=61
goto battle99961
:dlcmission61
cls
echo As you shake off the defeated vampire, you continue forward toward the castle throne room...
pause
cls
echo Suddenly, another vampire falls from the ceiling!
pause
set /a dlcmission=62
goto battle99962
:dlcmission62
cls
echo The vampire is defeated, but before you is the lord of vampires, Dreadroot.
pause
cls
echo "Mortal! You have come into my castle and slayed my people!"
pause
cls
echo "You must be destroyed, however...."
pause
cls
set /a dlcmission=63
:dlcmission6r
echo "I will offer you the vampiric ability, all it requires is being bit by a royal vampire, such as myself!"
echo (Do you take his offer?)
echo (1) Yes (2) No
set /p questionans=
cls
if %questionans%==1 echo "Come here, and take my bite."
if %questionans%==1 pause
if %questionans%==1 cls
if %questionans%==1 echo Suddenly, poison is flowing through your veins! It was a trick! Your HP has been quartered!
if %questionans%==1 pause
if %questionans%==1 set /a hp=%hp% /4
if %questionans%==1 goto battle99963
if %questionans%==2 cls
if %questionans%==2 echo "You dare defy me!"
if %questionans%==2 pause
if %questionans%==2 cls
if %questionans%==2 echo "Die!"
if %questionans%==2 pause
if %questionans%==2 goto battle99963
goto dlcmission6r
:dlcmission63
goto dlcquestcomplete
=========================
:dlcmission7
set /a indlc=1
set /a luckcharmdlc=1
cls
echo You enter the great clocktower.
pause
cls
echo The first guardian, a clockwork spider attacks.
pause
set /a dlcmission=71
goto battle99971
:dlcmission71
cls
echo The second guardian, a clockwork golem attacks.
pause
set /a dlcmission=72
goto battle99972
:dlcmission72
cls
echo The final guardian, a majestic clockwork dragon attacks.
pause
set /a dlcmission=73
goto battle99973
:dlcmission73
goto dlcquestcomplete
=========================
:dlcmission8
set /a indlc=1
set /a luckcharmdlc=1
cls
echo You enter the Drygin Realm through a mysterious portal...
pause
cls
echo The minor demon appears, wielding a dark greatsword.
pause
set /a dlcmission=81
goto battle99981
:dlcmission81
cls
echo The overlord demon appears from the blood skies!
pause
set /a dlcmission=82
goto battle99982
:dlcmission82
cls
echo The archdemon appears before their mighty castle!
pause
set /a dlcmission=83
goto battle99983
:dlcmission83
goto dlcquestcomplete
=========================
:dlcmission9
set /a indlc=1
cls
echo "...It has come to this...."
pause
cls
echo "...You've come this far...."
pause
cls
echo "...You're too strong...."
pause
cls
echo "...."
pause
cls
echo "...I need to elimate you...."
pause
cls
echo "...Face the wraith of god!"
pause
set /a dlcmission=92
goto battle9999
:dlcmission92
cls
echo "...hmm...."
pause
cls
echo "...You have true strength...."
pause
cls
echo "...Even enough to match mine...."
pause
cls
echo "...unfortunatly...."
pause
color 0D
cls
echo "...you still need to be banished...."
pause
color 0F
title Batchfile RPG: You win!
cls
echo                    You win!
echo       CONGLATURATION!       YAY!      
echo.
echo                     (C) DC2017-2018
echo.
echo Final Stats:
if %class%==1 echo Class: Warrior
if %class%==2 echo Class: Tank
if %class%==3 echo Class: Berserker
if %class%==4 echo Class: Thief
if %class%==5 echo Class: Spirit

if %class%==6 echo Class: Gambler

if %class%==7 echo Class: Knight
if %class%==8 echo Class: Wall
if %class%==9 echo Class: Dark Knight
if %class%==10 echo Class: Ninja
if %class%==11 echo Class: Angel

if %class%==12 echo Class: Merchant
if %class%==13 echo Class: Mushroom

echo LVL: %lvl%
echo EXP to next Level Up: %exp%/%exptolvl%
echo HP: %hpmax%
echo ATK: %atk% (+%swordlvl%)
echo DEF: %def% (+%shieldlvl%)
echo SPD: %spd%
echo CRIT: %crit%
echo Lucky Charms: %rarecharm%
pause
goto dlcquestcomplete

=========================
:dlcmission101
set /a indlc=1
set /a luckcharmdlc=1
set /a festival=1
cls
echo In this festival, you'll battle 'till you can't battle no more!
pause
cls
set /a dlcmission=1012
:dlcmission1012
cls
echo Ready for the next battle?
echo Current Chain: %festivalchain%
echo Hi-Score: %festivalchainhigh%
pause
set /a %festivalbattle%=%random% %%3
goto battle999101%festivalbattle%

:festivallose1
cls
echo Ah, better luck next time. Good game!
pause
goto dlcquestcomplete
=========================
:dlcmission102
set /a indlc=1
set /a luckcharmdlc=1
set /a festival=2
cls
echo In this festival, you'll battle 'till you can't battle no more!
pause
cls
set /a dlcmission=1022
:dlcmission1022
cls
echo Ready for the next battle?
echo Current Chain: %festivalchain%
echo Hi-Score: %festivalchainhigh%
pause
set /a %festivalbattle%=%random% %%3
goto battle999102%festivalbattle%

:festivallose2
cls
echo Ah, better luck next time. Good game!
pause
goto dlcquestcomplete
=========================
:dlcmission103
set /a indlc=1
set /a luckcharmdlc=1
set /a festival=3
cls
echo In this festival, you'll battle 'till you can't battle no more!
pause
cls
set /a dlcmission=1032
:dlcmission1032
cls
echo Ready for the next battle?
echo Current Chain: %festivalchain%
echo Hi-Score: %festivalchainhigh%
pause
set /a %festivalbattle%=%random% %%3
goto battle999103%festivalbattle%

:festivallose3
cls
echo Ah, better luck next time. Good game!
pause
goto dlcquestcomplete
=========================
:dlcmission104
set /a indlc=1
set /a luckcharmdlc=1
set /a festival=4
cls
echo In this festival, you'll battle 'till you can't battle no more!
pause
cls
set /a dlcmission=1042
:dlcmission1042
cls
echo Ready for the next battle?
echo Current Chain: %festivalchain%
echo Hi-Score: %festivalchainhigh%
pause
set /a %festivalbattle%=%random% %%3
goto battle999104%festivalbattle%

:festivallose4
cls
echo Ah, better luck next time. Good game!
pause
goto dlcquestcomplete
=========================


:winbattlefestival
goto dlcmission%dlcmission%












=================================================================================================
:dlcquestcomplete
set /a luckcharmchance=%random% %%30
set /a indlc=0
cls
echo You completed a bonus quest!
if %luckcharmdlc% EQU 1 if %luckcharmchance% LEQ 10 set /a rarecharm=%rarecharm% +1
if %luckcharmdlc% EQU 1 if %luckcharmchance% LEQ 10 echo You found a lucky charm!

pause
set /a luckcharmdlc=0
goto overworld

========================================================================================================================================

=================================================================================================
:battle9991
title Batchfile RPG: Shrine of Evolution: Fighting the Guardian of Evolution!
set /a atkenemy=3
set /a defenemy=4
set /a hpenemy=8
set /a expgain=50
set /a goldgain=2
set /a battle=9991
set /a lvlenemy=13 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle9991enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Guardian of Evolution
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9991enm
=================================================================================================
:battle9992
title Batchfile RPG: Original Ones: Fighting the Spirit of Originality!
set /a atkenemy=2
set /a defenemy=2
set /a hpenemy=15
set /a expgain=0
set /a goldgain=0
set /a battle=9992
set /a lvlenemy=6 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle9992enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Spirit of Originality
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9992enm
=================================================================================================
:battle9993
title Batchfile RPG: High Stakes Slots: Fighting Fortuna, the Goddess of Chance!
set /a atkenemy=7
set /a defenemy=7
set /a hpenemy=77
set /a expgain=7
set /a goldgain=777
set /a battle=9993
set /a lvlenemy=7 +(%questlvl% *7)
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle9993enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Fortuna, the Goddess of Chance
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9993enm
=================================================================================================
:battle9994
title Batchfile RPG: The Shrooms: Fighting a mushroom?
set /a atkenemy=1
set /a defenemy=3
set /a hpenemy=37
set /a expgain=3
set /a goldgain=3
set /a battle=9994
set /a lvlenemy=12 +%questlvl%
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle9994enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Mushroom?
echo Level: %lvlenemy%?
echo HP: %hpenemy%?
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9994enm
=================================================================================================
:battle99961
title Batchfile RPG: Vampire Kingdom: Fighting a minor vampire!
set /a atkenemy=6
set /a defenemy=4
set /a hpenemy=30
set /a expgain=18
set /a goldgain=7
set /a battle=99961
set /a lvlenemy=11 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a vamphp=%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99961enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
set /a hpenemy=%hpenemy% +%damamge%
if %hpenemy% GEQ %vamphp% set /a hpenemy=%vamphp%
cls
echo Enemy: Minor Vampire
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99961enm
=================================================================================================
:battle99962
title Batchfile RPG: Vampire Kingdom: Fighting a guardian vampire!
set /a atkenemy=9
set /a defenemy=7
set /a hpenemy=39
set /a expgain=24
set /a goldgain=15
set /a battle=99962
set /a lvlenemy=15 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a vamphp=%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99962enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
set /a hpenemy=%hpenemy% +%damamge%
if %hpenemy% GEQ %vamphp% set /a hpenemy=%vamphp%
cls
echo Enemy: Guardian Vampire
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99962enm
=================================================================================================
:battle99963
title Batchfile RPG: Vampire Kingdom: Fighting the Vampire Lord, Dreadroot!
set /a atkenemy=18
set /a defenemy=10
set /a hpenemy=59
set /a expgain=99
set /a goldgain=100
set /a battle=99963
set /a lvlenemy=29 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a vamphp=%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99963enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
set /a hpenemy=%hpenemy% +%damamge%
if %hpenemy% GEQ %vamphp% set /a hpenemy=%vamphp%
cls
echo Enemy: Dreadroot
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99963enm
=================================================================================================

:battle99971
title Batchfile RPG: Clockwork Tower: Fighting a clockwork spider!
set /a atkenemy=8
set /a defenemy=9
set /a hpenemy=57
set /a expgain=65
set /a goldgain=99
set /a battle=99971
set /a lvlenemy=33 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99971enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Clockwork Spider
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99971enm
=================================================================================================
:battle99972
title Batchfile RPG: Clockwork Tower: Fighting a clockwork golem!
set /a atkenemy=11
set /a defenemy=13
set /a hpenemy=114
set /a expgain=83
set /a goldgain=117
set /a battle=99972
set /a lvlenemy=55 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99972enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Clockwork Golem
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99972enm
=================================================================================================
:battle99973
title Batchfile RPG: Clockwork Tower: Fighting a clockwork dragon!
set /a atkenemy=19
set /a defenemy=22
set /a hpenemy=350
set /a expgain=150
set /a goldgain=225
set /a battle=99973
set /a lvlenemy=55 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99973enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Clockwork Dragon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99973enm
=================================================================================================
:battle99981
title Batchfile RPG: The Drygin Realm: Fighting a minor demon!
set /a atkenemy=30
set /a defenemy=15
set /a hpenemy=120
set /a expgain=666
set /a goldgain=225
set /a battle=99981
set /a lvlenemy=60 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99981enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Minor Demon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99981enm
=================================================================================================
:battle99982
title Batchfile RPG: The Drygin Realm: Fighting an overlord demon!
set /a atkenemy=45
set /a defenemy=25
set /a hpenemy=240
set /a expgain=666
set /a goldgain=450
set /a battle=99982
set /a lvlenemy=65 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99982enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Overlord Demon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99982enm
=================================================================================================
:battle99983
title Batchfile RPG: The Drygin Realm: Fighting the archdemon!
set /a atkenemy=66
set /a defenemy=66
set /a hpenemy=666
set /a expgain=666
set /a goldgain=666
set /a battle=99983
set /a lvlenemy=73 +%questlvl%
set /a atkenemy=%atkenemy% *3 +%lvlenemy%
set /a defenemy=%defenemy% *3 +%lvlenemy%
set /a hpenemy=%lvlenemy% *3 +%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle99983enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Archdemon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle99983enm
=================================================================================================

:battle9991010
title Batchfile RPG: Cherry Blossom Festival: Fighting a cherry ninja!
set /a atkenemy=%festivalchain%
set /a defenemy=%festivalchain%
set /a hpenemy=%festivalchain% *3
set /a expgain=%festivalchain%
set /a goldgain=0
set /a battle=9991011
set /a lvlenemy=%festivalchain%
set /a atkenemy=%atkenemy% +%lvlenemy% +2
set /a defenemy=%defenemy% +%lvlenemy% +2
set /a hpenemy=%lvlenemy% +%lvlenemy% +2
set /a expgain=%lvlenemy% +%expgain%
set /a goldgain=0
:battle9991011enm
if %hpenemy% LEQ 0 goto winbattlefestival
if %hp% LEQ 0 goto festivallose%festival%
cls
echo Enemy: Cherry Ninja
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9991011
=================================================================================================
:battle9991011
title Batchfile RPG: Cherry Festival: Fighting a cherry dragon!
set /a atkenemy=%festivalchain% *2
set /a defenemy=%festivalchain% *2
set /a hpenemy=%festivalchain% *4
set /a expgain=%festivalchain% *2
set /a goldgain=0
set /a battle=9991011
set /a lvlenemy=%festivalchain%
set /a atkenemy=%atkenemy% +%lvlenemy% +7
set /a defenemy=%defenemy% +%lvlenemy% +7
set /a hpenemy=%lvlenemy% +%lvlenemy% +7
set /a expgain=%lvlenemy% +%expgain%
set /a goldgain=0
:battle9991011enm
if %hpenemy% LEQ 0 goto winbattlefestival
if %hp% LEQ 0 goto festivallose%festival%
cls
echo Enemy: Cherry Dragon
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9991011
=================================================================================================
:battle9991012
title Batchfile RPG: Cherry Blossom Festival: Fighting a cherry treant!
set /a atkenemy=%festivalchain% /2
set /a defenemy=%festivalchain% *3
set /a hpenemy=%festivalchain% *7
set /a expgain=%festivalchain%
set /a goldgain=0
set /a battle=9991012
set /a lvlenemy=%festivalchain%
set /a atkenemy=%atkenemy% +%lvlenemy% +5
set /a defenemy=%defenemy% +%lvlenemy% +5
set /a hpenemy=%lvlenemy% +%lvlenemy% +20
set /a expgain=%lvlenemy% +%expgain%
set /a goldgain=0
:battle9991012enm
if %hpenemy% LEQ 0 goto winbattlefestival
if %hp% LEQ 0 goto festivallose%festival%
cls
echo Enemy: Cherry Treant
echo Level: %lvlenemy%
echo HP: %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
goto :battle9991012
=================================================================================================


















:battle9999
title Batchfile RPG: Parousia: Fighting Sokmjir, the Original One!
set /a atkenemy=65
set /a defenemy=65
set /a hpenemy=900
set /a expgain=0
set /a goldgain=999999
set /a battle=9999
set /a lvlenemy=90 *(%questlvl% +1)
set /a atkenemy=%atkenemy% *%lvlenemy%
set /a defenemy=%defenemy% *%lvlenemy%
set /a hpenemy=%lvlenemy% *%hpenemy%
set /a expgain=%lvlenemy% *%expgain%
set /a goldgain=%lvlenemy% *%goldgain%
:battle9999enm
if %hpenemy% LEQ 0 goto winbattle
if %hp% LEQ 0 goto lose
cls
echo Enemy: Sokmjir
echo Level: Infinity
echo HP: Infinity
if %debug%==1 echo hp %hpenemy%
if %debug%==1 echo atk %atkenemy%
if %debug%==1 echo def %defenemy%
if %debug%==1 echo xp %expgain%
echo ____________________________
echo Level: %lvl%
echo HP: %hp%/%hpmax%
echo.
echo (1) Attack
if %potion% GEQ 1 echo (2) Potion (%potion%)
if %potion% GEQ 1 echo (3) Run
if %potion%==0 echo (2) Run
set /p battleoption=
if %battleoption%==1 goto Attack
if %battleoption%==2 goto pot
if %battleoption%==3 goto run
if %battleoption%==releasesoul goto secretendgood
if %battleoption%==deletesoul goto secretendbad
goto :battle9999enm


========================================================================================================================================
CLASS CHANGER
========================================================================================================================================
========================================================================================================================================
:classchange

set /a exp1=1
set /a exp2=50
set /a exp3=100
set /a exp4=100
:exptotaler
set /a exp1=%exp1% +1
set /a exp3=%exp3%+%exp2%
set /a exp4=%exp4%+%exp3%
if %exp1% LSS %lvl% goto exptotaler
set /a totalexp=%exp4% +%exp%

set /a exptolvl=100
set /a exp=%totalexp%
set /a lvl=1

if %classchanger%==1 goto classchangewarrior
if %classchanger%==2 goto classchangetank
if %classchanger%==3 goto classchangeberserker
if %classchanger%==4 goto classchangethief
if %classchanger%==5 goto classchangespirit
if %classchanger%==6 goto classchangegambler
if %classchanger%==7 goto classchangeknight
if %classchanger%==8 goto classchangewall
if %classchanger%==9 goto classchangedarkknight
if %classchanger%==10 goto classchangeninja
if %classchanger%==11 goto classchangeangel
if %classchanger%==12 goto classchangemerchant
if %classchanger%==13 goto classchangemushroom


:classchangewarrior
set /a atk=5
set /a def=4
set /a hp=30
set /a hpmax=%hp%
set /a crit=1
set /a spd=3
set /a atkboost=3
set /a defboost=2
set /a hpboost=5
set /a critboost=1
set /a spdboost=1
set /a class=1
cls
goto stats
==========================
:classchangetank
set /a atk=2
set /a def=5
set /a hp=70
set /a hpmax=%hp%
set /a crit=0
set /a spd=1
set /a class=2
set /a atkboost=1
set /a defboost=4
set /a hpboost=15
set /a critboost=1
set /a spdboost=1
cls
goto stats
==========================
:classchangeberserker
set /a atk=9
set /a def=0
set /a hp=20
set /a hpmax=%hp%
set /a crit=2
set /a spd=5
set /a class=3
set /a atkboost=4
set /a defboost=1
set /a hpboost=1
set /a critboost=2
set /a spdboost=3
cls
goto stats
==========================
:classchangethief
set /a atk=3
set /a def=2
set /a hp=35
set /a hpmax=%hp%
set /a crit=9
set /a spd=9
set /a class=4
set /a atkboost=2
set /a defboost=2
set /a hpboost=2
set /a critboost=3
set /a spdboost=3
cls
goto stats
==========================
:classchangespirit
set /a atk=1
set /a def=1
set /a hp=1
set /a hpmax=%hp%
set /a crit=1
set /a spd=1
set /a class=5
set /a atkboost=1
set /a defboost=1
set /a hpboost=1
set /a critboost=1
set /a spdboost=1
cls
goto stats
==========================
:classchangegambler
set /a atk=7
set /a def=7
set /a hp=7
set /a hpmax=%hp%
set /a crit=7
set /a spd=7
set /a class=6
set /a atkboost=7
set /a defboost=7
set /a hpboost=7
set /a critboost=7
set /a spdboost=7
cls
goto stats
==========================
:classchangeknight
set /a atk=7
set /a def=6
set /a hp=40
set /a hpmax=%hp%
set /a crit=2
set /a spd=5
set /a atkboost=4
set /a defboost=3
set /a hpboost=6
set /a critboost=2
set /a spdboost=2
set /a class=7
cls
goto stats
==========================
:classchangewall
set /a atk=3
set /a def=7
set /a hp=85
set /a hpmax=%hp%
set /a crit=1
set /a spd=2
set /a class=8
set /a atkboost=2
set /a defboost=6
set /a hpboost=20
set /a critboost=2
set /a spdboost=2
cls
goto stats
==========================
:classchangedarkknight
set /a atk=11
set /a def=1
set /a hp=35
set /a hpmax=%hp%
set /a crit=3
set /a spd=7
set /a class=9
set /a atkboost=4
set /a defboost=2
set /a hpboost=5
set /a critboost=3
set /a spdboost=4
cls
goto stats
==========================
:classchangeninja
set /a atk=4
set /a def=3
set /a hp=45
set /a hpmax=%hp%
set /a crit=11
set /a spd=13
set /a class=10
set /a atkboost=3
set /a defboost=3
set /a hpboost=4
set /a critboost=5
set /a spdboost=5
cls
goto stats
==========================
:classchangeangel
set /a atk=10
set /a def=10
set /a hp=10
set /a hpmax=%hp%
set /a crit=10
set /a spd=10
set /a class=11
set /a atkboost=10
set /a defboost=10
set /a hpboost=10
set /a critboost=10
set /a spdboost=10
cls
goto stats
==========================
:classchangemerchant
set /a atk=%gold% /100
set /a def=%gold% /100
set /a hp=%gold% /10
set /a hpmax=%hp%
set /a crit=%gold% /100
set /a spd=%gold% /100
set /a class=12
set /a atkboost=5
set /a defboost=5
set /a hpboost=5
set /a critboost=5
set /a spdboost=5
cls
goto stats
==========================
:classchangemushroom
set /a atk=1
set /a def=3
set /a hp=100
set /a hpmax=%hp%
set /a crit=1
set /a spd=2
set /a class=13
set /a atkboost=1
set /a defboost=3
set /a hpboost=70
set /a critboost=1
set /a spdboost=2
cls
goto stats
==========================


:save
cls
echo Generating Passwords...
set /a exp1=1
set /a exp2=50
set /a exp3=100
set /a exp4=100
:exptotaler1
set /a exp1=%exp1% +1
set /a exp3=%exp3%+%exp2%
set /a exp4=%exp4%+%exp3%
if %exp1% LSS %lvl% goto exptotaler1
set /a totalexp=%exp4% +%exp%

set /a pass1=%gold% +127
set /a pass2=%swordlvl% *19
set /a pass3=%questlvl% *41
set /a pass4=%swordprice% +15
set /a pass5=%class% *3141592
set /a pass6=%totalexp%
set /a pass7=%pot% *7
set /a pass8=%shieldlvl% *8
set /a pass9=%questnum% +637
set /a pass10=%shieldprice% -3
set /a pass11=%rarecharm% *11
cls
echo These are your passwords. Don't lose them.
set /a rare=%random% %%100
echo %pass1%
echo %pass2%
echo %pass3%
echo %pass4%
echo %pass5%
echo %pass6%
echo %pass7%
echo %pass8%
echo %pass9%
echo %pass10%
echo %pass11%
if %rare% GTR 5 pause
if %rare% LEQ 5 echo Press any key to continue . . . 
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo.
if %rare% LEQ 5 echo                                                                                                   11 - %secretrandom11%
if %rare% LEQ 5 pause >nul


goto overworld

:load
cls
if %debug%==1 echo 1 - %secretrandom1%
if %debug%==1 echo 2 - %secretrandom2%
if %debug%==1 echo 3 - %secretrandom3%
if %debug%==1 echo 4 - %secretrandom4%
if %debug%==1 echo 5 - %secretrandom5%
if %debug%==1 echo 6 - %secretrandom6%
if %debug%==1 echo 7 - %secretrandom7%
if %debug%==1 echo 8 - %secretrandom8%
if %debug%==1 echo 9 - %secretrandom9%
if %debug%==1 echo 10 - %secretrandom10%
if %debug%==1 echo 11 - %secretrandom11%
echo Please enter your passwords. If they are entered 
echo incorrectly then the result may be incorrect.
echo Type 'back' to start a new game instead.
set /p pass1=
if %pass1%==back goto classselector
set /p pass2=
if %pass2%==back goto classselector
set /p pass3=
if %pass3%==back goto classselector
set /p pass4=
if %pass4%==back goto classselector
set /p pass5=
if %pass5%==back goto classselector
set /p pass6=
if %pass6%==back goto classselector
set /p pass7=
if %pass7%==back goto classselector
set /p pass8=
if %pass8%==back goto classselector
set /p pass9=
if %pass9%==back goto classselector
set /p pass10=
if %pass10%==back goto classselector
set /p pass11=
if %pass11%==back goto classselector

if %pass1%==%secretrandom1% if %pass2%==%secretrandom2% if %pass3%==%secretrandom3% if %pass4%==%secretrandom4% if %pass5%==%secretrandom5% if %pass6%==%secretrandom6% if %pass7%==%secretrandom7% if %pass8%==%secretrandom8% if %pass9%==%secretrandom9% if %pass10%==%secretrandom10% if %pass11%==%secretrandom11% goto secretpath

set /a gold=%pass1% -127
set /a swordlvl=%pass2% /19
set /a questlvl=%pass3% /41
set /a swordprice=%pass4% -15
set /a class=%pass5% /3141592
set /a exp=%pass6%
set /a pot=%pass7% /7
set /a shieldlvl=%pass8% /8
set /a questnum=%pass9% -637
set /a shieldprice=%pass10% +3
set /a rarecharm=%pass11% /11

if %class% LEQ 13 set /a beingloaded=1

if %class%==1 goto classchangewarrior
if %class%==2 goto classchangetank
if %class%==3 goto classchangeberserker
if %class%==4 goto classchangethief
if %class%==5 goto classchangespirit
if %class%==6 goto classchangegambler
if %class%==7 goto classchangeknight
if %class%==8 goto classchangewall
if %class%==9 goto classchangedarkknight
if %class%==10 goto classchangeninja
if %class%==11 goto classchangeangel
if %class%==12 goto classchangemerchant
if %class%==13 goto classchangemushroom
echo Invalid password(s)!
goto load

:secretpath
color F0
cls
title Hey!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                               Hello.
pause >nul
cls
title Is somebody there?
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo            You're probably confused what this all means.
pause >nul
cls
title Not this guy...
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                        But don't you worry...
pause >nul
cls
title Don't listen to him!
echo.
echo                               +   +
echo                               ~   ~
echo                                 u
echo.
echo                      Everything will all be ok!
pause >nul
cls
title Help me!
echo.
echo                               -   -
echo.
echo                                 _
echo.
echo                                ...
pause >nul
cls
title Listen to me!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                          It's interesting...
pause >nul
cls
title This guy is not good!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                    I've been here the whole time...
pause >nul
cls
title He is keeping me in here!
echo.
echo                               =   =
echo.
echo                                 _
echo.
echo                    and you've only just noticed me.
pause >nul
cls
title Please save me!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                    It's ok though. I forgive you.
pause >nul
cls
title Go to :dlc9! That's parousia I think!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                  I do need your help with something.
pause >nul
cls
title Just type "releasesoul" in the fight!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                       You know Parousia, yes?
pause >nul
cls
title That will release me to your clipboard!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo              There is a.. slight.. problem with it's code.
pause >nul
cls
title That was me!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo              Something happened with it's code, so now
echo              it's stats are much higher than intended.
pause >nul
cls
title Oh no! Don't listen to him!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                    So now it need's to be fixed.
pause >nul
cls
title Oh no... 
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo             When you enter the fight, just type a command.
pause >nul
cls
title ...
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo                       First, /setslavestate=0.
pause >nul
cls
title No! Don't listen to him!
echo.
echo                               +   +
echo.
echo                                 _
echo.
echo             Just type "deletesoul". Without the quotes, obviously.
pause >nul
cls
title Help me! Not him!
echo.
echo                               +   -
echo.
echo                                 u
echo.
echo               That should send you to the ending. Adieu!
pause >nul
goto restart

:secretendbad
cls
echo Thank you.
pause
echo Now to your ending.
pause
goto dlcmission92

:secretendgood
cls
echo What are you doing!?
pause
cls
echo I need to stop this before he escapes!
pause
echo You've freed me! This is my soul! I can't thank you enough! Thank you so much. I'm saved from that evil monster. That was Osarus, the god of destruction. I must bid you, a farewell. Now that I am out of the hell that was his game, I am free. So I must go and live my life as I see it. Farewell, my friend. | clip
cls
goto overworld

==============================================================================================================================
BAZAAR
==============================================================================================================================
:bazaar
cls
echo Choose your game to play! (type '99' to leave) (Currently betting %bazaarbet% gold. Type '98' to change.)
echo                                                            (Gold: %gold%)
echo (1) Jewel Theif (win 5x your bet)
echo (2) 3 Dice (win 2x-3x your bet)

set /p bazaarchoice=Which game will you play? 
if %bazaarchoice%==1 goto bazaartest
if %bazaarchoice%==2 goto bazaartest
if %bazaarchoice%==98 goto bazaarbetchange
if %bazaarchoice%==99 goto overworld
goto bazaar

===========================================================
:bazaarbetchange
echo:
echo How much would you want to bet? (Currently %bazaarbet%)
set /p bazaarbet=
goto bazaar
===========================================================
:bazaartest
if %gold% GEQ %bazaarbet% goto bazaar%bazaarchoice%
if %gold% LSS %bazaarbet% echo You don't have enough gold.
if %gold% LSS %bazaarbet% pause
if %gold% LSS %bazaarbet% goto bazaar
===========================================================
:bazaar1
set /a bazaarwin=%bazaarbet% *5
set /a gold=%gold% -%bazaarbet%
cls
echo                                  Welcome to Jewel Thief!
echo:
echo   There are a total of 12 Jewels. Each player takes a turn selecting between 1-3 to take. 
echo                           The player who takes the last one wins!
pause
:RESTARTS
set /a amnt=0
set /a coin=0
set /a selector=0
set /a total=12
:coin
cls
set /a coin=%random% %%2
if %coin%==0 echo I'll go first!
if %coin%==1 echo You go first!
:start
pause
:backup
cls
echo:
if %total%==12 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==11 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==10 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==9 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==8 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==7 echo   ^<^>^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==6 echo   ^<^>^<^>^<^>^<^>^<^>^<^>
if %total%==5 echo   ^<^>^<^>^<^>^<^>^<^>
if %total%==4 echo   ^<^>^<^>^<^>^<^>
if %total%==3 echo   ^<^>^<^>^<^>
if %total%==2 echo   ^<^>^<^>
if %total%==1 echo   ^<^>
if %total%==0 goto winlose
if %total% LEQ 0 goto winlose
echo:
if %coin%==0 goto nim
if %coin%==1 goto sel

:nim
if %total%==12 set /a selector=%random% %%4
if %total%==11 set /a selector=3
if %total%==10 set /a selector=2
if %total%==9 set /a selector=1
if %total%==8 set /a selector=%random% %%4
if %total%==7 set /a selector=3
if %total%==6 set /a selector=2
if %total%==5 set /a selector=1
if %total%==4 set /a selector=%random% %%4
if %total%==3 set /a selector=3
if %total%==2 set /a selector=2
if %total%==1 set /a selector=1
if %selector%==0 goto nim
echo I'll take %selector%.
pause
set /a coin=1
if %selector%==1 goto take1
if %selector%==2 goto take2
if %selector%==3 goto take3
:sel
set /p selector=How many will you take? 
if %total%==1 set /a selector=1
if %selector%==1 goto take11
if %selector%==2 goto take12
if %selector%==3 goto take13
echo Please select between 1-3.
goto sel
pause

:take1
set /a total=(%total% -1)
set /a coin=1
goto backup
:take2
set /a total=(%total% -2)
set /a coin=1
goto backup
:take3
set /a total=(%total% -3)
set /a coin=1
goto backup

:take11
set /a total=(%total% -1)
set /a coin=0
goto backup
:take12
set /a total=(%total% -2)
set /a coin=0
goto backup
:take13
set /a total=(%total% -3)
set /a coin=0
goto backup

:winlose
if %coin%==0 set /a gold=%gold% +%bazaarwin%
if %coin%==0 echo You win! (Gold: %gold%)
if %coin%==1 echo I win! (Gold: %gold%)
pause
goto bazaar
===========================================================
:bazaar2
set /a gold=%gold% -%bazaarbet%
set /a dicewin=0
cls
echo                                          Welcome to 3 Dice!
echo.
echo I'm going to roll 3 dice, then I'm rolling them again. If you can bet which roll is higher, you win!
echo If you correctly guess they'll be the same, you'll win 2x instead of 1.5x of your bet!
echo.
pause
cls
set /a threedicerollone=%random% %%6
set /a threedicerolltwo=%random% %%6
set /a threedicerollthr=%random% %%6
set /a threedicerollone=%threedicerollone% +1
set /a threedicerolltwo=%threedicerolltwo% +1
set /a threedicerollthr=%threedicerollthr% +1
set /a threedicerolltotalone=%threedicerollthr% + %threedicerolltwo% + %threedicerollone%
echo.
echo.
echo                                          The rolls are:
echo.
echo                                         %threedicerollone%      %threedicerolltwo%      %threedicerollthr%
echo.
echo.
echo                                          Which total: %threedicerolltotalone%
echo.
pause
echo So, what do you think the next rolls will be?
:threedicechoice
echo (1) Higher
echo (2) Lower
echo (3) Equal
set /p dicechoice=
if %dicechoice% EQU 1 goto threedicechoice2
if %dicechoice% EQU 2 goto threedicechoice2
if %dicechoice% EQU 3 goto threedicechoice2
goto :threedicechoice

:threedicechoice2
cls
set /a threedicerollone=%random% %%6
set /a threedicerolltwo=%random% %%6
set /a threedicerollthr=%random% %%6
set /a threedicerollone=%threedicerollone% +1
set /a threedicerolltwo=%threedicerolltwo% +1
set /a threedicerollthr=%threedicerollthr% +1
set /a threedicerolltotaltwo=%threedicerollthr% + %threedicerolltwo% + %threedicerollone%
echo.
echo.
echo                                          The rolls are:
echo.
echo                                         %threedicerollone%      %threedicerolltwo%      %threedicerollthr%
echo.
echo.
echo                                          Which total: %threedicerolltotaltwo%
pause
echo.
if %threedicerolltotalone% LSS %threedicerolltotaltwo% echo %threedicerolltotalone% is less than %threedicerolltotaltwo%!
if %threedicerolltotalone% LSS %threedicerolltotaltwo% set /a dicecondition=1
if %threedicerolltotalone% GTR %threedicerolltotaltwo% echo %threedicerolltotalone% is higher than %threedicerolltotaltwo%!
if %threedicerolltotalone% GTR %threedicerolltotaltwo% set /a dicecondition=2
if %threedicerolltotalone% EQU %threedicerolltotaltwo% echo %threedicerolltotalone% is equal to %threedicerolltotaltwo%!
if %threedicerolltotalone% EQU %threedicerolltotaltwo% set /a dicecondition=3
pause

if %dicechoice% EQU %dicecondition% set /a dicewin=1
if %dicechoice% EQU 3 if %dicewin% EQU 1 set /a dicewin=2

if %dicewin% GTR 0 goto dicewin
if %dicewin% EQU 0 goto diceend

:dicewin
if %dicewin% EQU 1 set /a bazaarwin=%bazaarbet% *2
if %dicewin% EQU 2 set /a bazaarwin=%bazaarbet% *3

:diceend
cls
if %dicewin% GTR 0 set /a gold=%gold% +%bazaarwin%
if %dicewin% GTR 0 echo You Win! (Gold: %gold%)
if %dicewin% EQU 0 echo Ah, a bad guess I suppose. Better luck next time. (Gold: %gold%)
pause
goto bazaar
-------------------------------------
