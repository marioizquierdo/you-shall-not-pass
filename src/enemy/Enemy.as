package enemy
{
	import org.flixel.*;
	
	public class Enemy extends FlxSprite 
	{
		[Embed(source = "/data/enemies/orc.png")] protected var ImgOrc:Class;
		public static const WIDTH:uint  = 45;
		public static const HEIGHT:uint = 49;
		
		public function Enemy(X:int,Y:int) 
		{
			super(X,Y);
			
			// load graphic and set align to bottom-center (in the foots) 
			loadGraphic(ImgOrc, false, false, WIDTH, HEIGHT);
			width = WIDTH;
			height = HEIGHT;
			origin.x = offset.x = WIDTH/2;
			offset.y = origin.y = HEIGHT; // bottom, so the origin is in its foots
			
			//basic player physics
			maxVelocity.x = 20;
			
		}
		
		 override public function update():void
		{

			//MOVEMENT
			acceleration.x = -100; // just go ahead

		}
		
	}

}