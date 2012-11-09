package  
{
	import org.flixel.FlxState;
	import org.flixel.FlxG;
	import org.flixel.FlxText;
	import org.flixel.plugin.photonstorm.FlxBar;

	/**
	 * ...
	 * @author reustonium
	 */
	public class TestLevel extends FlxState
	{
		private var player:Player;
		private var spaceMouse:SpaceMouse;
		private var debugText:FlxText;
		
		public function TestLevel() 
		{
		}
		
		override public function create():void 
		{
			// Populate G
			
			// Create and add Player
			player = new Player(120, 120);
			add(player);

			
			// Create and add Mouse
			spaceMouse = new SpaceMouse();
			add(spaceMouse);
	
			// Text for Debugging
			debugText = new FlxText(300, 10, 100);
			add(debugText);
		}
		
		override public function update():void 
		{
			super.update();
		
			// Mouse Inputs
			if (FlxG.mouse.justPressed())
			{
				spaceMouse.mouseClick();
			}
			
			// Update DebugText
			debugText.text = "Num Bullets " + player.angle;
		}
		
	}

}