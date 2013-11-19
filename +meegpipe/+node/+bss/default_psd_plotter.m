function obj = default_psd_plotter(varargin)


plotterObj = plotter.psd.psd(...
    'FrequencyRange',   [3 60], ...
    'Visible',          false, ...
    'LogData',          false);

obj = physioset.plotter.psd.new(...
    'MaxChannels',  100, ...
    'WinLength',    30, ...
    'Plotter',      plotterObj); 


end