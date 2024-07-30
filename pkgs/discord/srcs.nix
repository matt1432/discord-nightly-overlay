{
  x86_64-linux = {
    stable = rec {
      version = "0.0.61";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-jJapVZ67nqLSNhti7LkfsGNV3JzglZjQkHhTwJvPO98=";
    };

    ptb = rec {
      version = "0.0.97";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-khGZ7paXgNpj4ejQ2winm4X+8t672UUwVeB6ps29o9Q=";
    };

    canary = rec {
      version = "0.0.464";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-zULIjb9eAyYBom+iTcFfxTTxJZTbrWhRCjhtQf7GeR8=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
