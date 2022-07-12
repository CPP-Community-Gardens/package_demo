import 'package:flutter/material.dart';
import 'package:sp_settings/fields/button_settings_field.dart';
import 'package:sp_settings/fields/settings_field.dart';
import 'package:sp_settings/fields/switch_settings_field.dart';
import 'package:sp_settings/settings_category.dart';
import 'package:sp_settings/settings_list.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: const [
          SettingsCategory(
              title: 'General',
              settingsList: SettingsList(
                fields: [
                  SwitchSettingsField(
                    settingsField: SettingsField(
                      title: 'Open in new tab',
                      description: 'Launch this page on an external browser',
                      icon: Icons.open_in_browser,
                    ),
                    prefKey: 'open_in_new_tab',
                  ),
                  SwitchSettingsField(
                    settingsField: SettingsField(
                      title: 'Debug info',
                      description: 'Send debugging information to developers.',
                      icon: Icons.bug_report,
                    ),
                    prefKey: 'debug_info',
                    initialValue: true,
                  ),
                ],
              )
          ),
          SettingsCategory(
              title: 'About',
              settingsList: SettingsList(
                fields: [
                  ButtonSettingsField(
                    settingsField: SettingsField(
                      title: 'Contact',
                      description: 'Send an email to the developer.',
                      icon: Icons.email,
                    ),
                  ),
                  ButtonSettingsField(
                    settingsField: SettingsField(
                      title: 'Licenses',
                      description: 'View the open source licenses.',
                      icon: Icons.insert_drive_file,
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
