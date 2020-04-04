using Godot;
using static Godot.GD;
public class Mob : AnimationTree
{
	public override void _Ready()
	{
		Print("Ready!?");
	}
	public override void _EnterTree()
	{
		Print("EnterTree!?");
	}
	public override void _ExitTree()
	{
		Print("_ExitTree!?");
	}
}
