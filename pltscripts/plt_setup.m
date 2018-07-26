## Copyright (C) 2018 Srijith Nair
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} plt_setup (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Srijith Nair <srijith@satvam-ws>
## Created: 2018-07-25

function [] = plt_setup ()

  line_width = 3;
  fontweight = "bold";
  axis_state = "on";
  box_state = "on";
  grid_state = "on";
  
  h = figure();
  
  % good looking setup for eps
  set(h, 'papertype', '<custom>')
  set(h, 'paperunits', 'inches');
  set(h, 'papersize', [15 10.5]);
  set(h, 'paperposition', [0,0,[15 10.5]])
  set(h, 'defaultaxesposition', [0.1, 0.2, 0.75, 0.75])
  set(0, 'defaultaxesfontsize', 14);
  
  hold on;
  
  axis(axis_state);
  box(box_state);
  grid(grid_state);

  ylim([0 .05]);

endfunction
