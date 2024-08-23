{
  x86_64-linux = {
    stable = rec {
      version = "0.0.65";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-kzYLZcjuG7k8RSjc5ooDlMKaAlMHvm0yCl5Krnhqq8A=";
    };

    ptb = rec {
      version = "0.0.100";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-+pIdulAeI2ExpK281BbxQCayYtCwVnKB0+hgiUpsMv8=";
    };

    canary = rec {
      version = "0.0.475";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-suVIDCZhI6DwUVizBmTm104Clr6pH/olAIbOMNzFNss=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
