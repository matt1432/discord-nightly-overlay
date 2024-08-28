{
  x86_64-linux = {
    stable = rec {
      version = "0.0.66";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-tbpo1+fbziJk2JdaMyAW5Ynb0wuWkLdcDnzQbiZJ47A=";
    };

    ptb = rec {
      version = "0.0.101";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-JesxPoYybVLVwTrDwG2kO6Pikq7qvn7CO8j+24dwjBc=";
    };

    canary = rec {
      version = "0.0.477";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-lYmB5gyFcGsWG9Eclt00zVrI9HhbesYxCwFrtlvnMgM=";
    };

    development = rec {
      version = "0.0.25";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-9dwZ89YOs2iNOeoVrGfNHwr4mvfXmPk1SrJYoteYakY=";
    };
  };
}
