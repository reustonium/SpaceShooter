package  
{
	import org.flixel.FlxState;
	import org.flixel.FlxG;
	import org.flixel.plugin.photonstorm.FlxBar;

	/**
	 * ...
	 * @author reustonium
	 */
	public class TestLevel extends FlxState
	{
		private var player:Player;
		private var spaceMouse:SpaceMouse;
		private var healthBar:FlxBar;
		
		public function TestLevel() 
		{
		}
		
		override public function create():void 
		{
			// Populate G
			G.bulletManager = new BulletManager();
			
			// Create and add Player
			player = new Player(120, 120);
			add(player);
			
			healthBar = new FlxBar(0, 0, FlxBar.FILL_LEFT_TO_RIGHT, 20, 3, player, "health", 0, 100, false);
			healthBar.trackParent(-(20-player.width)/2, player.height);
			add(healthBar);
			
			// Create and add Mouse
			spaceMouse = new SpaceMouse();
			add(spaceMouse);
	
		}
		
		override public function update():void 
		{
			super.update();
		
			// Mouse Inputs
			if (FlxG.mouse.justPressed())
			{
				spaceMouse.mouseClick();
			}
			
		}
		
	}

}