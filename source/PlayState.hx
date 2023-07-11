package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;
import flixel.util.FlxDestroyUtil;
import flixel.util.FlxDestroyUtil;
import flixel.util.FlxSave;
import flixel.util.FlxSpriteUtil;

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

		var button = new FlxButton(0, 0, "Credits", creditsMode);
		button.screenCenter();
		button.y = text.y + text.height + 75;
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

	private function creditsMode():Void
	{
		FlxG.switchState(new CreditsState());
	}
}

class OtherState extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "short funny game i made.";
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
		text.text = "select a room:";
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

		var button = new FlxButton(0, 0, "Floor 2 -->", floorSecond);
		button.screenCenter();
		button.y = text.y + text.height + 140;
		add(button);

		var button = new FlxButton(0, 0, "<-- Back", backOption);
		button.screenCenter();
		button.y = text.y + text.height + 180;
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

	private function floorSecond():Void
	{
		FlxG.switchState(new SecondFloor());
	}

	private function backOption():Void
	{
		FlxG.switchState(new PlayState());
	}
}

class SecondFloor extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "2nd floor";
		text.size = 15;
		text.height = 50;
		add(text);

		var text = new FlxText();
		text.text = "select a room:";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "Rewards", menuUnlock);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		var button = new FlxButton(0, 0, "<-- Floor 2", switchBack);
		button.screenCenter();
		button.y = text.y + text.height + 50;
		add(button);

		bgColor = 1;

		super.create();
	}

	private function menuUnlock():Void
	{
		openSubState(new RewardsMenu());
	}

	private function switchBack():Void
	{
		FlxG.switchState(new GameState());
	}
}

class FirstRoom extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "You seem to be very...strange";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "Okay.", okButton);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		super.create();
	}

	private function okButton():Void
	{
		FlxG.switchState(new GameState());
	}
}

class SecondRoom extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "Not very...special";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "Okay.", okButton);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		super.create();
	}

	private function okButton():Void
	{
		FlxG.switchState(new GameState());
	}
}

class ThirdRoom extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "but you are...interesting...";
		text.size = 16;
		text.screenCenter();
		add(text);

		var button = new FlxButton(0, 0, "Okay.", okButton);
		button.screenCenter();
		button.y = text.y + text.height + 16;
		add(button);

		super.create();
	}

	private function okButton():Void
	{
		FlxG.switchState(new GameState());
	}
}

class CreditsState extends FlxState
{
	override public function create()
	{
		var text = new FlxText();
		text.text = "MyFnf";
		text.size = 32;
		text.screenCenter();
		add(text);

		var sprite = new FlxSprite();
		sprite.loadGraphic("assets/images/myfnf.png");
		sprite.screenCenter();
		sprite.y = sprite.y + text.height + 10;
		add(sprite);

		var button = new FlxButton(0, 0, "<-- Back", switchState);
		button.screenCenter();
		button.y = text.y + text.height + 75;
		add(button);

		bgColor = 0;

		super.create();
	}

	private function switchState():Void
	{
		FlxG.switchState(new PlayState());
	}
}

/*class MessageBox extends FlxState
	{
	override public function create()
	{
		var linearSprite:FlxSprite = new FlxSprite("assets/sprite.png");
		linearSprite.x = linearSprite.y = 50;
		add(linearSprite);

		bgColor = 0;

		super.create();

		FlxTween.linearMotion(linearSprite, 50, 50, FlxG.width - linearSprite.width - 50, FlxG.height - linearSprite.height - 50, 50, true, {
			type: FlxTweenType.PINGPONG,
			ease: FlxEase.elasticInOut
		});
	}
}*/
class RewardsMenu extends FlxSubState
{
	public function new()
	{
		super(0xFF0000);
	}

	override public function create()
	{
		var text = new FlxText();
		text.text = "None yet.";
		text.size = 16;
		text.screenCenter();

		var button = new FlxButton(0, 0, "Exit", closeSub);
		button.screenCenter();
		button.y = text.y + text.height + 16;

		var bg:FlxSprite = new FlxSprite();
		bg.makeGraphic(Std.int(text.width + 64), Std.int(text.height + button.height + 36), FlxColor.WHITE);
		FlxSpriteUtil.drawRect(bg, 1, 1, bg.width - 2, bg.height - 2, FlxColor.BLACK);
		bg.screenCenter();

		add(bg);
		add(text);
		add(button);

		bgColor = 0;

		super.create();
	}

	private function closeSub():Void
	{
		close();
	}
}
