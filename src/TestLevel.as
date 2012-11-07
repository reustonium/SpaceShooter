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
		
		public function TestLevel() 
		{
		}
		
		override public function create():void 
		{
			// Create and Add Stuff
			player = new Player(120, 120);
			add(player);
			
			// Display Mouse
			FlxG.mouse.show();
		}
		
	}

}