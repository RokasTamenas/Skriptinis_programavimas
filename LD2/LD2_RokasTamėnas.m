% Vienmaciai masyvai
a1 = 200:-10:10;
a1 = reshape(a1,[], 1) %[output:43e906d9]

b1 = log10(a1(:,1)) %[output:1e32426e]

c1 = 10.^b1 %[output:6d6c5c9b]

d1 = c1 - a1 %[output:5dca8281]
%%
% Dvimaciai masyvai
A2 = [pi/2 3*i exp(pi); log2(2) 2*pi log10(1); log(exp(1)) pi^pi cos(pi)] %[output:5702eef8]

B2 = rand(1, 3);
B2 = reshape(B2, [], 1) %[output:76f71dc2]

A2(:, 2) =  B2 %[output:597ec030]

sum(A2) %[output:42246ded]
%%
% Praktinis veiksmu su masyvais taikymas
A = 6; f = 2; sigma = 1.5; U1 = 4; U2 = 2;
t = 0:0.005:2;
n = sigma * randn(size(t));
s = A * cos(2*pi*f*t);
S = s + n;

UG = S > U1;
a3 = S(UG) %[output:4aba6a5a]

b3 = a3 %[output:26b6bc70]
b3(abs(b3) < U2) = 0 %[output:0acbe63b]

c3 = numel(S) %[output:686a206d]

d3 = numel(a3) %[output:1234a049]

maxi = max(b3) %[output:018533f3]
mini = min(b3) %[output:515cf344]
%%
% Papildoma uzduotis

A = input('iveskite vektoriaus A narius: ') %[output:7e016620]

lygskc = A(mod(A, 2) == 0);
B = sort(lygskc, 'ascend') %[output:409cf0c7]

nelygskc = A(mod(A, 2) ~= 0);
C = sort(nelygskc, 'descend') %[output:228be18d]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:43e906d9]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"a1","rows":20,"type":"double","value":[["200"],["190"],["180"],["170"],["160"],["150"],["140"],["130"],["120"],["110"],["100"],["90"],["80"],["70"],["60"]]}}
%---
%[output:1e32426e]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"b1","rows":20,"type":"double","value":[["2.3010"],["2.2788"],["2.2553"],["2.2304"],["2.2041"],["2.1761"],["2.1461"],["2.1139"],["2.0792"],["2.0414"],["2.0000"],["1.9542"],["1.9031"],["1.8451"],["1.7782"]]}}
%---
%[output:6d6c5c9b]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"c1","rows":20,"type":"double","value":[["200.0000"],["190.0000"],["180.0000"],["170.0000"],["160.0000"],["150.0000"],["140.0000"],["130.0000"],["120.0000"],["110.0000"],["100.0000"],["90.0000"],["80.0000"],["70.0000"],["60.0000"]]}}
%---
%[output:5dca8281]
%   data: {"dataType":"matrix","outputData":{"columns":1,"exponent":"-13","name":"d1","rows":20,"type":"double","value":[["0.2842"],["-0.5684"],["-0.2842"],["0.5684"],["0.8527"],["0.2842"],["0.5684"],["0.5684"],["-0.4263"],["-0.2842"],["0"],["-0.2842"],["-0.1421"],["0.1421"],["0"]]}}
%---
%[output:5702eef8]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"A2","rows":3,"type":"complex","value":[["1.5708 + 0.0000i","0.0000 + 3.0000i","23.1407 + 0.0000i"],["1.0000 + 0.0000i","6.2832 + 0.0000i","0.0000 + 0.0000i"],["1.0000 + 0.0000i","36.4622 + 0.0000i","-1.0000 + 0.0000i"]]}}
%---
%[output:76f71dc2]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"B2","rows":3,"type":"double","value":[["0.6955"],["0.6668"],["0.6031"]]}}
%---
%[output:597ec030]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"A2","rows":3,"type":"double","value":[["1.5708","0.6955","23.1407"],["1.0000","0.6668","0"],["1.0000","0.6031","-1.0000"]]}}
%---
%[output:42246ded]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"ans","rows":1,"type":"double","value":[["3.5708","1.9655","22.1407"]]}}
%---
%[output:4aba6a5a]
%   data: {"dataType":"matrix","outputData":{"columns":103,"name":"a3","rows":1,"type":"double","value":[["5.3756","5.4561","7.0457","5.4453","8.0368","4.9976","5.7112","6.5186","6.8806","5.0342","5.1539","6.4208","4.1828","6.2504","6.4349","5.8395","5.0450","6.2895","6.1057","5.6594","5.7248","6.1108","4.8069","7.6982","5.1191","4.8407","8.2601","5.0985","6.2179","5.3403"]]}}
%---
%[output:26b6bc70]
%   data: {"dataType":"matrix","outputData":{"columns":103,"name":"b3","rows":1,"type":"double","value":[["5.3756","5.4561","7.0457","5.4453","8.0368","4.9976","5.7112","6.5186","6.8806","5.0342","5.1539","6.4208","4.1828","6.2504","6.4349","5.8395","5.0450","6.2895","6.1057","5.6594","5.7248","6.1108","4.8069","7.6982","5.1191","4.8407","8.2601","5.0985","6.2179","5.3403"]]}}
%---
%[output:0acbe63b]
%   data: {"dataType":"matrix","outputData":{"columns":103,"name":"b3","rows":1,"type":"double","value":[["5.3756","5.4561","7.0457","5.4453","8.0368","4.9976","5.7112","6.5186","6.8806","5.0342","5.1539","6.4208","4.1828","6.2504","6.4349","5.8395","5.0450","6.2895","6.1057","5.6594","5.7248","6.1108","4.8069","7.6982","5.1191","4.8407","8.2601","5.0985","6.2179","5.3403"]]}}
%---
%[output:686a206d]
%   data: {"dataType":"textualVariable","outputData":{"name":"c3","value":"401"}}
%---
%[output:1234a049]
%   data: {"dataType":"textualVariable","outputData":{"name":"d3","value":"103"}}
%---
%[output:018533f3]
%   data: {"dataType":"textualVariable","outputData":{"name":"maxi","value":"8.9308"}}
%---
%[output:515cf344]
%   data: {"dataType":"textualVariable","outputData":{"name":"mini","value":"4.0126"}}
%---
%[output:7e016620]
%   data: {"dataType":"matrix","outputData":{"columns":9,"name":"A","rows":1,"type":"double","value":[["1","2","3","4","5","6","7","8","9"]]}}
%---
%[output:409cf0c7]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"B","rows":1,"type":"double","value":[["2","4","6","8"]]}}
%---
%[output:228be18d]
%   data: {"dataType":"matrix","outputData":{"columns":5,"name":"C","rows":1,"type":"double","value":[["9","7","5","3","1"]]}}
%---
