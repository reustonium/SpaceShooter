package  
{
	import org.flixel.FlxSprite;
	import org.flixel.FlxG;
	import org.flixel.plugin.photonstorm.FlxBar;
	import org.flixel.plugin.photonstorm.FlxWeapon;
	
	/**
	 * ...
	 * @author reustonium
	 */
	public class Player extends FlxSprite
	{
		[Embed(source = '../assets/player.png')] private var playerPNG:Class;
		public var speed:Number;
		private var minMove:Number;
		private var laser:FlxWeapon;
		private var laserAmmo:int;
		private var healthBar:FlxBar;
		
		public function Player(x:Number, y:Number) 
		{
			super(x, y);
			
			loadGraphic(playerPNG, false, false, 32, 32, false);
			height = 32;
			width = 32;
			
			// Movement Parameters
			speed = 1;
			minMove = 18;

			// Player Parameters
			health = 70;
			
			// Create FlxWeapon Laser
			laser = new FlxWeapon('laser', this, 'x', 'y');
			laser.makePixelBullet(10, 3, 3, 0xffff0000, x, y);
			laser.setParent(this, 'x', 'y');
			laser.setBulletSpeed(250);
			laser.setBulletOffset(16, 16);
			laserAmmo = 10;
			FlxG.state.add(laser.group);
			
			// Create Health Bar
			healthBar = new FlxBar(0, 0, FlxBar.FILL_LEFT_TO_RIGHT, 20, 3, this, "health", 0, 100, false);
			healthBar.trackParent(-(20 - width)/2, height);
			FlxG.state.add(healthBar);
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
			var yDist:Number = FlxG.mouse.y - y -(width/2);
			var xDist:Number = FlxG.mouse.x - x -(width/2);
			var dist:Number = Math.sqrt((yDist * yDist) + (xDist * xDist));
			
			if (dist > minMove) {
				x += speed * (xDist / dist);
				y += speed * (yDist / dist);
			}		
			
			// Face Mouse
			angle = Math.atan2(yDist, xDist) * (180 / Math.PI) + 90;
			
			// Fire Laser
			if (FlxG.mouse.justPressed() && laserAmmo >0)
			{
				laser.fireFromAngle(angle -90);
				laserAmmo--;
			}
			
			// Reload Laser
			if (FlxG.keys.justPressed("R"))
			{
				laserAmmo = 10;
			}
		}
	
	}

}