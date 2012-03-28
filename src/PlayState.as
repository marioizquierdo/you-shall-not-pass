package
{
	import org.flixel.*;
	import enemy.*;
	import menu.WaveInfoState;
 
	public class PlayState extends FlxState
	{
		[Embed(source = "/data/background.jpg")] protected var ImgBackground:Class;
		[Embed(source = "/data/bridge.png")] protected var ImgBridge:Class;
		[Embed(source = "/data/cursor/default.png")] private var ImgCursorDefault:Class;
		
		public static const MAP_WIDTH:uint = 800; // Total WIDTH pixels of the map
		public static const MAP_HEIGHT:uint = FlxG.height;
		public static const FLOOR_Y:uint = 148; // position Y in pixels where the floor is
		public static const PLAYER_CAMERA_OFFSET_X:int = -110; // how far is the player from the center of the screen
		
		public var playerWizard:PlayerWizard;
		public var cameraFocus:FlxObject;
		public var enemies:FlxGroup;
		
		override public function create():void
		{
			add(new FlxText(0, 0, 100, "Playing wave " + Registry.currentLevel)); //adds a 100px wide text field at position 0,0 (top left)
			add(new FlxText(0, FlxG.height - 32, 100, "Press space to clear this wave!"));
			
			// Background
			add(new FlxSprite(0, 10, ImgBackground));
			
			// Player
			playerWizard = new PlayerWizard((FlxG.width/2) + PLAYER_CAMERA_OFFSET_X, FLOOR_Y);
			Registry.playerWizard = playerWizard;
			add(playerWizard);
			
			// Enemies
			enemies = new FlxGroup();
			enemies.add(new Enemy(300, FLOOR_Y));
			enemies.add(new Enemy(350, FLOOR_Y));
			add(enemies);
			
			// Bridge
			add(new FlxSprite(0, FLOOR_Y - 8, ImgBridge));
			
			// MOUSE
			FlxG.mouse.show(ImgCursorDefault, 2, -7, -7);

			// HUD
			// No HUD graphis yet
			
			// Camera
			cameraFocus = new FlxObject(FlxG.width/2, FlxG.height/2);
			FlxG.camera.follow(cameraFocus);
			FlxG.camera.setBounds(0, 0, MAP_WIDTH, MAP_HEIGHT);
		}
		
		override public function update():void
		{
			
			// Move camera focus to follow the player
			cameraFocus.x = playerWizard.x - PLAYER_CAMERA_OFFSET_X;
			
			
			// Mouse
			if (FlxG.mouse.justPressed())
			{
				var particle:FlxSprite = new FlxSprite(FlxG.mouse.x, FlxG.mouse.y);
				particle.height = 1;
				particle.width = 1;
				particle.acceleration.y = 10;
				particle.makeGraphic(1, 1, 0xffffffff, false);
				add(particle);
			}

			
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("SPACE"))
			{
				Registry.currentLevel += 1;
				FlxG.switchState(new WaveInfoState());
			}
 
		} // end function update
	}
}