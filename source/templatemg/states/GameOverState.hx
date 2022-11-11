package templatemg.states;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;

class GameOverState extends FlxState
{
	override function create()
	{
		super.create();

		final info = new FlxText();
		info.alignment = CENTER;
		info.text = "This is the GAME OVER state.\n"
			+ "I'm sure you did your best.\n"
			+ "Press Z to play again.";
		info.screenCenter();
		add(info);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		
		if (Controls.pressed.A)
			Global.switchState(new PlayState());
	}
}