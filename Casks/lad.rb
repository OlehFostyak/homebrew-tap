cask "lad" do
  version "0.3.1"
  sha256 "30f5dcf37692ed24986324499b21076d5c5e785887b3d64f9630b2e926ce788c"

  url "https://github.com/OlehFostyak/Lad/releases/download/v#{version}/Lad-#{version}.zip"
  name "Lad"
  desc "Keyboard layout switcher for Ukrainian and English that keeps what you type local"
  homepage "https://github.com/OlehFostyak/Lad"

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Lad.app"

  zap trash: "~/Library/Preferences/dev.oleh.lad.plist"

  caveats <<~EOS
    Lad не нотаризований Apple, тож перший запуск macOS заблокує:
    System Settings → Privacy & Security → «Open Anyway» біля Lad.
    Далі Lad попросить доступ Accessibility: увімкни Lad у списку.
    Оновлення: brew upgrade --cask lad
  EOS
end
