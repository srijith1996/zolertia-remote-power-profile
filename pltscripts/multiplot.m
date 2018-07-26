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
## @deftypefn {} {=} multiplot (@var{fs}, @var{source_array}, @var{plot_title},
##                    @var{legend_labels}, @var{y_label}, @var{filt_output},
##                    @var{fig_name})
##
## @seealso{}
## @end deftypefn

## Author: Srijith Nair <srijith@satvam-ws>
## Created: 2018-07-25

function [] = multiplot (fs, source_array, plot_title, legend_labels, 
                               y_label, filt_output, fig_name)

  
  filter_size = 5;
  
  if (exist("fig_name") != 1)
    fig_name = 'figure';
  endif
                               
  load('colors.mat');
  time = [0:(1/fs):(size(source_array, 1) - 1)/fs]';
  %colors = colors(randperm(size(colors, 1)), :);
                               
  plt_setup();  
                             
  title(plot_title);
  xlabel("Time (s)");
  ylabel(y_label);
  
  xlim([0 size(source_array, 1)]/fs);
  
  for col = 1:columns(source_array)
    %source_array(:, col)
    if (filt_output)
      avg_filter = ones(filter_size, 1)/filter_size;
      plt_sig = filter(avg_filter, [1], source_array(:, col));
      plt_sig(1:5) = plt_sig(6:10);
    else
      plt_sig = source_array(:, col);
    endif
    plot(time, plt_sig, 'Color', 
         colors(mod(col, length(colors)), :));
  end
  
  legend(legend_labels);
  legend show;
  
  %text(0.5, 0.015, "Computation: (2^{20} additions)");
  
  print(['../plots/' fig_name '.eps'], '-deps', '-color');

endfunction
