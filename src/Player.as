package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author reustonium
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = '../assets/player.png')] private var playerPNG:Class;
	
		
		public function Player(x:Number, y:Number) 
		{
			super(x, y);
			
			loadGraphic(playerPNG, false, false, 16, 32, false);
			width = 16;
			height = 32;
		}
	}

}