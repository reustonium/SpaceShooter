package  
{
	import org.flixel.FlxState;

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
			player = new Player(120, 120);

			add(player);
		}
		
	}

}