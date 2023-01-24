# K-Means Clustering

## Task 2.1 – Data Preparation

1. DATA: To get data for K means clustering, you use MATLAB code “gen_clusterdata”. This code generates your personal data matrix. Use MATLAB command: X=gen_clusterdata(ID), where ID is your student number. The code generates a data matrix X of four columns representing features and N rows representing objects (cases).
2. Data analysis.
a) Report N - the total number of rows (objects, cases) in your data.

b) For each column (feature) from 1 to 4 report: the mean, the standard deviation and the histogram.

c) Report the covariance matrix (4x4) and the correlation matrix (4x4).

## Task 2.2 – K Means
1- Given the number of clusters as 3 (i.e., K=3), implement Kmeans clustering and then repeat the same procedure (i.e., use iteration) to evaluate different number of clusters (i.e., K=3, 4, and 5) to find out the optimal number of classes that achieve the best performance.
2- For each K value, report the mean performance using the Silhouette measure and plot the Silhouette for each cluster (each K value) as shown in Figure 1
3- What is the stopping criteria for Kmeans clustering? Plot the clusters and the cluster centroids, which should be similar as in Figure 2 (Note: Figure 2 is an example).
4- Report (via MATLAB code) the best number of clusters and explain why?
5- From your observation and analysis, what are the limitations or drawbacks of Kmeans clustering?

