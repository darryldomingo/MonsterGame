
/*
 * MainMenu
 * Created by Eqela Studio 2.0b7.4
 */

public class MainMenu: SceneApplication {
	public FrameController create_main_scene() {
		return(new MainScene());
	}
	
}

public class MyMain : SEScene
{
	SESprite bg;
	SESprite text;
	SESprite image;
	SESprite background;
	SEEntity player;
	SEEntity monster;
	public static int px;
	public static int py;
	int i;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
	/*	px = 0; py = 0;
		var w = get_scene_width(), h = get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("img", "background", get_scene_width(), get_scene_height());
		background = add_sprite_for_image(SEImage.for_resource("img"));
		background.move(0,0);
		player = add_entity(new PlayerEntity());
		for (i=0; i<Math.random(5,15); i++) {
			add_entity(new MonsterEntity());
		}
	*/	
		bg = add_sprite_for_color(Color.instance("black"), get_scene_width(), get_scene_height());
		bg.move(0,0);
		rsc.prepare_image("start", "play", get_scene_width()*0.20, get_scene_height()*0.20);
		image = add_sprite_for_image(SEImage.for_resource("start"));
		image.move(0.5*get_scene_width(), 0.5*get_scene_height());		
		rsc.prepare_font("myfont", "arial bold color=white", 40);
		text = add_sprite_for_text(" ", "myfont");
		text.move(0.5*get_scene_width(), 0.5*get_scene_height());
		
	}

	public void switch_to_second_scene() {
		switch_scene(new MyScene());
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		if (pi.is_inside(image.get_x(), image.get_y(), image.get_width(), image.get_height())) {
			switch_scene(new MainScene());
		}
		
	}

	public void update(TimeVal now, double delta) {
		base.update(now, delta);
	}
	
	public void cleanup() {
		base.cleanup();
	}
}
