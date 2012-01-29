package menu 
{
	
	import org.flixel.*;
 
	public class WaveInfoState extends FlxState
	{
		override public function create():void
		{
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "You Shall Not Pass");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var wave_text:FlxText;
			wave_text = new FlxText(0, 32, FlxG.width, "Wave - " + Registry.currentLevel);
			wave_text.setFormat (null, 32, 0xFFFFFFFF, "center");
			add(wave_text);
 
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 32, FlxG.width, "Press Space to play wave " + Registry.currentLevel);
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new PlayState());
			}
 
		} // end function update
 
 
		public function WaveInfoState()
		{
			super();
 
		}  // end function MenuState
 
	} // end class
}// end package