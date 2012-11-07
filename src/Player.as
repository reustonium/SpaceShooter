package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	/**
	 * ...
	 * @author reustonium
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = '../assets/player.png')] private var playerPNG:Class;
		public var speed:Number;
		
		public function Player(x:Number, y:Number) 
		{
			super(x, y);
			
			loadGraphic(playerPNG, false, false, 16, 32, false);
			width = 16;
			height = 32;
			speed = 0.01;
		}
		
		override public function update():void 
		{
			super.update();
			
			// Constrain Position to World
			if (x < 0) x = 0;
			if (x + width > FlxG.width) x = FlxG.width - width;
			if (y < 0) y = 0;
			if (y + height > FlxG.height) y = FlxG.height - height;
			
			// Follow Mouse
			x += (FlxG.mouse.x - x) * speed;
			y += (FlxG.mouse.y - y) * speed;
			
			// Face Mouse
			//angle = ((FlxG.mouse.y - y) / (FlxG.mouse.x -x));
		}
	}

}