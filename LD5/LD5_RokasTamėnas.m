clear
close all

S = struct('a',{'Tamėnas','Bernotas','Slavinskas'},'b',{26, 20, 20}) %[output:954dc38e]

S = orderfields(S, {'b','a'}) %[output:9a9181f2]
%%
clear
close all
format compact

while true %[output:group:84258cf2]
    x = input('iveskite x: ');
    y = input('iveskite y: ');
    if x == 0 && y == 0
        break;
    end

    b = atan(x/y);
    lentele = struct('Kaire',{},'Desine',{},'Skirtumas',{});

    for n = 1:10
        kaire = n*(cos(b)+1i*sin(b))^n;
        desine = (cos(n*b)+1i*sin(n*b));
        skirtumas = kaire - desine;

        lentele(n).Kaire = kaire;
        lentele(n).Desine = desine;
        lentele(n).Skirtumas = skirtumas;
    end

    disp(struct2table(lentele)); %[output:3a90e8ce]
end %[output:group:84258cf2]
%%
clear
close all

sakinys = input('parasykite sakiny su keliais tarpais tarp zodziu: ', 's');

n = length(sakinys);
sutvarkytas = '';
pasalinta = 0;
i = 1;

while i <= n && sakinys(i) == ' '
    i = i + 1;
end

while i <= n
    if sakinys(i) ~= ' '
        sutvarkytas(end + 1) = sakinys(i);
        i = i + 1;
    else
        tarpas = 0;
        while i <= n && sakinys(i) == ' '
            tarpas = tarpas + 1;
            i = i + 1;
        end

        if i <= n
            sutvarkytas(end + 1) = ' ';
            if tarpas > 1
                pasalinta = pasalinta + (tarpas - 1);
            end
        end
    end
end

fprintf('\nSutvarkytas sakinys: "%s"\n', sutvarkytas); %[output:47cc41a7]
fprintf('Pasalintu tarpu kiekis: %d\n', pasalinta); %[output:3bca934a]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":37.2}
%---
%[output:954dc38e]
%   data: {"dataType":"tabular","outputData":{"columnNames":["a","b"],"columns":2,"cornerText":"Fields","dataTypes":["char","double"],"header":"1×3 struct array with fields:","name":"S","rows":3,"type":"struct","value":[["'Tamėnas'","26"],["'Bernotas'","20"],["'Slavinskas'","20"]]}}
%---
%[output:9a9181f2]
%   data: {"dataType":"tabular","outputData":{"columnNames":["b","a"],"columns":2,"cornerText":"Fields","dataTypes":["double","char"],"header":"1×3 struct array with fields:","name":"S","rows":3,"type":"struct","value":[["26","'Tamėnas'"],["20","'Bernotas'"],["20","'Slavinskas'"]]}}
%---
%[output:3a90e8ce]
%   data: {"dataType":"text","outputData":{"text":"             <strong>Kaire<\/strong>                     <strong>Desine<\/strong>                   <strong>Skirtumas<\/strong>       \n    <strong>_______________________<\/strong>    <strong>______________________<\/strong>    <strong>_______________________<\/strong>\n        0.70711+0.70711i          0.70711+0.70711i                 0+0i         \n     4.4409e-16+2i             6.1232e-17+1i              3.8286e-16+1i         \n        -2.1213+2.1213i          -0.70711+0.70711i           -1.4142+1.4142i    \n             -4+1.7764e-15i            -1+1.2246e-16i             -3+1.6539e-15i\n        -3.5355-3.5355i          -0.70711-0.70711i           -2.8284-2.8284i    \n    -3.9968e-15-6i             -1.837e-16-1i             -3.8131e-15-5i         \n         4.9497-4.9497i           0.70711-0.70711i            4.2426-4.2426i    \n              8-7.1054e-15i             1-2.4493e-16i              7-6.8605e-15i\n          6.364+6.364i            0.70711+0.70711i            5.6569+5.6569i    \n     1.1102e-14+10i            3.0616e-16+1i              1.0796e-14+9i         \n","truncated":false}}
%---
%[output:47cc41a7]
%   data: {"dataType":"text","outputData":{"text":"\nSutvarkytas sakinys: \"As esu Rokas\"\n","truncated":false}}
%---
%[output:3bca934a]
%   data: {"dataType":"text","outputData":{"text":"Pasalintu tarpu kiekis: 3\n","truncated":false}}
%---
