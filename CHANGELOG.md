# Changelog

## 0.1.3

- Window now built with PrettyUI (required dependency, mod.io ID 6398181), the UI library used by Quest Helper and other approved plugins.
- Move: drag the title bar (PrettyUI built-in).
- Resize: hold the bottom-right corner and drag. Uses PrettyUI's technique: an invisible ui.Layer with clickthrough = false, ONCLICK / ONHOLD / ONRELEASE, stretched over the screen while held.
- Position and size saved together in PersistentDB under "window" (old panelWidth/panelHeight keys no longer used).
- PluginShutdown removes the window on reload.

## 0.1.2 (never confirmed in-game; replaced by 0.1.3)

- Corner resize is now click-based: click the corner button, move the mouse, click it again to save. Dragging plugin-layer components did not trigger ONDRAG in testing, even with dragConfig set.
- Live resize uses Event.Logic (50 times a second) and only reads the mouse position.

## 0.1.1

- Text now renders: font set explicitly to MUSEO_SANS_15PT_REGULAR.
- Layout uses plain interface units, recalculated after every resize.
- Added "+" / "-" resize buttons in the title bar.
- Corner grip is now a button so it can receive drag and scroll input.

## 0.1.0 (skeleton)

- Resizable panel on the plugin layer: drag the corner grip, or scroll over it.
- Panel size saved in PersistentDB and restored on load.
