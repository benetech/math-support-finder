User.create!([
  {id: 1, email: "msm_user@seeread.info", encrypted_password: "$2a$10$nqRoHE6OUw.P9WGk2Gh/5OCBANzGUqUJOL3Y1yxdvf5i8rCarCNe2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-07-27 14:41:11", last_sign_in_at: "2015-07-27 14:41:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", created_at: "2015-07-27 14:41:11", updated_at: "2015-07-27 14:41:11", admin: false, first_name: "Test", last_name: "User"}
])
Affordance.create!([
  {id: 1, title: "Braile", notes: "", created_at: "2015-07-27 15:35:08", updated_at: "2015-07-27 15:35:08"}
])
AssistiveTechnology.create!([
  {id: 1, title: "Chromevox", notes: "", created_at: "2015-07-27 14:47:39", updated_at: "2015-07-27 14:47:39"}
])
AssistiveTechnologyVersion.create!([
  {id: 1, assistive_technology_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:12:45", updated_at: "2015-07-27 15:12:45"}
])
BrowserReader.create!([
  {id: 1, title: "Chrome (desktop)", notes: "", created_at: "2015-07-27 15:13:07", updated_at: "2015-07-27 15:13:07"}
])
BrowserReaderVersion.create!([
  {id: 1, browser_reader_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:13:20", updated_at: "2015-07-27 15:13:20"}
])
ContentSource.create!([
  {id: 1, title: "Wikipedia", notes: "", created_at: "2015-07-27 15:42:58", updated_at: "2015-07-27 15:42:58"}
])
Feature.create!([
  {id: 1, title: "Navigation", notes: "", created_at: "2015-07-27 15:25:18", updated_at: "2015-07-27 15:25:18"}
])
Platform.create!([
  {id: 1, title: "Android", notes: "", created_at: "2015-07-27 14:42:39", updated_at: "2015-07-27 14:42:39"}
])
PlatformVersion.create!([
  {id: 2, platform_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:49:58", updated_at: "2015-07-27 15:49:58"}
])
Renderer.create!([
  {id: 1, title: "MathJax", notes: "", created_at: "2015-07-27 15:39:26", updated_at: "2015-07-27 15:39:26"}
])
RendererVersion.create!([
  {id: 1, renderer_id: 1, version: 1.0, notes: "", created_at: "2015-07-27 15:53:16", updated_at: "2015-07-27 15:53:16"}
])
VerificationStatus.create!([
  {id: 1, title: "True", created_at: "2015-07-27 15:01:30", updated_at: "2015-07-27 15:01:30"}
])
WorkflowStatus.create!([
  {id: 1, title: "Invalid", created_at: "2015-07-27 14:54:33", updated_at: "2015-07-27 14:54:33"}
])
