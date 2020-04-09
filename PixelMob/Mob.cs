using Godot;
using static Godot.GD;
public class Mob : Sprite
{
	private AnimationNodeStateMachinePlayback _playback;
	public override void _Ready()
	{
		Print("!!!ready");
		var player = GetNode<AnimationPlayer>("AnimationPlayer");
		var tree = GetNode<AnimationTree>("AnimationTree");
		_playback = (AnimationNodeStateMachinePlayback)tree.Get("parameters/playback");
		_playback.Start("Idle");
	}
	//  public override void _Process(float delta)
	//  {
	//  }
	public void OnAnimationTreeEntered()
	{
		Print("!!!entered");
	}
	public void OnAnimationTreeExited()
	{
		Print("!!!exited");
	}
	public void OnAnimationTreeExiting()
	{
		Print("!!!exiting");
	}
	public void OnAnimationFinished(string name)
	{
		Print("!!!finished: " + name);
	}
	public void OnAnimationChanged(string name)
	{
		Print("!!!changed: " + name);
	}
}
