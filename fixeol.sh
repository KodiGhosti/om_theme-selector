#!bin/sh
#  Copyright 2019 DefKorns (https://github.com/DefKorns/om_theme-selector/LICENSE)
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
git config core.eol lf
git config core.autocrlf input
git rm --cached -rf .
git diff --cached --name-only -z | xargs -n 50 -0 git add -f
git ls-files -z | xargs -0 rm
git checkout .
