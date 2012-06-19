package
{
	import org.flixel.*;

	public class PlayerWizard extends FlxSprite
	{
		[Embed(source = "/data/wizard.png")] protected var ImgWizard:Class;
		public static const WIDTH:uint  = 29;
		public static const HEIGHT:uint = 37;

		public function PlayerWizard(X:int,Y:int)
		{
			super(X,Y-HEIGHT); // Initialize having the Y in the bottom

			loadGraphic(ImgWizard, false, false, WIDTH, HEIGHT);

			//basic player physics
			drag.x = 300;
			maxVelocity.x = 50;

		}

		 override public function update():void
		{
			//MOVEMENT
			acceleration.x = 0;
			if((FlxG.keys.LEFT || FlxG.keys.A) && x > WIDTH)
			{
				acceleration.x -= drag.x/2;
			}
			else if((FlxG.keys.RIGHT || FlxG.keys.D) && x < (PlayState.MAP_WIDTH-WIDTH))
			{
				acceleration.x += drag.x/2;
			}

		}

	}

}
