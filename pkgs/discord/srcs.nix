{
  x86_64-linux = {
    stable = rec {
      version = "0.0.63";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-KtVX9EJPYmzDQd2beV/dDW8jjLDjacKZDrD72kLUwKo=";
    };

    ptb = rec {
      version = "0.0.98";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-aJx5ruZRCnBTf/Qon1uFfxMX2a25Xg2AzbnN/UtDe8w=";
    };

    canary = rec {
      version = "0.0.467";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-h+9/RDNPsGAii9AnSpqF3pauRmhxD7gM6LpTBBYb7b8=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
