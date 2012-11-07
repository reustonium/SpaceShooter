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
		[Embed(source = '../assets/pointer.png')] private var mousePNG:Class;
		
		public function TestLevel() 
		{
		}
		
		override public function create():void 
		{
			// Create and Add Stuff
			player = new Player(120, 120);
			add(player);
			
			// Display Mouse
			FlxG.mouse.show(mousePNG, 0.3, 0, 0);
		}
		
	}

}