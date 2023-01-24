X = gen_kmeansdata (10749896);
N = size (X,1); % The size of the generated matrix is equal to N 
Mean = mean (X); % Taking the mean from the generated data matrix
SD = std (X); % Obtaining the standard deviation from the generated data matrix
hist (X) % A histogram from the generated matrix is displayed

CovarianceMatrix = cov (X); % Data covariance matrix of the generated
CorrelationMatrix = corrcoef (X); % Correlation matrix for the data itself

disp(['Number of Rows =',num2str(N)]) % Printing size of generated data matrix

disp(['Mean =',num2str(Mean)]) % Printing Mean

disp(['Standard Deviation =',num2str(SD)]) % Printing Standard Deviation

disp('Covariance Matrix =')
disp (CovarianceMatrix) % Printing covariance matrix

disp('Correlation Matrix =')
disp (CorrelationMatrix) % Printing Correlation matrix

MeanSilhouetteArray = []; % Definition of Mean Array

for K = [3,4,5] % Initializing the loop with cluster number
    figure (K-1) % Figure Numbering
    [idex, C, sum] = kmeans (X,K); % Initial index, centroid and sum displayed
    [silh,h] = silhouette (X,idex,'sqEuclidean'); % Initializing Silhouette
    title(['number of clusters =',num2str(K)]) % The title of the plot window
    xlabel 'silhouette value' % Labeling the X and Y axes
    ylabel 'cluster'

    MeanSilhouette = mean(silh); % Silhouette Mean
    MeanSilhouetteArray (end+1)= MeanSilhouette; % Repeating, Adding Silhouette Mean to an array
    disp (['K=',num2str(K)]) % Displaying cluster number
    disp (['Mean Silhouette Vale',num2str(MeanSilhouette)]) % Displaying Mean Silhouette values
    disp ('centers') % Displayig centers
    disp (C)

    figure (K+2) % Printing figure number
    plot (X(idex==1,1),X(idex==1,2),'r.','MarkerSize',9)
    hold on 
    plot (X(idex==2,1),X(idex==2,2),'y.','MarkerSize',9)
    hold on 
    plot (X(idex==3,1),X(idex==3,2),'b.','MarkerSize',9)
    hold on 
    plot (X(idex==4,1),X(idex==4,2),'g.','MarkerSize',9)
    hold on 
    plot (X(idex==5,1),X(idex==5,2),'c.','MarkerSize',9)

    plot (C(:,1),C(:,2),'kx','MarkerSize',10,'LineWidth',2)

    if K==3 % Print only 3 clusters if K==3 
        legend('cluster1','cluster2','cluster3','centroids','Location','NW')

    elseif K==4 % Print only 4 clusters if K==4
         legend('cluster1','cluster2','cluster3','cluster4','centroids','Location','NW')

    elseif K==5 % Print only 5 clusters if K==5
        legend('cluster1','cluster2','cluster3','cluster4','cluster5','centroids','Location','NW')
    end
    title(['clusters and centroids',num2str(K)])
    hold off
end

MeanSilhouetteDictionary = dictionary (MeanSilhouetteArray,[3,4,5]); % Taking the mean of clusters
MaxMeanSilhouette = max (MeanSilhouetteArray); % Finding the Maximum Mean
OptimumCluster = MeanSilhouetteDictionary (MaxMeanSilhouette); % Finding the Mean from Max and outputting the optimum cluster

disp (['Optimum Cluster =',num2str(OptimumCluster)]) % Printing Optimum Cluster