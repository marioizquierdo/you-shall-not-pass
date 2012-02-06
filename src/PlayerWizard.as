package  
{
	import org.flixel.*;
	
	public class PlayerWizard extends FlxSprite 
	{
		[Embed(source="data/wizard.png")] protected var ImgWizard:Class;
		public function PlayerWizard(X:int,Y:int) 
		{
			super(X,Y);
			loadGraphic(ImgWizard, false, false, 27, 32);
			
			//bounding box tweaks
			width = 27;
			height = 32;
			offset.x = 1;
			offset.y = 1;

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