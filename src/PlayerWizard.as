package  
{
	import org.flixel.*;
	
	public class PlayerWizard extends FlxSprite 
	{
		[Embed(source = "data/wizard.png")] protected var ImgWizard:Class;
	
		public function PlayerWizard(X:int,Y:int) 
		{
			super(X,Y);
			loadGraphic(ImgWizard, false, false, 27, 32);
			
			//bounding box tweaks
			width = 27;
			height = 32;
			origin.x = 8; // center of wizard body
			origin.y = 32; // bottom, so the origin is in its foots
			offset.x = origin.x;
			offset.y = origin.y;

			//basic player physics
			drag.x = 300;
			maxVelocity.x = 50;
			
		}
		
		 override public function update():void
		{

			//MOVEMENT
			acceleration.x = 0;
			if(FlxG.keys.LEFT)
			{
				acceleration.x -= drag.x/2;
			}
			else if(FlxG.keys.RIGHT)
			{
				acceleration.x += drag.x/2;
			}

		}
		
	}

}