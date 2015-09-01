User.create!([
  {id: 1, email: "msm_user@seeread.info", password: "12341234", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, created_at: "2015-07-27 17:11:14", updated_at: "2015-07-27 17:11:14", admin: true, first_name: "Test", last_name: "User"}
])
#VerificationStatus.create!([
  #{id: 1, title: "Verified", created_at: "2015-07-27 15:01:30", updated_at: "2015-07-27 15:01:30"},
  #{id: 2, title: "Unverified", created_at: "2015-07-27 15:01:30", updated_at: "2015-07-27 15:01:30"}
#])
WorkflowStatus.create!([
  {id: 1, title: "Untested", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"},
  {id: 2, title: "Tested", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"},
  {id: 3, title: "Partially Tested", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"},
  {id: 4, title: "Invalid", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"},
  {id: 5, title: "Desired", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"}
])
Output.create!([
  {id: 1, title: "Braile", notes: "", created_at: "2015-07-27 15:35:08", updated_at: "2015-07-27 15:35:08"},
  {id: 2, title: "Speech", notes: "", created_at: "2015-07-27 15:35:08", updated_at: "2015-07-27 15:35:08"},
  {id: 3, title: "Visual", notes: "", created_at: "2015-07-27 15:35:08", updated_at: "2015-07-27 15:35:08"}
])
AssistiveTechnology.create!([
  {id: 1, title: "Chromevox", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 2, title: "JAWS16", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 3, title: "NVDA", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 4, title: "Talkback", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 5, title: "Voiceover (desktop)", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 6, title: "Voiceover (mobile)", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 7, title: "Windoweyes", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"},
  {id: 8, title: "Zoomtext", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"}
])
AssistiveTechnologyVersion.create!([
  {id: 1, assistive_technology_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:12:45", updated_at: "2015-07-27 15:12:45"}
])
BrowserReader.create!([
  {id: 1, title: "AdobePro (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 2, title: "AdobeReader (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 3, title: "AdobeReader (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 4, title: "Chrome (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 5, title: "Chrome (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 6, title: "Firefox (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 7, title: "Firefox (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 8, title: "iBooks (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 9, title: "iBooks (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 10, title: "Internet Explorer (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 11, title: "Internet Explorer (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 12, title: "Kindle", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 13, title: "Powerpoint (PC)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 14, title: "Powerpoint (Mac)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 15, title: "Powerpoint (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 16, title: "Word (PC)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 17, title: "Word (Mac)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 18, title: "Word (mobile)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 19, title: "Safari (Mac)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"},
  {id: 20, title: "Safari (iOS)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"}
])
FileFormat.create!([
  {id: 1, title: "DAISY", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 2, title: "EPUB", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 3, title: "HTML (webpage)", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 4, title: "iBook", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 5, title: "Mobi", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 6, title: "Microsoft Word", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 7, title: "Microsoft Powerpoint", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"},
  {id: 8, title: "PDF", notes: "", created_at: "2015-07-27 17:14:38", updated_at: "2015-07-27 17:14:38"}
])
Renderer.create!([
  {id: 1, title: "MathJax", notes: "", created_at: "2015-07-27 15:39:26", updated_at: "2015-07-27 15:39:26"},
  {id: 2, title: "MathPlayer4", notes: "", created_at: "2015-07-27 15:39:26", updated_at: "2015-07-27 15:39:26"},
  {id: 3, title: "MathType", notes: "", created_at: "2015-07-27 15:39:26", updated_at: "2015-07-27 15:39:26"},
  {id: 4, title: "Native", notes: "", created_at: "2015-07-27 15:39:26", updated_at: "2015-07-27 15:39:26"}
])
BrowserReaderFileFormat.create!([
  {id: 1, browser_reader_id: 1, file_format_id: 1, created_at: "2015-07-27 17:27:09", updated_at: "2015-07-27 17:27:09"}
])
BrowserReaderRenderer.create!([
  {id: 1, browser_reader_id: 1, renderer_id: 1, created_at: "2015-07-27 17:28:43", updated_at: "2015-07-27 17:28:43"}
])
BrowserReaderVersion.create!([
  {id: 1, browser_reader_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:13:20", updated_at: "2015-07-27 15:13:20"}
])
Feature.create!([
  {id: 1, title: "Navigation", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"},
  {id: 2, title: "Focus highlighting", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"},
  {id: 3, title: "Procity", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"},
  {id: 4, title: "Sound effects", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"},
  {id: 5, title: "Zoom (magnification)", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"},
])
ContentSource.create!([
  {id: 1, title: "Wikipedia", notes: "", created_at: "2015-07-27 15:42:58", updated_at: "2015-07-27 15:42:58"}
])
Platform.create!([
  {id: 1, title: "Android", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 2, title: "Chromebook", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 3, title: "iOS", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 4, title: "Kindle", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 5, title: "Linux", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 6, title: "Mac", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"},
  {id: 7, title: "Windows", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"}
])
PlatformVersion.create!([
  {id: 1, platform_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:49:58", updated_at: "2015-07-27 15:49:58"}
])
PlatformBrowserReader.create!([
  {id: 1, platform_id: 1, browser_reader_id: 1, created_at: "2015-07-27 17:37:35", updated_at: "2015-07-27 17:37:35"}
])
PlatformAssistiveTechnology.create!([
  {id: 1, platform_id: 1, assistive_technology_id: 1, created_at: "2015-07-27 17:37:35", updated_at: "2015-07-27 17:37:35"}
])
BrowserReaderAssistiveTechnology.create!([
  {id: 1, browser_reader_id: 1, assistive_technology_id: 1, created_at: "2015-07-27 17:37:35", updated_at: "2015-07-27 17:37:35"}
])
Setup.create!([
  {id: 1, platform_version_id: 1, renderer_id: 1, browser_reader_version_id: 1, assistive_technology_version_id: 1, file_format_id: 1, workflow_status_id: 1, created_at: "2015-07-27 17:32:00", updated_at: "2015-07-27 17:32:00"}
])
Affordance.create!([
  {id: 1, output_id: 1, feature_id: 1, created_at: "2015-07-27 17:35:41", updated_at: "2015-07-27 17:35:41"}
])
Capability.create!([
  {id: 1, affordance_id: 1, setup_id: 1, verification_status_id: 1, created_at: "2015-07-27 17:35:41", updated_at: "2015-07-27 17:35:41"}
])
ContentSourceSetup.create!([
  {id: 1, setup_id: 1, content_source_id: 1, created_at: "2015-07-27 17:33:26", updated_at: "2015-07-27 17:33:26"}
])

ActiveRecord::Base.connection.tables.each do |dt|
  ActiveRecord::Base.connection.reset_pk_sequence!( dt.to_s)
end
