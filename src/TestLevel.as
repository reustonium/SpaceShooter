package  
{
	import org.flixel.FlxState;
	import org.flixel.FlxG;

	/**
	 * ...
	 * @author reustonium
	 */
	public class TestLevel extends FlxState
	{
		private var player:Player;
		private var spaceMouse:SpaceMouse;
		
		public function TestLevel() 
		{
		}
		
		override public function create():void 
		{
			// Create and add Player
			player = new Player(120, 120);
			add(player);
			
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