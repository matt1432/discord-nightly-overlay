{
  x86_64-linux = {
    stable = rec {
      version = "0.0.60";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-hu1+/z/ZtHoobjHF+pgNm040r4LQJUTnpZ06RNERFr8=";
    };

    ptb = rec {
      version = "0.0.95";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-AtGfukiFT07i655wW4/9p6NHkjtgHlE9rSp6owXhT5k=";
    };

    canary = rec {
      version = "0.0.454";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-4VAL8G1pPhMzzPp2wuvdqZQertm+NJQSlhtrIDXwM50=";
    };

    development = rec {
      version = "0.0.22";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-dSoi/YZra8SRbV1rvbtKkyHmhfTb+A6mja8zZ9Y5JNo=";
    };
  };
}
