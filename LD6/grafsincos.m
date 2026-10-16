function varargout = grafsincos(varargin)

    if nargin ~= 1
        error('grafsincos:nargin', ...
              'Reikia tik vieno argumento(vektoriaus).');
    end

    x = varargin{1};

    if ~isnumeric(x) || ~isvector(x)
        error('grafsincos:input', 'Argumentas turi buti skaliarinis vektorius.');
    end

    if nargout ~= 0 && nargout ~= 2
        error('grafsincos:nargout', ...
              ['Norint gauti kintamuju reiksmes reikia kviesti tik du argumentus: [sin, cos].']);
    end

    y1 = sin(x);
    y2 = cos(x);

    if nargout == 2
        varargout{1} = y1;
        varargout{2} = y2;
    else
        figure;

        subplot(2, 1, 1);
        plot(x, y1, 'b');
        grid on;
        xlabel('x'); ylabel('sin(x)');
        title('sin(x)');

        subplot(2, 1, 2);
        plot(x, y2, 'r');
        grid on;
        xlabel('x'); ylabel('cos(x)');
        title('cos(x)');
    end
end

%[appendix]{"version":"1.0"}
%---
