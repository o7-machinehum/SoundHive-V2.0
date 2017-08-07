%Math for the low battery cutout cct.

clc; clear;
format short eng

grid on;

%To scale for 4-6 cell Li-ion battaries, three jumpers, three reisitors

Numcells = 4;
R1 = 1e6;
R2 = 422e3; %4,5,6 cells

CellVmax = 4.2.*Numcells;
CellVmin = 3.*Numcells;

Vbat = CellVmin:0.1:CellVmax;
Vout = (R2./(R1+R2)).*Vbat;

plot(Vbat, Vout);
xlabel('Vbat');
ylabel('Vout');
hold on
%5C calculation

Numcells = 5;
R2 = 316e3; %4,5,6 cells
CellVmax = 4.2.*Numcells;
CellVmin = 3.*Numcells;

Vbat = CellVmin:0.1:CellVmax;
Vout = (R2./(R1+R2)).*Vbat;

plot(Vbat, Vout, 'r');
xlabel('Vbat');
ylabel('Vout');
hold on;

Numcells = 6;
R2 = 243e3; %4,5,6 cells
CellVmax = 4.2.*Numcells;
CellVmin = 3.*Numcells;

Vbat = CellVmin:0.1:CellVmax;
Vout = (R2./(R1+R2)).*Vbat;

plot(Vbat, Vout, 'g');
xlabel('Vbat');
ylabel('Vout');

legend('4C', '5C', '6C');

%Comparitor resistors
Vh = 4.2;
Vl = 3.6;
Vcc = 5;
Rx = 220e3;

Ry = (Vl / (Vcc-Vh))*Rx;
Rh = (Vl / (Vh - Vl))*Rx;
