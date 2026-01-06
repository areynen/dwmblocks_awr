//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	//{"", "~/.local/bin/dwmb_music.sh",	1,		2},

	{"", "~/.local/bin/dwmb_music-supersonic.sh",	1,		2},

	{"", "~/.local/bin/dwmb_vpn.sh",	1,		4},

    //{"", "~/.local/bin/dwmb_newscheck.sh", 0,   3},

	{"", "~/.local/bin/dwmb_clock.sh",	5,		1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " |";
static unsigned int delimLen = 5;
