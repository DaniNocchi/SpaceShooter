/// @description Reset everything after dying
dead=1
beauty_transition(rMenu, c_white)
rotation=1
move=1
global.lives=3
x=704
y=352
dead=0
gameovercol=1
global.deaths+=1
save_game()
