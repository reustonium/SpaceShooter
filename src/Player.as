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
		private var minMove:Number;
		
		public function Player(x:Number, y:Number) 
		{
			super(x, y);
			
			loadGraphic(playerPNG, false, false, 16, 32, false);
			width = 16;
			height = 32;
			
			// Movement Parameters
			speed = 1;
			minMove = 2;
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
			var yDist:Number = FlxG.mouse.y - y;
			var xDist:Number = FlxG.mouse.x - x - (width / 2) + 2;
			var dist:Number = Math.sqrt((yDist * yDist) + (xDist * xDist));
			
			if (dist > minMove) {
				x += speed * (xDist / dist);
				y += speed * (yDist / dist);
			}		
			
			// Face Mouse
			angle = Math.atan2(yDist, xDist) * (180 / Math.PI) + 90;
		}
	
	}

}