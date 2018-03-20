/*
* Copyright (c) 2018 Cassidy James Blaede (https://cassidyjames.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Cassidy James Blaede <c@ssidyjam.es>
*/

public class MainWindow : Gtk.Window {
  public MainWindow (Gtk.Application application) {
    Object (
      application: application,
      border_width: 12,
      icon_name: "com.github.cassidyjames.hidpi-tester",
      resizable: false,
      title: "HiDPI Tester",
      window_position: Gtk.WindowPosition.CENTER
    );
  }

  construct {
    var label = new Gtk.Label (("Scale Factor: %i").printf (this.scale_factor));

    var layout = new Gtk.Grid ();
    layout.margin = 12;
    layout.attach (label, 0, 0, 1, 1);

    GLib.Timeout.add (100, () => {
      label.label = ("Scale Factor: %i").printf (this.scale_factor);

      return GLib.Source.CONTINUE;
    });

    get_style_context ().add_class ("dippi");
    get_style_context ().add_class ("rounded");
    add (layout);
  }
}
