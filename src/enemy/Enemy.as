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
			super(X, Y-HEIGHT); // Initialize having the Y in the bottom
			
			loadGraphic(ImgOrc, false, false, WIDTH, HEIGHT);

			//basic player physics
			maxVelocity.x = 20;
		}
		
		 override public function update():void
		{

			//MOVEMENT
			acceleration.x = -15; // just go ahead

		}
		
		public function hitBy(bullet:FlxSprite):void
		{
			velocity.x = +20;
			bullet.kill();
		}
		
	}

}