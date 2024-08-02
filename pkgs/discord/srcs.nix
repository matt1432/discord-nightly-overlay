{
  x86_64-linux = {
    stable = rec {
      version = "0.0.62";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-gtoTcTcZYJdclEqi1BcxlhVJqU2POdk7XpDq7Dt5YMg=";
    };

    ptb = rec {
      version = "0.0.98";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-aJx5ruZRCnBTf/Qon1uFfxMX2a25Xg2AzbnN/UtDe8w=";
    };

    canary = rec {
      version = "0.0.465";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-h4ULLPRhtGy6FZHKfj3AF0hjPhidVvJEbHOVgCh+6JQ=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
