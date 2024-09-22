dir.create(Sys.getenv("R_LIBS_USER"), recursive = TRUE)  # create personal library
.libPaths(Sys.getenv("R_LIBS_USER"))  # add to the path

if (!requireNamespace("BiocManager", quietly = TRUE))
    print("Installing `BiocManager`")
    install.packages("BiocManager", repos='http://cran.us.r-project.org')
    BiocManager::install()
    print("Installing `graph`, `RGBL` & `Rgraphviz`")
    BiocManager::install(c("graph", "RBGL", "Rgraphviz"), quiet = TRUE )
if (!require("rlang"))
    print("Installing `rlang`")
    install.packages('rlang',repos='http://cran.us.r-project.org', quiet = TRUE )
if (!require("fastICA"))
    print("Installing `fastICA`")
    install.packages("https://cran.r-project.org/src/contrib/Archive/fastICA/fastICA_1.1-16.tar.gz", quiet = TRUE )
if (!require("pcalg"))
    print("Installing `pcalg`")
    install.packages('pcalg', repos='http://cran.us.r-project.org', quiet = TRUE )

if (!require("SID"))
    print("Installing `SID`")
    install.packages('https://cran.r-project.org/src/contrib/Archive/SID/SID_1.0.tar.gz', quiet = TRUE )

if (!require("Rcpp"))
    print("Installing `Rcpp`")
    install.packages('Rcpp', repos='http://cran.us.r-project.org', quiet = TRUE )
if (!require("RcppEigen"))
    print("Installing `RcppEigen`")
    install.packages('https://cran.r-project.org/src/contrib/Archive/RcppEigen/RcppEigen_0.3.3.7.0.tar.gz', quiet = TRUE )
if (!require("gRbase"))
    print("Installing `gRbase`")
    install.packages('gRbase', repos='http://cran.us.r-project.org', quiet = TRUE )

