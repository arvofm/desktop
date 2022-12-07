import os.path
config.source('./gruvbox.py');
c.zoom.default = 88;
c.content.blocking.adblock.lists = [ "https://easylist.to/easylist/easylist.txt", "https://easylist.to/easylist/easyprivacy.txt", "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
        "https://easylist.to/easylist/fanboy-annoyance.txt",
        "https://secure.fanboy.co.nz/fanboy-annoyance.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/annoyances.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters-2020.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/unbreak.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/resource-abuse.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/privacy.txt",
        "https://github.com/uBlockOrigin/uAssets/raw/master/filters/filters.txt"
        ];
c.content.canvas_reading = False;
c.fonts.default_family = "Ubuntu Nerd Font";
c.tabs.title.alignment = "center";
c.downloads.position = "bottom";
c.qt.workarounds.remove_service_workers = True;

config.load_autoconfig();
