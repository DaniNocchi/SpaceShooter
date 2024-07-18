load_game()
if !file_exists("svs.dat") {
	save_game()
	first_time()
}