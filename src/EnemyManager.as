package  
{
	import org.flixel.FlxGroup;
	import flash.utils.getTimer;
	import org.flixel.FlxObject;
	import org.flixel.FlxG;
	
	/**
	 * @project LD24
	 * @author reustonium
	 */
	public class EnemyManager extends FlxGroup
	{
		private var lastReleased:int;
		private var releaseRate:int = 2500;
		
		public function EnemyManager() 
		{
			super();
			
			for (var i:int = 0; i < 100; i++)
			{
				add(new Enemy);
			}
		}
		
		public function release():void
		{
			var enemy:Enemy = Enemy(getFirstAvailable());
			
			if (enemy)
			{
				enemy.launch();
			}
		}
		
		override public function update():void 
		{
			super.update();
			
			if (getTimer() > lastReleased +releaseRate)
			{
				lastReleased = getTimer();
				release();
			}
		}
		
		public function bulletHitEnemy(bullet:FlxObject, enemy:FlxObject):void
		{
			bullet.kill();
			enemy.hurt(1);
			
			FlxG.score += 1;
		}
		
	}

}