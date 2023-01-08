#include <iostream>
#include <vector>
#include "Player.h"
#include "Warrior.h"
#include "Mage.h"
#include "Priest.h"
using namespace std;

void mainMenu(vector<Player*> characters);
void displayCharacters(vector<Player*> characters);
void cleanUp(vector<Player*> characters);
bool isValidInput(int size, string validStrings[], string input);
Player* createCharacter();
Race convertToRace(string race);

int main()
{
	vector<Player*> characters;

	mainMenu(characters);

	cleanUp(characters);
	cout << "Program complete." << endl;

	return 0;
}

void mainMenu(vector<Player*> characters)
{
	string input;

	// display menu
	cout << "<----------RPG Character Creator---------->" << endl;
	cout << endl;

	while (input != "exit")
	{
		// get input
		cout << "Create a new character\t(create)" << endl;
		cout << "View character stats\t(stats)" << endl;
		cout << "Exit the program\t(exit)" << endl;
		cout << "Select an option: ";

		do
		{
			getline(cin, input);
		} while (!isValidInput(3, new string[3] {"create", "stats", "exit"}, input));

		cout << endl;

		if (input == "create")
		{
			characters.push_back(createCharacter());
		}
		else if(input == "stats")
		{
			displayCharacters(characters);
		}
	}
}

void displayCharacters(vector<Player*> characters)
{
	for (int i = 0; i < characters.size(); i++)
	{
		cout << "Character " << i + 1 << endl;
		cout << "Name: " << characters[i]->getName() << endl;
		cout << "Race: " << characters[i]->whatRace() << endl;
		cout << "HP: " << characters[i]->getHitPoints() << endl;
		cout << "MP: " << characters[i]->getMagicPoints() << endl;
		cout << endl;
	}
}

void cleanUp(vector<Player*> characters)
{
	for (Player* player : characters)
	{
		delete player;
		player = nullptr;
	}

	characters.clear();
}

bool isValidInput(int size, string validStrings[], string input)
{
	bool result = false;
	
	// need to fix size();
	for (int i = 0; i < size; i++)
	{
		if (input == validStrings[i])
		{
			result = true;
			break;
		}
		else
		{
			result = false;
		}
	}

	if (!result)
	{
		cout << "Invalid Input: ";
	}

	return result;
}

Player* createCharacter()
{
	Player* tempPlayer;
	tempPlayer = nullptr;
	string type;
	string name;
	string raceString;
	Race race;

	// get type
	cout << "Warrior Class\t(warrior)" << endl;
	cout << "Priest Class\t(priest)" << endl;
	cout << "Mage Class\t(mage)" << endl;
	cout << "Pick a class: ";

	do
	{
		getline(cin, type);
	} while (!isValidInput(3, new string[3]{ "warrior", "priest", "mage" }, type));

	cout << endl;

	// get race
	cout << "Human\t(human)" << endl;
	cout << "Elf\t(elf)" << endl;
	cout << "Dwarf\t(dwarf)" << endl;
	cout << "Orc\t(orc)" << endl;
	cout << "Troll\t(troll)" << endl;
	cout << "What is your race? ";
	cout << endl;

	do
	{
		getline(cin, raceString);
	} while (!isValidInput(5, new string[5]{ "human", "elf", "dwarf", "orc", "troll" }, raceString));
	
	race = convertToRace(raceString);
	cout << endl;

	// get name
	cout << "What is the name of your character? ";
	getline(cin, name);
	cout << endl;

	if (type == "warrior")
	{
		tempPlayer = new Warrior(name, race);
	}
	else if (type == "priest")
	{
		tempPlayer = new Priest(name, race);
	}
	else if (type == "mage")
	{
		tempPlayer = new Mage(name, race);
	}
	else
	{
		tempPlayer = new Warrior(name, race);
	}

	return tempPlayer;
}

Race convertToRace(string race)
{
	Race tempRace;

	if (race == "human")
	{
		tempRace = HUMAN;
	}
	else if (race == "elf")
	{
		tempRace = ELF;
	}
	else if (race == "dwarf")
	{
		tempRace = DWARF;
	}
	else if (race == "orc")
	{
		tempRace = ORC;
	}
	else if (race == "troll")
	{
		tempRace = TROLL;
	}
	else
	{
		tempRace = HUMAN;
	}

	return tempRace;
}
