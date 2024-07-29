{
  x86_64-linux = {
    stable = rec {
      version = "0.0.61";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-jJapVZ67nqLSNhti7LkfsGNV3JzglZjQkHhTwJvPO98=";
    };

    ptb = rec {
      version = "0.0.96";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-kQ+dICyVqz1Yxs3tSsjx/fS1JupfB6giuS1c2kfFPY4=";
    };

    canary = rec {
      version = "0.0.463";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-w0fxBBa56EwLp6+xeGHyyq3qqETMd1oRX8wUPLsMBmQ=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
