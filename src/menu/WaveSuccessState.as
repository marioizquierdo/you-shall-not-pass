package menu 
{
	
	public class WaveSuccessState 
	{
		
		override public function create():void
		{
			var title:FlxText;
			title = new FlxText(0, 16, FlxG.width, "Wave Cleared!");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
 
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 32, FlxG.width, "Press Space to play next wave");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				FlxG.switchState(new WaveInfoState());
			}
 
		} // end function update
		
		public function WaveSuccessState() 
		{
			
		}
		
	}

}