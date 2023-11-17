# loading the iris dataset

iris
head(iris)
str(iris)
summary(iris)


# Creating a new data frame without the fifth column (species)
iris_data <- iris[, -5]

# Choosing the number of clusters (k)
k <- 3  # You can choose a different value for k

# Applying k-means clustering with 1000 iterations
set.seed(300)  # For reproducibility
kmeans_result <- kmeans(iris_data, centers = k, nstart = 1000)

# Assess the results by comparing with the actual species labels
cluster_table <- table(iris[,5], kmeans_result$cluster)
print(cluster_table)
