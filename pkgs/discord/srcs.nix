{
  x86_64-linux = {
    stable = rec {
      version = "0.0.61";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-jJapVZ67nqLSNhti7LkfsGNV3JzglZjQkHhTwJvPO98=";
    };

    ptb = rec {
      version = "0.0.95";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-AtGfukiFT07i655wW4/9p6NHkjtgHlE9rSp6owXhT5k=";
    };

    canary = rec {
      version = "0.0.458";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-N9qacbNuuVnZoKTNYkNrhbWnzpmgAM1uOfuBA1dkG4Q=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
