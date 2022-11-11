This is the template minigame for advent 2022.

## Making your Own
Copy this template and rename every namespace `templatemg` to whatever unique namespace you've
given your game. This will prevent naming collisions with the main Advent game, as well as other
minigames.

## Controls
Advent is set up with an advanced control system that takes Gamepads and keyboard buttons and
combines them into one easy to use system. Instead of `FlxG.keys.justPressed.Z` or
`FlxG.gamepads.firstActive.justPressed.A`, you can just use `Controls.justPressed.A`.

Check out the full list of controls, [here](https://github.com/BrandyBuizel/Advent2022/blob/main/source/ui/Controls.hx#L53-L77).
We also plan to add on-screen buttons for mobile.

## Caveats
To allow your game to work in both stand-alone as well as in Advent, use `utils.Global` methods
- Use `Global.width/height` instead of `FlxG.width/height`.
- Use `Global.state` instead of `FlxG.state`.
- Use `Global.switchState` and `Global.resetState` instead of `FlxG.switchState` and `FlxG.resetState`.
- Use `Global.asset("assets/images/foo.png")` whenever passing a path into an asset loader.
- Use `Global.cancelTweensOf` instead of `FlxTween.cancelTweensOf`.

When played via advent, all your asset paths will be renamed to "assets/templatemg/images/foo.png",
and in stand-alone mode they will be "assets/images/foo.png", hence why Global.assets in neccesary.
`AssetPaths.hx` is also not an option.

Any code you want to only run when in stand-alone mode should be wrapped in `#if STAND_ALONE` checks,
similarly and advent-only code should be wrapped in `#if ADVENT`.
