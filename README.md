# gtk4-sample-c

The sample Gtk4 app from GNOME Builder, with pixi packaging.

## Building

```bash
pixi run configure
pixi run build
pixi run run
```

### Building a conda package

```bash
pixi run package
pixi run run-package
```

### Building an AppImage

```bash
pixi run get-appimage-deps
pixi run build-appdir
pixi run build-appimage
pixi run run-appimage
```
