{
  x86_64-linux = {
    stable = rec {
      version = "0.0.63";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-KtVX9EJPYmzDQd2beV/dDW8jjLDjacKZDrD72kLUwKo=";
    };

    ptb = rec {
      version = "0.0.99";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-xXBWD5H4MOC2HaJwN5+N4s5fHrHet6zTm1C7ChWN8Zc=";
    };

    canary = rec {
      version = "0.0.469";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-0B5Hg/3Yq+GsvbLHd66CQ7Z905yxae2Pz1Y2vaYfnVc=";
    };

    development = rec {
      version = "0.0.24";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-rSlGL2BwtUxLJltSD2Ms94qmZ4kuX5i9jFqyYC30jyQ=";
    };
  };
}
