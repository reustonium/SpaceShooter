package  
{
	import org.flixel.FlxGroup;
	/**
	 * ...
	 * @author reustonium
	 */
	public class BulletManager extends FlxGroup
	{
		
		public function BulletManager() 
		{
			super();
			
			for (var i:int = 0; i < 40; i++)
			{
				add(new Bullet());
			}
		}
		
		public function fire(bx:int, by:int, dir:int):void
		{
			if (getFirstAvailable())
			{
				Bullet(getFirstAvailable()).fire(bx, by, dir);
			}
		}
		
	}

}