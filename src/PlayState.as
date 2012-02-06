package
{
	import org.flixel.*;
	import menu.WaveInfoState;
 
	public class PlayState extends FlxState
	{
		override public function create():void
		{
			add(new FlxText(0, 0, 100, "Playing wave " + Registry.currentLevel)); //adds a 100px wide text field at position 0,0 (top left)
			add(new FlxText(0, FlxG.height - 32, 100, "Press space to clear this wave!"));
			
			Registry.playerWizard = new PlayerWizard(20, 120);
			add(Registry.playerWizard);
		}
		
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				Registry.currentLevel += 1;
				FlxG.switchState(new WaveInfoState());
			}
 
		} // end function update
	}
}