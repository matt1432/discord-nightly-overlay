{
  x86_64-linux = {
    stable = rec {
      version = "0.0.64";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-tBopyhGRNDmtOWSwwiNnPJJm82sk3s76cUun7erHRbM=";
    };

    ptb = rec {
      version = "0.0.100";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-+pIdulAeI2ExpK281BbxQCayYtCwVnKB0+hgiUpsMv8=";
    };

    canary = rec {
      version = "0.0.472";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-3sYz5M1VSg6rjNKbieJsCBz61Zj7vobPkfm6/6p0S8Y=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
