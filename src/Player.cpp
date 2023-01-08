#include "Player.h"

Player::Player(string name, Race race, int hitPoints, int magicPoints)
{
	this->name = name;
	this->race = race;
	this->hitPoints = hitPoints;
	this->magicPoints = magicPoints;
}

string Player::getName() const
{
	return name;
}

Race Player::getRace() const
{
	return race;
}

string Player::whatRace() const
{
	string printRace;

	switch (race)
	{
		case HUMAN: printRace = "Human"; break;
		case ELF: printRace = "Elf"; break;
		case DWARF: printRace = "Dwarf"; break;
		case ORC: printRace = "Orc"; break;
		case TROLL: printRace = "Troll"; break;
		default: printRace = "Unknown"; break;
	}

	return printRace;
}

int Player::getHitPoints() const
{
	return hitPoints;
}

int Player::getMagicPoints() const
{
	return magicPoints;
}

void Player::setName(string name)
{
	this->name = name;
}

void Player::setRace(Race race)
{
	this->race = race;
}

void Player::setHitPoints(int hitPoints)
{
	this->hitPoints = hitPoints;
}

void Player::setMagicPoints(int magicPoints)
{
	this->magicPoints = magicPoints;
}