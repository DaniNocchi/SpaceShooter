load_game()
if !file_exists("svsa.dat") {
	save_game()
	first_time()
}