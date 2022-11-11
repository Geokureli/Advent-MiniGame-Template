package templatemg.states;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	override function create()
	{
		super.create();

		final info = new FlxText();
		info.alignment = CENTER;
		info.text = "This is the play state.\n"
			+ "You're having so much fun. \n"
			+ "Press Z to continue.";
		info.screenCenter();
		add(info);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
		
		if (Controls.pressed.A)
			Global.switchState(new GameOverState());
	}
}