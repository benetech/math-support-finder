Platform.create([
{title: "Android"},
{title: "Chromebook"},
{title: "iOS", version: "8"},
{title: "Kindle"},
{title: "Linux"},
{title: "Mac OS X", version: "10.10"},
{title: "Windows", version: "7"},
{title: "Windows", version: "7/8/8.1"},
{title: "Unknown"}])

windows = Platform.find_by!(title: "Windows")
AssistiveTechnology.create([
{title: "Chromevox", platform: Platform.find_by!(title: "Chromebook")},
{title: "JAWS", platform: windows},
{title: "NVDA", platform: windows},
{title: "Talkback", platform: Platform.find_by!(title: "Android")},
{title: "Voiceover (desktop)", platform: Platform.find_by!(title: "Mac OS X")},
{title: "Voiceover (mobile)", platform: Platform.find_by!(title: "iOS")},
{title: "Windoweyes", platform: windows},
{title: "Zoomtext", platform: windows},
{title: "Unknown", platform: Platform.find_by!(title: "Unknown")}])
