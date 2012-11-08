package  
{
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author reustonium
	 */
	public class Bullet extends FlxSprite
	{
		[Embed(source = '../assets/pointer.png')] private var bulletPNG:Class;
		
		public var damage:int = 1;
		public var speed:int = 1;
		
		public function Bullet() 
		{
			super(x, y, bulletPNG);
			
			exists = false;
		}
		
		public function fire(bx:int, by:int, dir:int):void
		{
			x = bx;
			y = by;
			
			//set velocity based in dir
			exists = true;
			trace(x + " " + y);
		}
		
		override public function update():void 
		{
			super.update();
			
			//if (exists && !this.onScreen)
			{
				//exists = false;
			}
		}
		
	}

}