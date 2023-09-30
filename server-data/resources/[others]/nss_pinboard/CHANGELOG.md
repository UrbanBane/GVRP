# nss_pinboard - changelog

## 1.1.8 (_2023-03-23_)

- Add new poster property `group`. Restricts "post to all" feature to specific board groups.
- Add new poster property `restrict_view_by_jobs`. Restricts the access to view a board (and blip) to one or more
  specific jobs.

## 1.1.7 (_2023-03-17_)

- Webhooks can now optionally configured each board.

## 1.1.6

- `Config.JobRemovePermissions` now checks correctly if job grade is equal or higher than the required grade.

## 1.1.5

- Add new `restrict_create_by_jobs` in `Config.Posters` to restrict the creation of new posters to one or more specific
  jobs. See [config.demo.lua] for more information.

## 1.1.4

- Remove unnecessary print output.

## 1.1.3

- Add __optional__ new config attribute `Config.DiscordWebhook.webhook_url_new` for only new pinboard notifications.
- Add __optional__ new config attribute `Config.DiscordWebhook.anonymous_new` which hides the character name
  for `webhook_url_new` notifications. _This have no effect to `webhook_url` notifications._
- Add __optional__ new config attribute `Config.DiscordWebhook.webhook_url_removed` for only removed pinboard
  notifications.
- Add __optional__ new config attribute `Config.DiscordWebhook.anonymous_remover` which hides the character name
  for `webhook_url_removed` notifications. _This have no effect to `webhook_url` notifications._
- Change config attribute `Config.DiscordWebhook.webhook_url` to be _optional_. It still sends all types of
  notifications to the same webhook but all authors and removers are __not__ anonymous.
- Add new translation `discord_anonymous_user` for anonymous characters for `webhook_url_new` and `webhook_url_removed`
  notifications.
- Moved changelog from `README.md` to `CHANGELOG.md`.

## 1.1.2

- Add `hide_blip` property for `Config.Posters`. If set to `true` no blip is shown on the map for the related pinboard.

## 1.1.1

- Order of text sections are now correct if inserted between two existing sections.

## 1.1.0

- Add possibility to pin a new note everywhere at once.
- Permissions of new feature is configurable for groups and character names (full names).
- Add new language keys `discord_location_everywhere`, `post_everywhere_at_once`, `post_everywhere_at_once_every_where`
  and `post_everywhere_at_once_only_here`.
- Update discord webhook to show as location "everwhere" if someone uses the new feature.
- Admins always have the permission to use the new feature.

## 1.0.2

- Results of automated processes are shown in discord more clear, e.g. "System" instead of character name.
- Results of console commands are shown in discord more clear, e.g. "Marti McFly (via Console)".
- Add `Config.DiscordWebhook.system_user_alias` to config file, see example in `config.demo.lua`.
- Add key `discord_console_command` to languages.
- Fix to many linebreaks in poster text.

## 1.0.1

- Add sorting for notice order on bulletin boards.

## 1.0.0

Initial release.

[config.demo.lua]: config.demo.lua