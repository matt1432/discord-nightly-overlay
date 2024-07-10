{
  x86_64-linux = {
    stable = rec {
      version = "0.0.59";
      url = "https://dl.discordapp.net/apps/linux/${version}/discord-${version}.tar.gz";
      hash = "sha256-wv0HcbPlFRb8OTvnkCdb1MAuvl/7LHTUfE5UxpeSIPw=";
    };

    ptb = rec {
      version = "0.0.93";
      url = "https://dl-ptb.discordapp.net/apps/linux/${version}/discord-ptb-${version}.tar.gz";
      hash = "sha256-MO940dRAJ0J/fa8I+nU8483AH8PA7eIJ9ZUF15iqbgE=";
    };

    canary = rec {
      version = "0.0.448";
      url = "https://dl-canary.discordapp.net/apps/linux/${version}/discord-canary-${version}.tar.gz";
      hash = "sha256-IDckBHnJddTc+PBAO1JSgaz7yNLcCQPtNKuyCNAJgkE=";
    };

    development = rec {
      version = "0.0.22";
      url = "https://dl-development.discordapp.net/apps/linux/${version}/discord-development-${version}.tar.gz";
      hash = "sha256-dSoi/YZra8SRbV1rvbtKkyHmhfTb+A6mja8zZ9Y5JNo=";
    };
  };
}
