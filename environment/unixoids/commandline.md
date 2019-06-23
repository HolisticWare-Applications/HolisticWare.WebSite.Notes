# Commandline 

## Navigation (`cd`)

home:

```
cd ~
```

Previous folder (location):

```
cd -
```

## Cursor

Move to the begin (Mac and Linux):

```
Ctrl +/ a
```

Move to the begin (Mac and Linux):

```
Ctrl +/ e
```

## Commands

### Running

Succesfull Chain:

```
command_script_01 ; command_script_02 ; command_script_03
```

Command Chain:

```
command_script_01 ; command_script_02 ; command_script_03
```

### Reuse

```
apt install mono
```

```
sudo !!
```

### Search

`(reverse-i-search)`:

```
Ctrl +/ r
```

## Reuse arguments

### All arguments `!*`

```
ls .gitignore README.md
```

```
cat !*
```

### last argument `!$`

```
ls .gitignore README.md
```

```
cat !$

```

##   Empty a file without deleting it

```
> filename
```

## Interactive response

```
yes | command_or_script
```

## Copy Paste

### Linux:

Copy:

```
Control +/ Shift +/ c
```

Paste:

```
Control +/ Shift +/ v
```


### MacOSX:

Copy:

```
Command +/ Shift +/ c
```

Paste:

```
Command +/ Shift +/ v
```