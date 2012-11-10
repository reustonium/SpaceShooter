package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	
	/**
	 * @project LD24
	 * @author reustonium
	 */
	public class Enemy extends FlxSprite
	{
		[Embed(source = '../assets/baddie.png')] private var enemyPNG:Class;
		
		public function Enemy() 
		{
			super(0, 0, enemyPNG);
			
			exists = false;
		}
		
		public function launch():void
		{
			x = Math.random() * 640;
			y = Math.random() * 480;
			
			velocity.x = Math.random() * 20;
			velocity.y = Math.random() * 20;
			
			health = 4;
			exists = true;
		}
		
		override public function kill():void 
		{
			super.kill();
			
			FlxG.score += 20;
		}
		
	}

}