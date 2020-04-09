using Godot;
using static Godot.GD;
public class Mob : Sprite
{
	private readonly RandomNumberGenerator _r = new RandomNumberGenerator();
	private AnimationTree _tree;
	private AnimationNodeStateMachinePlayback _playback;
	public override void _Ready()
	{
		Print("!!!ready");
		_tree = GetNode<AnimationTree>("AnimationTree");
		_playback = (AnimationNodeStateMachinePlayback)_tree.Get("parameters/playback");
		_playback.Start("Idle");
	}
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
		_tree.Set("parameters/Idle/blend_position", _r.RandfRange(-1, 1));
		_playback.Travel("Idle");
	}
	public void OnAnimationChanged(string name)
	{
		Print("!!!changed: " + name);
	}
}
