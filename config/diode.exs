# Diode Network https://diode.io
use Mix.Config

config :explorer, Explorer.ExchangeRates, enabled: false, store: :ets

config :block_scout_web,
  namespace: BlockScoutWeb,
  ecto_repos: [Explorer.Repo],
  version: System.get_env("BLOCKSCOUT_VERSION"),
  release_link: System.get_env("RELEASE_LINK"),
  decompiled_smart_contract_token: System.get_env("DECOMPILED_SMART_CONTRACT_TOKEN")

config :block_scout_web, BlockScoutWeb.Chain,
  network: "Diode",
  subnetwork: "AlphaNet",
  network_icon: System.get_env("NETWORK_ICON"),
  logo: "/images/diode_logo.svg",
  logo_footer: "/images/diode_logo_footer.svg",
  has_emission_funds: false

config :block_scout_web,
  link_to_other_explorers: false,
  other_explorers: %{},
  other_networks: "[]"

config :block_scout_web, BlockScoutWeb.SocialMedia,
  twitter: "diode_chain",
  telegram: "diode_chain"

