% Assignment 6 - Mohamed Gamil (s3897605) and Sofia Teeriaho (s3887626)

filename = 'data_clustering.csv';
file = load(filename);

% Prepare data and get size and dimension 
[data, P, N] = prepareData(file);

% Define parameters
EPS = 0.05;
MinPts = 4;

% Run DBSCAN
data = dbscanFunc(data, EPS, MinPts);

% Visualise data
f1 = figure();
set(f1,'Position',[200 1000 1000 650])

gscatter(data(:,1), data(:,2), data(:,3));

%silhouette(data,data(:,3));

title([],'FontSize', 17)
title(sprintf('Density-based Clustering with EPS = %.2f and MinPts = %.0f',EPS, MinPts));
xlabel('X Coordinates');
ylabel('Y Coordinates');

% A figure displaying three plots

% f1 = figure();
% set(f1,'Position',[200 1000 1500 500])
% 
% i = 1;
% for MinPts = [3,4,5]
%     % Run DBSCAN
%     data = dbscanFunc(data, EPS, MinPts);
%     
%     % Visualise data
%     subplot(2,2,i)
%     h{i} = gscatter(data(:,1), data(:,2), data(:,3));
%     i = i+1;
%   
%     title(sprintf('Density-based Clustering with EPS = %.2f and MinPts = %.0f',EPS, MinPts));
%     xlabel('X Coordinates');
%     ylabel('Y Coordinates');
% 
%     % reset data
%     [data, P, N] = prepareData(file);
% end