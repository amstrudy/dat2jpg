# dat2jpg

Handy script to convert NASA PDS .DAT image files to JPGs.

## Dependencies

### `dat2img`

Malin Space Science Systems tool provided for NASA PDS to convert from .DAT to .IMG

To install:

1. Download the `MMM_DAT2IMG.ZIP` file from [here](https://pds-imaging.jpl.nasa.gov/data/msl/MSLMHL_0013/SOFTWARE/SRC/)
2. Unpack the `.zip`
3. Enter into the directory and compile the tool:
```bash
$ mv MMM_DAT2IMG dat2img
$ cd dat2img
$ source build_all
```
If this doesn't work, see the [documentation](https://pds-imaging.jpl.nasa.gov/data/msl/MSLMHL_0013/SOFTWARE/DOC/MMM_DAT2IMG.TXT) for more detail

4. Move the executable to `/usr/local/` and then add it to the `$PATH`:
```bash
$ mv dat2img /usr/local
$ export PATH=${PATH}:/usr/local/dat2img
```

### `transform`

NASA PDS tool that converts .IMG to .JPG/.PNG

To install:

1. Download the current release from the [website](https://nasa-pds.github.io/transform/install/index.html)
2. Unpack the `.zip` or `.tar.gz`
3. Move the directory to `/usr/local`: 
```bash
$ mv transform-1.11.5 /usr/local
```

4. Run the following (or add to your `~/.bashrc`):
```bash
$ export PATH=${PATH}:/usr/local/transform-1.11.5/bin
$ export JAVA_HOME=/usr
```

## Usage

This is just a bash script, so you will need to add it to your `$PATH` if you want to run it from anywhere. Simply run the script with any `.DAT` file paths passed in as arguments:

```bash
$ ./dat2jpg.sh file_path_1.DAT file_path_2.DAT ...
```

The images will display in your local image viewer and will save wherever you ran the script.

## Note

Has only been tested on Ubuntu 20.04. Please reach out to NASA PDS or MSS if you have questions about transform or dat2img. Otherwise feel free to open up an issue.
