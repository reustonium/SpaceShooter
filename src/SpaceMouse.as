package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	/**
	 * ...
	 * @author reustonium
	 */
	public class SpaceMouse extends FlxSprite
	{
		[Embed(source = '../assets/pointer.png')] private var mousePNG:Class;
		
		public function SpaceMouse() 
		{
			super(FlxG.mouse.x, FlxG.mouse.y );
			
			loadGraphic(mousePNG, true, false, 6, 6, false);
			addAnimation('normal', [1], 60, true);
			addAnimation('clicked', [1, 2, 3, 4], 8, false);
		}
		
		override public function update():void 
		{
			super.update();
			x = FlxG.mouse.x;
			y = FlxG.mouse.y;
			
		}
		
		public function mouseClick():void
		{
			play('clicked');
		}
	}

}