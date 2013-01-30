/* babeltrace.vapi
 *
 * Copyright (C) 2013 Francis Giraldeau
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 *  Francis Giraldeau <francis.giraldeau@gmail.com>
 */

[CCode (cheader_filename = "babeltrace/babeltrace.h")]
namespace Babeltrace {
    [Compact]
    [CCode (cname = "struct bt_context", cprefix = "bt_", free_function = "bt_context_put")]
    public class Context {
        [CCode (cname = "bt_context_create")]
        public Context();
    }
}
