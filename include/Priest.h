#ifndef PRIEST_H
#define PRIEST_H

#include "Player.h"

class Priest : public Player
{
public:
	Priest(string name, Race race) : Player(name, race, 100, 200)
	{

	}

	string attack() const
	{
		return "Will I cast a sleep to allow me to sleep with your mother?";
	}
};

#endif
