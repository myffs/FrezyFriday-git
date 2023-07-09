package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;

class PlayState extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "Welcome to frezy friday";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "About", switchState);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		var button = new FlxButton(0, 0, "Start", switchMode);
		button.screenCenter();
		button.y = text.y + text.height + 47;
		add(button);

		bgColor = 0;

		super.create();
	}

	//   definds the different playstates  \\

	private function switchState():Void
	{
		FlxG.switchState(new OtherState());
	}

	private function switchMode():Void
	{
		FlxG.switchState(new GameState());
	}

	private function roomFirst():Void
	{
		FlxG.switchState(new FirstRoom());
	}

	private function roomSecond():Void
	{
		FlxG.switchState(new SecondRoom());
	}

	private function roomThird():Void
	{
		FlxG.switchState(new ThirdRoom());
	}
}

class OtherState extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "funny game i made.";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "<-- Back", switchState);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		bgColor = 0;

		super.create();
	}

	private function switchState():Void
	{
		FlxG.switchState(new PlayState());
	}
}

class GameState extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "Start with a level:";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "room 1", roomFirst);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		var button = new FlxButton(0, 0, "room 2", roomSecond);
		button.screenCenter();
		button.y = text.y + text.height + 60;
		add(button);

		var button = new FlxButton(0, 0, "room 3", roomThird);
		button.screenCenter();
		button.y = text.y + text.height + 100;
		add(button);

		var button = new FlxButton(0, 0, "<-- Back", backOption);
		button.screenCenter();
		button.y = text.y + text.height + 150;
		add(button);

		bgColor = 1;

		super.create();
	}

	private function roomFirst():Void
	{
		FlxG.switchState(new FirstRoom());
	}

	private function roomSecond():Void
	{
		FlxG.switchState(new SecondRoom());
	}

	private function roomThird():Void
	{
		FlxG.switchState(new ThirdRoom());
	}

	private function backOption():Void
	{
		FlxG.switchState(new PlayState());
	}
}

class FirstRoom extends FlxState
{
	override public function create()
	{
		var sprite = new FlxSprite();
		sprite.loadGraphic("assets/images/test.png");
		sprite.screenCenter();
		add(sprite);

		var text = new FlxText();
		text.text = "";
		text.size = 16;
		text.screenCenter();
		add(text);

		super.create();
	}
}

class SecondRoom extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "Currently Experimental!";
		text.size = 16;
		text.screenCenter();
		add(text);

		super.create();
	}
}

class ThirdRoom extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "Currently Experimental!";
		text.size = 16;
		text.screenCenter();
		add(text);

		super.create();
	}
}
