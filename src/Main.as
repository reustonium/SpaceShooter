package 
{
	import org.flixel.FlxGame;
	
	[SWF(width = "640", height = "480", backgroundColor = "#000000")]
	
	/**
	 * ...
	 * @author reustonium
	 */
	public class Main extends FlxGame 
	{
		
		public function Main():void 
		{
			super(640, 480, TestLevel, 1);
			forceDebugger = true;
		}
		
	}
	
}