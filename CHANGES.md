2021/XX/XX - RetroLX 2021.08
    * Fork point of batocera.linux project to RetroLX
    * Based on Buildroot 2021.08.1
    * Linux 5.15.x LTS (upgradable) kernel for all architectures
    * Package-based OS (Linux distribution)

2021/06/18 - batocera.linux 31
	* Switch RockPro64 to AArch64 (full 64-bit)
	* add: xemu (xbox emulator for x86_64)
	* add: future pinball (x86_64)
	* add: flatpak support (x86_64)
	* add: Watara Supervision emulator
	* add: libretro-melonDS on Odroid Go Advance / Odroid Go Super
	* add: higher overclocking options to the rpi4 (requires heatsink & fan!)
	* add: mame standalone bezels (standard mame bezels are to put in /userdata/decorations, or thebezelproject works too)
	* add: libretro shaders for Vulkan (and fix LR-Mupen64plus on OpenGL)
	* add: gamecube adapter support
	* add: add standalone emulators options in es
        - mupen64plus (n64)
        - duckstation (psx)
        - cemu (wiiu)
	* add: duckstation advanced options
	* add: es citra options to use custom textures
	* fix: duckstation shared rumble between controllers
	* add: splash for x86_64 and rpi4
	* add: virtual resolutions for games to limit the maximum resolution
	* add: video mode for drm now includes some information to not be applied over different tvs
	* add: es.maxresolution is now renamed es.resolution in batocera-boot.conf and can take any value from listModes (aka max-1920x1080)
	* add: es dolphin options to use custom pads from dolphin ui profile configuration
	* es: add pad battery indicator
	* es: add time zone selection and 12/24 time format in settings
	* es: add long press (for some menus like game details)
	* es: add file browser when editing games metadata
	* es: add lightgun arcade auto-collection
	* es: add HTTP webservices (port 1234)
	* es: add 'magazine' metadata
	* es: option to exclude cue/ccd/m3u child roms
	* bump: python to 3.9
	* bump: kodi to 19.0
	* bump: GCC compiler to 10.3
	* bump: MAME standalone to 0.229
	* bump: Flycast
	* bump: Daphne (Hypseus+Singe) to 2.4.5
	* bump: SwitchRes tool
	* bump: libretro-blastem
	* bump: libretro-flycast, enable on all boards except rpi1/rpi2
	* bump: libretro-stella to 6.5.3
	* bump: libretro-pico8
	* bump: libretro-atari800
	* bump: FS-UAE to 3.0.6
	* bump: Dosbox-X to 0.83.12
	* bump: RPCS3 to 0.0.15
	* bump: mGBA to 0.9.1
	* bump: amiberry to 4.1.2
	* bump: Lutris to 6.4
	* bump: DXVK to 1.8.1
	* bump: Proton to 6.3
	* bump: VKD3D-Proton to 2.3
	* bump: Commander Genius to 2.8.0
	* bump: Dolphin to 5.0-13963
	* bump: DevilutionX (Diablo + Hellfire) to 1.2.1
	* bump: Cemu to 1.22.11
	* bump: Retroarch to v1.9.1
	* bump: libretro cores
	* bump: libretro 1.9.1
	* bump: mesa3d to 21.0.3
	* bump: LTS Kernel to 5.10.32
	* bump: X86_64 to 5.10.x kernel
	* fix: 8bitdo xinput
	* fix: some resolution issues
	* fix:  libretro emulators Options in es
        - PUAE (Amiga)
        - Gambatte (gb)
	* fix:  standalone emulators Options in es
        - Dolpin (Wii & GC)
        - Pcsx2 (PS2)
        - Ppspp (PSP)
        - Cemu (WiiU)

2021/03/06 - batocera.linux 30
        * warning : rpi4 is now running in 64 bits mode.
                    you cannot upgrade from 29 without doing a simple manual action.
                    To upgrade from 29 and before :
                      1. go in the upgrade menu, choose beta and upgrade (behind, this is the stable version, but we want to be sure you'll do action 2).
                      2. put you sdcard into a pc. remove the file config.txt. rename config64.txt to config.txt.
	* odroid go super support
	* Orange Pi PC support (Allwinner H3)
	* add: MelonDS libretro core on (x86_64/ RPI4/ Odroid C4/ Odroid N2/ VIM3)
	* add: Sega Model 3 support via Supermodel emulator (x86_64 for now)
	* add: SDLPoP (Prince of Persia)
	* add: DevilutionX (Diablo 1)
	* add: Xash3D-FWGS (Half-Life 1).
	  - Currently supports the following games:
	  - Half-Life, including Blue Shift and Opposing Force.
	  - Deathmatch Classic.
	  - Several mods (https://github.com/FWGS/hlsdk-xash3d/blob/mobile_hacks/dlls/moddef.h)
	* add: Solarus (RPG game engine)
	* add: EasyRPG (RPG Maker engine) both standalone and libretro core
	* add: MAME (standalone) 0.228 with ARCADE64 filter list and GroovyMame 15 kHz patches
	* add: Hatari (standalone) 2.3.1
	* add: Dosbox-Pure libretro core
	* add: Fairchild Channel-F
	* add: Sharp X1
	* add: Redream for x86_64
	* add: Mugen for x86_64
	* add: Ruffle (Adobe Flash player Emulator) for x86_64
	* add: LightSpark (Adobe Flash player Emulator) for x86_64
	* add: Kernel 15 kHz patch
	* add: Pi 400 support
	* add: Wine Proton (For more compatibility)
	* add: MF (For Wine more games compatibility)
	* add: New systems supported by theBezelProject
	* add: Cymraeg language (cy_GB)
	* add: pcsx2 (ps2) up to 8 players
	* es: Rewritten RetroAchievements :
	  - Rewritten user RetroAchievements screen
	  - Launch games from RetroAchievements screen
	  - New per game RetroAchievements screen
	  - Add RetroAchievements auto collection
	  - Add RetroAchievements filter ( for searches & custom collections )
	  - Add RetroAchievements icon in gamelists
	  - Full indexation of games hashes
	* es: Add SaveState manager for libretro cores supporting save states.
	  - Add SHOW SAVE SNAPSHOTS to AUTO SAVE/LOAD option : This value allows to always open the savestate manager before launching a game
	* es: Scrapers :
	  - Add ArcadeDB scraper
	  - Screenscaper : Add "map" & "box background" option
	  - TheGamesDB scraper : Add scrap of screenshots, fanarts, wheels, boxes backgrounds & titleshots
	  - Manual scraping : Show results from all available scrapers
	* es: ImageViewer : Add "zoomable" mode for pages & maps
	* es: ImageViewer : Add support for Cbz format + Add preview of Cbz files in imageviewer gamelists.
	* es: ImageViewer : Add "Library" system. This systems is designed to contain cbz ( or pdf ) files of magazines & books.
	* es: Add "Vertical Arcade" auto-collection + Vertical game filter
	* es: Add a notification when a new controller is connected / disconnected
	* es: Load custom additionnal/replacement config files from es_systems_*.cfg files
	* es: Rewritten md5 / crc calculations for zip files ( using internal zip library )
	* es: OpenGLES 2.0 support ( for boards supporting it )
	* bump: many libretro cores
	* bump: FAudio (Wine) to 21.01
	* bump: Dosbox-X to 0.83.9
	* bump: Linux 5.10.x LTS kernel series for x86, x86_64 and mainline supported aarch64 & arm SOC's
	* bump: Lutris (Wine) to 6.0
	* bump: DXVK (Wine) to 1.7.3
	* bump: VKD3D-Proton (Wine) to 2.1
	* bump: Mesa3D to 20.3.4
	* bump: Pygame to 2.0.1
	* bump: Cemu to 1.22.5
	* bump: MAME to 0.228
	* bump: RPCS3 to 0.0.14
	* bump: PCSX2 (performances increased)
	* bump: WinBTRFS Driver to 1.7.6
	* fix: USB boot on RPi3 and RPi4
	* fix: set mac eth addr for vim3
	* fix: trash on file manager
	* fix: resizing issue with 2TB or larger drives (now 4k block size)

2020/12/11 - batocera.linux 29
	* new version is 29. before this, the codification was 5.xx, so the 28th version was 5.27.2. the 1st version (with the same technical arch) was 5.0.
	* add: duckstation (libretro core for x86_64 and AArch64 boards)
	* add: hbmame (x86, x86_64, odroid n2)
	* add: windows games 32 and 64 bits (wine)
	* add: DXVK for wine (Run DirectX9 to 11 Games)
	* add: VKD3D-Proton for wine (Run DirectX 12 Games)
	* add: wiiu emulator (cemu)
	* add: ps3 emulator (rpcs3)
	* add: TIC-80 and pico-8 emulators (fantasy consoles)
	* add: pygame support : create your own games / learn python.
	* add: keyboard and mouse support from joystick (configurable easyly from es, for system like dos, apple2, windows, ...)
	* add: Odroid C4 support
	* add: Odroid C2 support revived (using Mesa/Lima and 5.8 kernel)
	* add: Khadas VIM2 support (https://wiki.batocera.org/devices#khadas_vim2 for details)
	* add: Anbernic RG351P support
	* add: ES support for animated storyboards
	* add: ES reads videos and pdf from the screenshots system (directly in es)
	* add: ES find similar games feature
	* add: Content Downloader: support for multi-repos and search
	* add: Content Downloader: filtered on systems supported by your board
	* add: Bezels auto-resized (as long as your aspect ratio is >= 16/10)
	* add: easy vulkan configuration for retroarch / rpcs3
	* add: odroidn2 : jaguar
	* add: dolphin performances on odroidn2 increased
	* add: sound when a RetroAchievement is unlocked
	* fix: Odroid Go Advance splash screen
	* fix: CHD broken support on most systems
	* fix: netplay (and add "watch mode")
	* bump: Dosbox-X to 0.83.7
	* bump: mGBA to 0.8.4
	* bump: Stella to 6.4
	* bump: PCSX-ReARMed
	* bump: MAME to 0.225
	* bump: ScummVM to 2.2.0
	* bump: Amiberry to 3.3
	* bump: YabaSanshiro to 3.5
	* bump: many default bezels updated
	* bump: WinBTRFS Driver to 1.7.5

2020/10/04 - batocera.linux 5.27.2
	* fix some issues with some tvs (giving bad resolutions information)
	* fix rpi gpio
	* fix pcsx2 on some cpu (x68*)

2020/09/15 - batocera.linux 5.27
	* add: Retroflag NESPi 4 case support
	* add: wifi hidden SSID support
	* add: Khadas VIM3 support (see https://wiki.batocera.org/devices#khadas_vim3 for details)
	* add: Allwinner h5 support (Tritium-H5) from Librecomputer
	* add: odroid n2+ support (including overclocking up to 2400 and fan)
	* add: libretro-quasi88 (NEC PC-8800)
	* add: cannonball (outrun engine)
	* add: libretro-scummvm core (working)
	* add: batocera-record (on x86*) to record video of batocera from command line
	* add: filesystem compression (btrfs option in batocera.conf)
	* add: game manuals scrapping / rendering
	* add: batocera manual
	* add: Batocera content downloader (with 'pacman' package manager)
	* add: New UI for installing/removing themes, bezels, free content
	* add: new options for upscaling when emulators support it (PSX, Dreamcast, DS, Gamecube, Wii...)
	* add: system manufacturers bar
	* add: flags for games locales
	* add: support for RTL languages (arabic translation)
	* add: multi-thread support for ScreenScraper
	* add: oc_FR language
	* add: Vulkan support
	* add: technical stats and info on SSH login
	* add: resolution configuration by system/game for many boards
	* add: rpi4 saturn support
	* add: n2 gamecube support
	* fix: theBezelProject default bezel now correctly installed
	* fix: audio in video snaps (rockpro64)
	* fix: volume slider in ES (rockpro64)
	* fix: bezels resizing for ultrawide screens
	* fix: wifi connection
	* fix: RetroAchievements window (data scraping, fix for small screens)
	* fix: remove .zip support for CD-based systems
	* fix: odroid n2 owners should reburn completly the image to get better performances (overclocking)
	* bump: Intel Iris driver
	* bump: RPi3 and RPi4 kms video driver
	* bump: RetroArch 1.9.0 along with libretro emulators
	* bump: Yabasanshiro to 3.4.2
	* bump: PPSSPP to 1.10.3
	* bump: Dolphin to 5.0-12257
	* bump: MAME to 0.223
	* bump: linapple
	* bump: citra-emu
	* bump: Kodi 18.8
	* bump: nvidia-driver (450.66)
	* add: new batocera-splash modes (see batocera.conf)

2020/06/01 - batocera.linux 5.26
	* add: support for Raspberry Pi4
	* add: support for Argon One
	* add: support for Odroid Go Advanced Black Edition (wifi/l2/r2)
	* es: background music now supports .flac, .wav and popular popular chiptune formats (.mod, .xm., .s3m, .far, .mtm, .669...)
	* es: simplified UI for custom features selection
	* es: new UI to remove paired bluetooth controllers
	* es: customizable ES splash screen
	* es: up to 8 players
	* es: menu to format an external disk in ext4, btrfs, exfat
	* windows: the btrfs driver for Windows is available on the BATOCERA partition
	* add: libretro-mrboom (Ports)
	* add: libretro-tyrquake (Ports)
	* add: openbor
	* add: 'batocera-create-collection' command-line to help create custom collections
	* add: on Raspberry Pi, turn off CEC-compatible TV when shutting down Batocera
	* netplay: several enhancements to simplify game matching
	* fix: Dolphin (Gamecube/Wii) - fixed upscaled resolutions
	* fix: Amstrad CPC - virtual keyboard
	* fix: Apple II on x86_64 when using vFAT/FAT32 to store ROMs
	* bump: moonlight-embedded to 2.4.11
	* bump: nvidia-driver (440.82)
	* bump: libretro-bsnes to v115
	* bump: libretro-stella to 6.1.2
	* bump: libretro-kronos to 2.1.1
	* bump: fsuae to 3.0.3
	* bump: dosbox to r4336
	* bump: dolphin to 5.0-11770
	* bump: citra-emu
	* bump: scummvm to v2.1.2
	* bump: amiberry to v3.1.3
	* bump: odroid-n2 kernel to 5.4
	* bump: libretro-mame to 0.220
	* bump: libretro-cap32 to 4.5

2020/03/15 - batocera.linux 5.25
	* add: Odroid Go Advance support (Retroarch GUI rotation issues thanks to Lakka Team efforts)
	* add: netplay
	* add: if you have more than one .mp4 or .png file in /boot/, a random one is selected as intro (video only if supported!)
	* add: new <gametime> tag in gamelist.xml keeping track of playing time in a game
	* add: Ports section on EmulationStation (Cave Story, Lutro and Doom)
	* add: Thomson - MO/TO (libretro-theodore)
	* add: NEC PC-98 (libretro-pc98)
	* add: Daphne (hypseus)
	* add: libretro-puae (Commodore Amiga)
	* add: new "flatten-glow" and "zfast" shader sets
	* add: run-ahead option for optimized latency on libretro systems (/!\ may impact performance)
	* add: all RetroAchievements platforms
	* es: new RetroAchievements screen
	* es: scan and detect wifi networks
	* es: screen brightness support
	* es: display volume in OSD
	* es: support for static video background effects on systems view
	* es: (Decoration bezels) New option named "Default_unglazed" same bezels as "Default" ones, but without any glazed old cathodic TV effect.
	* es: support for group/ungroup (Amiga, MSX and Port)
	* bump: nvidia-driver (440.59)
	* bump: lr-mame 0.219
	* bump: retroarch v1.8.4
	* bump: libretro core
	* bump: amiberry to v3.1.2
	* bump: dolphin-emu to 5.0-11632
	* bump: fs-uae to 3.0.0
	* bump: mupen64plus core
	* bump: scummmvm
	* bump: vice
	* bump: citra with QT interface
	* bump: reicast
	* bump: kodi to 18.5 (not yet all boards)
	* bump: buildroot and linux kernel
	* bluetooth: fix some pairing issues
	* pads: adapt mapping when no l2 or not joystick2 is found (n64, gamecube)
	* pads: fixes pad having non centered axis (triggers) (xbox pads). As a drawback, axes are not available until a button is pressed
	* pads: lots of new controllers added like PS3, PS4, 8bitdo (all controllers), Xbox Adaptive, Retro City and CSL Gamepad
	* rpi: activation of safe shutdown feature for GPi case added (read the GPi manual how to toggle hardware switch)
	* rpi: full support of several Retroflag cases (GPi, NesPi+, SuperPi, MegaPi)
	* 3ds: menu to change screen layout (Default, large screen and side by syde)
	* ppsspp: rewind and fast forward
	* gamecube: automatically use d-pad if no analog stick is available (for bartop and arcade cabinets)
	* updated BIOS MD5 checks for some systems
	* rockpro64: support for Roshambo Retro Gaming Case
	* rewind disabled by default8

2019/11/09 - batocera.linux 5.24
	* x86/x86_64: fix support for +2TB disks
	* x86_64: support for recent UEFI-only motherboards, including Apple MacBook Pro
	* libretro: update core (nestopia)
	* libretro: enable AI game translation (<hotkey>+<R trigger>)
	* wii/gamecube: custom textures in /userdata/saves/dolphin-emu/Load/Textures/<game id> will be loaded automatically.
	* New default music themes (chiptunes by Waterflame)
	* Refreshed Batocera logo (when loading ES)
	* add: new "curvature" shader set
	* add: new "splash screen" Batocera intro video. (special thanks to Christo Snakervill).
	* es: Performance : Load systems using threaded loading when processor threads > 2
	* es: Performance : Async loading for images
	* es: Memory : VRam usage optimisations for images & videos. Optimisations in image management.
	* es: Memory : Ram usage optimisation (gamelist storage...)
	* es: UI : Added a progressbar during loading, changing themes and reloading game lists.
	* es: UI : Enhanced Grid Views modes.
	* es: UI : Updated menu & buttons resources.
	* es: UI : Added menu animations.
	* es: UI : Show decorations preview.
	* es: UI : Menu navigation when on top & moving top, select last item
	* es: UI : On Screen Keyboard : Fixed lowercasing + Support for French Layout
	* es: UI : New developer menu containing advanced ES tools for developers.
	* es: UI : Added icons in message boxes
	* es: Themes : support for menu themings, help, clock, controllers activity
	* es: Themes : full support for recalbox themes & every existing EmulationStation Themes.
	* es: Themes : Support for Theme musics.
	* es: Themes : NinePatchComponent : fixed & added support for color, centerColor, edgeColor and cornerSize in themes & can be created as "extra" in themes.
	* es: Themes : VideoVlcComponent : can now be added as extra in themes
	* es: Themes : Add video, marquee & thumbnail support in detailed view
	* es: Themes : new "screen" view ( to display OSD text and images )
	* es: Themes : new "custom" views.
	* es: Themes : custom subsets
	* es: Themes : Support for tinyscreens
	* es: Themes : Support for localisation
	* es: Video component : Optimizations & Fixes. Added support for minSize. Add bump effect.
	* es: Image component : Support for reflexion, fixed opacity, scaling
	* es: Text component : Support for reflexion, fixed opacity
	* es: Scraper : Scrapping in a background thread.
	* es: ScreenScraper : Added options IMAGE SOURCE, BOX SOURCE, LOGO SOURCE and SCRAPE VIDEOS for ScreenScraper.
	* es: new option : Add Show Folders
	* es: new option : Show Favorites First
	* es: new option : Show System name in collection.
	* es: new option : Show Filenames in lists.
	* es: new option : Show controllers activity.
	* es: new option : Start on gamelist
	* es: new option : Enable navigation sounds.
	* es: new option : Add a developer option to change log level or disable logging.
	* es: new option : Song names pop-up display time is now configurable
	* es: new option : Removed filter "HIDDEN" replaced by option "SHOW HIDDEN FILES"
	* es: ScreenSaver : Show logos & text in video and image screensavers.
	* es: ScreenSaver : Show decorations in video and image screensavers.
	* es: F5 Key : Use it to reload themes ( for themers )...
	* es: Small Screen / GPI : Show menus in fullscreen & scaled
	* es: Theme installer : Brand new look + download/install in background
	* es: TheBezelProject : Brand new look + download/install in background
	* nvidia-driver: version bump (435.21)
	* libretro: updated cores
	* 3ds: bump citra-emu
	* 3ds: added libretro-citra
	* snes: added libretro-bsnes
	* lr-mame: version bump (0.214)
	* retroarch: version bump (1.7.9.2)
	* lr-mame2003plus: version bump
	* ppsspp: version bump (1.9.4)
	* lightgun bezel (by Orions Angel, modified, screen enlarged and improved by Fery65)

2019/09/06 - batocera.linux 5.23
	* games collections (custom, last played games, favorites)
	* /userdata/system/scripts user scripts to react to starting/stopping of games
	* new options available from es : fullboot for ps2 and emulated wiimotes for wii
	* new options : game boy colorization
	* options configurable by game
	* nvidia-driver: version bump (430.40)
	* new shaders sets for "retro" and "scanlines", and added a new "enhanced" set
	* add: ability to display/hide gaming systems from the "UI Settings" menu
	* add: "Lightgun" system (to use with a Dolphinbar)
	* add: system-specific background music (by system folder in /userdata/music/)
	* add: new option for a pop-up with music titles
	* add: music fades out when launching a game
	* add: 2 new arcade 4:3 format bezels and 3 arcade vertical format bezel (configurable by game)
	* add: new atomiswave and naomi default bezels (replacing old bezels since they are arcade cabinet systems)
	* add: new bezel called "atomiswave_naomi_vertical" (configure per game vertical format)
	* add: amstrad gx4000 bezel
	* add: integration with theBezelProject for per-game bezels on some systems
	* add: tinkerboard support
	* add: miqi support
	* renamed: libretro-reicast to libretro-flycast
	* add: libretro-handy Atari Lynx Core
	* add: amiberry support for - odroid xu4 - Pine64 rockpro64 - Asus Tinkerboard - MQmaker MiQi
	* add: libretro-vice for RPI3
	* add: libretro-yabasanshiro Sega Saturn Core for X86/X86_64
	* bump: libretro-genesisplusgx
	* bump: citra-emu
	* bump: scummvm
	* bump: libretro-fbneo
	* bump: libretro-cap32
	* bump: libretro-mame2003-plus
	* bump: linapple-pie
	* bump: fsuae to 2.9.12dev
	* bump: libretro-mupen64plus-next & Enable core on Tinkerboard & MiQi
	* removed: libertro-mupen64plus (discontinued)
	* bump: libretro-mame to 0.212 and add support for - Pine64 rockpro64 - Asus Tinkerboard - MQmaker MiQi
	* removed: libretro-quicknes and libretro-catsfc
	* snes9x: replacing repository
	* bump: libretro-neocd (adds .chd support)
	* removed: libretro-gpsp
	* amiga: new rom folder structure (amiga, amigacd32 and amigacdtv)

2019/06/12 - batocera.linux 5.22
	* nvidia-driver: version bump (418.74)
	* moonlight: bump to v2.4.10
	* amiberry: bump v2.25
	* fix: libretro-genesisplusgx for rockpro64
	* fix: Citra emulator in the center of the screen
	* add: naomi and atomiswave for odroid xu4
	* add: libretro-neocd for NeoGeo CD
	* advancemame: removed
	* citra-emu: updated and standard core for the Nintendo 3DS
	* mupen64plus: bump to 2.5.9
	* fix: mupen64 widescreen mode
	* wii/gc: dolphin version bump (5.0-9896)
	* es-retropie integration
		* theme compatibility with retropie
		* videos previews
	* add: ES theme installer (menu> system> update> install theme)
	* add: ES menu for RetroAchievements status
	* new default theme : es-theme-carbon
	* add: screensavers for slideshow and "random video" (aka demo mode)
	* kid/kiosk modes
	* choose the default system at startup
	* choose randomly a game
	* cec in es
	* scrapper fixed
	* add: pokemon-mini
	* add: sufami turbo
	* add: nintendo satellaview
	* add: amstrad GX4000
	* decoration/bezels: Add light realistic Cathodic CRT effect to improve original fidelity image. (Possibility to use shaders too)
	* remove recalbox-theme (because of new licence restrictions)
	* specific favorite system removed (will be added properly later)
	* emulator configuration by game removed (will be added properly later)
	* add: libretro-reicast-wince (x64)
	* retroarch: added audio and video filters
	* retroarch: bump to v1.7.7
	* update: libretro packages
	* substituted: libretro-fbalpha by libretro-fbneo

2019/03/29 - batocera.linux 5.21
	* nvidia-driver: version bump (418.43)
	* arcade: new core - lr-mame (mame-0.206)
	* nintendo 3DS: added citra emulator
	* emulator: atari 800 and atari 5200 were separated
	* libretro-reicast: added support for the arm platform
	* update: RetroArch 1.7.6 and libretro core
	* add: NeoGeo CD
	* add: libretro-mupen64plus-next for Nintendo 64
	* RetroFlag: Shutdown script added + Cleaning
	* n64: fixes mupen64 configuration including pads
	* rockpro64: wifi/bluetooth
	* x86/x86_64: fix support for intel gpus
	* x86_64: support for amd ryzen
	* wii: wiimote and pads can be used at the same time
	* New 20 Ambiance Bezels : TV with scratched effects on glass, Retro Room, etc (special thanks to fery65)
	* add decorations folder into the share folder to make easier bezels overlays' customization

2019/01/22 - batocera.linux 5.20
	* better ps4 pad support
	* add Nintendo 3DS support (libretro-citra) (x86_64)
	* amiberry: upgraded/add whdload support/better joystick support
	* add: libretro-kronos: new core for Sega Saturn
	* update: libretro cores (all cores)
	* Bezels: New NDS, 3DS, Wii, FBA, Mame, FBA_libretro bezels
	* Bezels: review of all existing bezels, aspect and rendering improved, light 3D effect added. Luminosity and darkness lightened. Homogeneity and sobriety respected.

2018/11/25 - batocera.linux 5.19
	* technical upgrade
	* configuration applications for ps2, wii, gamecube via f1, then applications (x86*)
	* ps2: fix extensions list
	* ps2: fix pad for player 2
	* gameboy/gameboy color: 2 players out of the box
	* xbox one pad (via bluetooth and usb)
	* ps4 pad (via bluetooth and usb) (not enabled by default)
	* better hardware firmwares support
	* better bluetooth association
	* xosd : f5 display battery / time (x86*)
	* rpi3+ overclocking
	* support for nvidia proprietary driver
	* libretro-reicast: reicast libretro and reicast OIT libretro merged into one. ( https://www.libretro.com/index.php/reicast-libretro-and-reicast-oit-libretro-merged-into-one-what-you-need-to-know/ )
	* libretro-reicast: Naomi added (lst, bin, dat)
	* video mode (resolution) customizable by emulator from the gui (rpi / x86*)
	* some fixes

2018/10/02 - batocera.linux 5.18
	* retroarch: update to 1.7.4
        * libretro: update core (atari800, beetle-ngp, beetle-pce, beetle-pcfx, beetle-saturn, beetle-vb, beetle-wswan,
          bluemsx, cap32, catsfc, 81, desmume, fba, fceumm, fmsx, freeintv, fuse, gambatte, genesisplusgx, gpsp, gw, hatari,
          lutro, mame2003, mame2003plus, mgba, mupen64plus, nestopia, nxengine, o2em, parallel-n64, pcsx, picodrive, pocketsnes,
          px68k, scummmvm, snes9x, snes9x-next, uae, vecx, virtualjaguar, yabause, reicast, reicast_oit)
        * pcsx2 : playstation2 (x86_64 and x86)
        * commodore64: vice emulator update to 3.2
        * amigacd32: added cue and zip extensions
        * advancedmame: update to 3.9
        * reicast: update to r8.1
        * add: libretro-dosbox (x86_32 and x86_64)
        * add: libretro-mame2016 (x86_32 and x86_64)
        * add: libretro-vice (x86_32 and x86_64)

2018/09/02 - batocera.linux 5.17 - release
	* fix moonlight
	* fix n64 (crashes for some games on some plateforms)
	* remove virtualgamepads (useless)
	* update: libretro-reicast
	* add: libretro-reicast-oit for x86_64
	* various fixes (bluetooth, ps3 pads, ...)
	* fix all architectures

2018/06/25 - batocera.linux 5.16 - release
        * x86: better mouse handling (fixing scummvm)
        * retroarch: update to 1.7.3
        * scummvm: update to 2.0.0
        * libretro-scummvm: update
        * add: libretro-px68k (Sharp X68000)
        * add: libretro-mame2003-plus
        * retroachievements: update (Master System, Atari Lynx, Atari 2600, VirtualBoy, NeoGeo Pocket and NeoGeo)
	* es: add a clock (and an option to remove it ; not visible on rpi when not connected to the network)
	* es: add an input checker to know how many pads are plugs and which joystick is which player
        * update: libretro-cores leveling with Retroarch 1.7.3
        * update: Dolphin Emulator
        * better wifi support
        * better bluetooth support

2018/05/01 - batocera.linux 5.15 - release
        * rpi3+ support
        * Atari 5200
        * theme update (light version)
        * some emulators updated
        * gamecube: set automatically 16/9 ratio if appropriated (or forced)
        * the update message now contains the old and new version before upgrading
        * change the default keyboard keys in es
        * nas: you can now mount roms and bios via wifi at startup
        * fix ssh on external storage
        * some minor fixes

2018/03/08 - batocera.linux 5.14 - release
        * rpi: new splash video
        * rpi: mutable splash video (add splashsound=false in /boot/batocera-boot.conf to disable the sound)
        * rpi: customizable splash video (put a video in /boot/splash.mp4)
        * link update MameDB and Screenscraper
        * configgen: partially rewritten / more robust
        * decoration (bezel): available for different resolutions
        * mupen64: add osd message when available on the architecture
        * s905/c2 : add mame 2010
        * new emulator for intellivision
        * most of emulators updated
        * reicast: you can choose 16/9 in advanced options. not set automatically, because it's buggy in some cases
        * wii: automatically set 16/9 by default if your resolution is 16/9 or higher (or if set to auto or 16/9 in advanced options)

2018/02/02 - batocera.linux 5.13 - release
        * fix the bluetooth bug

2018/01/22 - batocera.linux 5.12 - release
        * buildroot upgrade to 2017/12
        * kodi 17.6
        * joystick battery information (information menu)
        * x86/x86_64: 3do support
        * rpi1/2/3 : amiga (amiberry, support of amiga 500 500p 1200 4000 cdtv)
        * x86*: linux kernel 4.14
        * fix sdcard mount
        * fix Korean language
        * new architecture support : s905
        * bezel support (1920x1080 game resolution only, decoration option in the game menu)
        * some bugfixes

2017/11/22 - batocera.linux 5.11 - release
        * x86*: (others coming later) : amiga support : amiga500 amiga500+ amiga600 amiga1000 amiga1200 amiga3000 amiga4000 amigacd32 amigacdtv
        * amiga: caps img plugin
        * rpi3: optimize the psp ini
        * retroarch: adding the mupen64plus core (previously known as gliden64)
        * retroarch: adding the parallel-n64 core (forked from gliden64)
        * wii: .side. in rom names switches virtual wiimotes on the horizontal side
        * wii: for each game, you can choose if the axis controls: i(nfrared), s(wing), t(ilt) or n(unchuk),
        for example, to play mariokart wii, rename it mario_kart.side.ti.iso (to get the tilt on the first axis and infrared on the 2nd one)
        for example, to play mario galaxy, rename it mario_galaxy.ni.iso (got get the nunchuk on the first axis and infrared on the 2nd one)
        * wii: tilt instead of swing by default on the 2nd axis
        * mame: disable rewinding while it make fail several games
        * system: fixes some sound issues
        * system: installation from the system menu for any platform and from any platform
        * system: fancy mount points (explorer, kodi)
        * es: fix the mp3 player
        * kodi: fix plugins

2017/10/10 - batocera.linux 5.10 - release
        * rpi3 overclocking options
        * system: update to buildroot 201708
        * system: update to kodi 17.3
        * psp: fix select when it's a hotkey
        * c64: add the commodore64 emulator
        * fix some joystick issues
        * ctrl+alt+f4 switches on alsamixer (to control sound in an advanced way)
        * upgrading retroarch
        * xu4: add nintendo ds (desmume)
        * several bugs fixed

2017/09/06 - batocera.linux 5.9 - release
        * system: new video output option (for multiple outputs computer, plugged on the tv via hdmi)
        * system: make the overlay rw by default (instead of ro)
        * system: change the hostname to batocera
        * system: change the default root password to linux
        * system: installer script (recalbox-install.sh, not yet on the gui)
        * xu4: upgrade the mali driver
        * emulator: fix reicast fps under some circonstances
        * emulator: reicast hotkeys : hotkey+start is required to quit the game
        * emulator: ppsspp hotkeys : quit, save, load, menu
        * emulator: upgrade mame2003 (fixing a sound issue)
        * emulator: fix shaders on x86*
        * emulator: enable rewinding for sega cd, virtualboy, psx, fba, mame, vectrex
        * emulator: add mame2010 for rpi2
        * multimedia: add libaccs, libdvdcss, x265 for a better media support
        * multimedia: fix the kodi joystick mapping in some cases

2017/06/25 - batocera.linux 5.8 - release
        * fix some pads not working with kodi (mainly xbox 360)

2017/06/04 - batocera.linux 5.7 - release
        * technical upgrade (buildroot 201704, gcc 5.4)
        * rpi*: bump to linux 4.9
        * support of the rapsberry pi zero W (including wifi and bluetooth)
        * removal of recalbox-api and recalbox-manager
        * update of virtual gamepad
        * nes: map x and y to b and a for convenience (fceunext & quicknes)
        * new libretro-beetle-psx core
        * psx: remove the .bin extension. please use .cue.
        * kodi 17.1
        * fix dreamcast (players, vmu, config)
        * psp: fixes
        * bump reicast
        * mount sdcards
        * pt_PT language

2017/04/21 - batocera.linux 5.6 - release
        * x86* : add nintendo ds (desmume)
        * rpi3: add mame2010
        * add an automatic scraping menu using sselph/scraper and screenscraper
        * bios missing listed in a new menu in game menu
        * add temperature and battery information when available in the information menu
        * wii: system language configured automatically
        * wii: ratio is automatically set to 16/9. If you explicitly set it to 4/3 in option, it will take it.
        * gamecube: language set from the batocera system language
        * psx: update and fix
        * support file can be generated from the system menu
        * some emulators upgraded
        libretro-beetle-wswan
        libretro-cap32
        libretro-catsfc
        libretro-gw
        libretro-gambatte
        libretro-picodrive
        libretro-pocketsnes
        mupen64plus-video-glide64mk2

2017/03/18 - batocera.linux 5.5 - release
        * fix playstation 1

2017/03/17 - batocera.linux 5.4 - release
        * wii/gamecube: add hotkeys (exit, pause, screenshot, save/load state)
        * wii/gamecube: support for 3d tv (hotkey + r1)
        * add scummmvm for x86*
        * add the Jaguar emulator for x86* xu4 c2
        * add nintendo 64 gliden renderer for xu4, not as default while it's not centered but better n64 rendering (change it in advanced options menu)
        * system menu: add system informations in the system menu
        * x86*: add a file manager callable by pressing f1
        * fix: the external drives names
        * fix: disable the x11 screensaver in some cases
        * fix: gamecube pads (some were not working)
        * x86*: add the xrandr tool (for screen resolution/rotation)

2017/02/19 - batocera.linux 5.3 - release
        * Upgrade several emulators
        * Fix the autosave function
        * Fix randomly blinking black borders on x86*
        * New logo
        * Better video card support on x86*
        * Several minor fixes
        * Backup from the system menu
        backup is from internal to external, external to external or external to internal
        backup are differential : if you redo a backup, it will change only changed files
        you can use the backup as an external device
        to restore, boot on the backup, and restore on the internal device
        Special thanks to Vincent, Gérard and Antoine for the new logo.

2017/01/30 - batocera.linux 5.2 - release
        * saturn emulator for x86/x86_64 (yabause)
        * snes9x emulator (by default on xu4, change it if you have saves to load)
        * ps1 emulator upgraded to support 3 players or more
        * psp emulator upgraded and fixed when a video is played (except for the odroid c2)
        * mame2010 for xu4/x86/x86_64
        * choose the sound card from the menu (x86/x86_64)
        * fix the web manager
        * download percentage during the upgrade process
        * fix the automatic upgrade process (see the manual upgrade in the wiki section if needed)

2017/01/04 -  batocera.linux 5.1 - release
        * Technical upgrade to buildroot (december 2016)
        * Linux kernel 4.9 (more supported hardware)
        * HDD driver compiled into the kernel (you can now install batocera.linux on an HDD)
        * Fix Atari ST
        * Due to the new download urls and a bug, automatic upgrades are broken and fixed for the next version.
        You can however manually upgrade using wiki/=en:upgrade_manually.

2016/12/26 - batocera.linux
        * recalbox.remix becomes batocera.linux
        A batocera rufomaculata is an insect of the coleoptera order that my son dreams to capture for his collection.

2016/12/12
        * squashfs/overlayfs
        Note: this version is the first one with real wiimotes working on x86_64 architectures.
        Recalbox.remix is now mainly 3 files on the USB key/SD card (SD CARD CONTENT - grub) :
        - /boot/linux (os system, ~5/10mb)
        - /boot/recalbox (root filesystem, ~350mb)
        - /boot/initrd.gz (technical file needed to start the recalbox file from linux ~500kb)

2016/11/14
        * play Wii with real wiimotes
        The real wiimote is now working thanks to the Dolphin emulator.

2016/10/31
        * Recalbox live USB on x86_64 (Alpha 4)
        Add Grub to be able to boot from a legacy bios.

2016/10/29
        * Recalbox on Odroid C2 (Alpha 2)
        N64, lirc, virtual keyboard supports are added.

2016/10/17
        * Recalbox on Odroid C2 (first Alpha)
        I built a first Alpha for the Odroid C2 for people who are interested to test it.
        I've made Kodi working, which was not that easy while Kodi 16 doesn't support aarch64
        and while Kodi 17 isn't out. I've found the 2 mini commits to backports the changes and make it work.

2016/10/01
        * Recalbox live usb on x86_64 : GameCube and Wii
        The ports on x86 and x86_64 are almost done. I'm including the GameCube and the Wii into Recalbox.

2016/07/28
        * Recalbox live usb - progress
        I'm working on my next Recalbox port : PC.
        There is still a lot of work.

2016/06/23
        * N64 pad precision - next releases
        Can't really play to Golden Eyes 007 ?
        Effectively, the pad precision configuration is not well defined in current releases. I'm fixing it for the next releases.

2016/06/23
        * Odroid XU4 Release - release
        This is the first stable version for the Odroid XU4. You can get the full details of what is supported here.
        This is compiled from the official recalbox sources. Once installed, don't forget to configure
        your batocera.conf to upgrade from this website (see previous post).

2016/06/21
        * Network shares - advanced configuration
        You've not enough space on your sdcard or on your usbkey ?
        You can now use your nas (like a freebox) as a usbkey (not from the graphical interface for the moment).
        You need to edit the /boot/batocera-boot.conf file like this :
        sharedevice=NETWORK
        sharenetwork_nfs1=ROMS@192.168.0.1:/mnt/Documents/recalbox/roms
        sharenetwork_nfs2=SAVES@192.168.0.1:/mnt/Documents/recalbox/saves
        sharenetwork_nfs3=BIOS@192.168.0.1:/mnt/Documents/recalbox/bios
        #sharenetwork_smb1=SHARE@192.168.0.1:Documents/recalbox:guest
