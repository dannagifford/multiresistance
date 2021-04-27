function [fitresult, gof] = S_both(time, meanC_1, meanC_2, meanC_3, meanC_4, meanC_5, meanC_6, meanC_7)
%CREATEFITS1(TIME,MEANC_1,MEANC_2,MEANC_3,MEANC_4,MEANC_5,MEANC_6,MEANC_7)
%  Create fits.
%
%  Data for 'C=0' fit:
%      X Input : time
%      Y Output: meanC_1
%  Data for 'C=0.0625' fit:
%      X Input : time
%      Y Output: meanC_2
%  Data for 'C=0.125' fit:
%      X Input : time
%      Y Output: meanC_3
%  Data for 'C=0.25' fit:
%      X Input : time
%      Y Output: meanC_4
%  Data for 'C=0.5' fit:
%      X Input : time
%      Y Output: meanC_5
%  Data for 'C=1' fit:
%      X Input : time
%      Y Output: meanC_6
%  Data for 'C=2' fit:
%      X Input : time
%      Y Output: meanC_7
%  Output:
%      fitresult : a cell-array of fit objects representing the fits.
%      gof : structure array with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 04-Oct-2018 03:22:03

%% Initialization.

% Initialize arrays to store fits and goodness-of-fit.
fitresult = cell( 7, 1 );
gof = struct( 'sse', cell( 7, 1 ), ...
    'rsquare', [], 'dfe', [], 'adjrsquare', [], 'rmse', [] );

%% Fit: 'C=0'.
[xData, yData] = prepareCurveData( time, meanC_1 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.629883385064421 0.9 0.4314 0.614713419117141 0.362411462273053 7];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{1}, gof(1)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=0' );
plot( fitresult{1}, xData, yData, excludedPoints );
% Label axes
xlabel time
ylabel meanC_1
grid on

%% Fit: 'C=0.0625'.
[xData, yData] = prepareCurveData( time, meanC_2 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.489569989177322 0.192510396062075 0.869292207640089 0.123083747545945 0.20549417090768 5];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{2}, gof(2)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=0.0625' );
plot( fitresult{2}, xData, yData, excludedPoints );
% Label axes
xlabel time
ylabel meanC_2
grid on

%% Fit: 'C=0.125'.
[xData, yData] = prepareCurveData( time, meanC_3 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.3 0.3 0.15 1 0.2 7];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{3}, gof(3)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=0.125' );
plot( fitresult{3}, xData, yData, excludedPoints );
% Label axes
xlabel time
ylabel meanC_3
grid on

%% Fit: 'C=0.25'.
[xData, yData] = prepareCurveData( time, meanC_4 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.695163039444332 0.499116013482589 0.49086409246808 0.535801055751113 0.445183165296042 10];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{4}, gof(4)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=0.25' );
h = plot( fitresult{4}, xData, yData, excludedPoints );
legend( h, 'meanC_4 vs. time', 'Excluded meanC_4 vs. time', 'C=0.25', 'Location', 'NorthEast' );
% Label axes
xlabel time
ylabel meanC_4
grid on

%% Fit: 'C=0.5'.
[xData, yData] = prepareCurveData( time, meanC_5 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [48 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.015 0 0.01 0.6 0.05 14];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{5}, gof(5)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=0.5' );
h = plot( fitresult{5}, xData, yData, excludedPoints );
legend( h, 'meanC_5 vs. time', 'Excluded meanC_5 vs. time', 'C=0.5', 'Location', 'NorthEast' );
% Label axes
xlabel time
ylabel meanC_5
grid on

%% Fit: 'C=1'.
[xData, yData] = prepareCurveData( time, meanC_6 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [16 20 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.001 0.001 0.004 0.02 0.04 25];
opts.Upper = [0.01 0.01 0.01 Inf Inf 15];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{6}, gof(6)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=1' );
h = plot( fitresult{6}, xData, yData, excludedPoints );
legend( h, 'meanC_6 vs. time', 'Excluded meanC_6 vs. time', 'C=1', 'Location', 'NorthEast' );
% Label axes
xlabel time
ylabel meanC_6
grid on

%% Fit: 'C=2'.
[xData, yData] = prepareCurveData( time, meanC_7 );

% Set up fittype and options.
ft = fittype( '(k1./(1 + (k1-n0)./n0*exp(-r1.*(x-xc))))*heaviside(xc-x) + (k2./(1 + (k2-n0)./n0*exp(-r2.*(x-xc))))*heaviside(x-xc)', 'independent', 'x', 'dependent', 'y' );
excludedPoints = excludedata( xData, yData, 'Indices', [3 40 43 48 51 61] );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 0 0 0];
opts.StartPoint = [0.0820712070977259 0.105709426581721 0.821194040197959 0.142041121903998 0.166460440876421 10];
opts.Exclude = excludedPoints;

% Fit model to data.
[fitresult{7}, gof(7)] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'C=2' );
h = plot( fitresult{7}, xData, yData, excludedPoints );
legend( h, 'meanC_7 vs. time', 'Excluded meanC_7 vs. time', 'C=2', 'Location', 'NorthEast' );
% Label axes
xlabel time
ylabel meanC_7
grid on

