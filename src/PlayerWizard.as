package  
{
	import org.flixel.*;
	
	public class PlayerWizard extends FlxSprite 
	{
		[Embed(source = "/data/wizard.png")] protected var ImgWizard:Class;
		public static const WIDTH:uint  = 27;
		public static const HEIGHT:uint = 32;
	
		public function PlayerWizard(X:int,Y:int) 
		{
			super(X,Y);
			
			// load graphic and set align to bottom-center (in the foots) 
			loadGraphic(ImgWizard, false, false, WIDTH, HEIGHT);
			width = WIDTH;
			height = HEIGHT;
			origin.x = offset.x = WIDTH/2;
			offset.y = origin.y = HEIGHT; // bottom, so the origin is in its foots

			//basic player physics
			drag.x = 300;
			maxVelocity.x = 50;
			
		}
		
		 override public function update():void
		{

			//MOVEMENT
			acceleration.x = 0;
			if(FlxG.keys.LEFT || FlxG.keys.A)
			{
				acceleration.x -= drag.x/2;
			}
			else if(FlxG.keys.RIGHT || FlxG.keys.D)
			{
				acceleration.x += drag.x/2;
			}

		}
		
	}

}