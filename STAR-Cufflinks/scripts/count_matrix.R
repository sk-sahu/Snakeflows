# Reference = https://www.biostars.org/p/241602/

#ff <- list.files(path = "../star_mapped_out/extra", pattern = "*ReadsPerGene.out.tab$", full.names = TRUE )

dir =  snakemake@input[[1]]
ff <- list.files(path = dir, pattern = "*ReadsPerGene.out.tab$", full.names = TRUE )
counts.files <- lapply( ff, read.table, skip = 4 )
counts <- as.data.frame( sapply( counts.files, function(x) x[ ,4] ) )
ff <- gsub( "_ReadsPerGene.out.tab", "", ff )
ff <- gsub( dir, "", ff )
ff <- gsub( "/", "", ff )
colnames(counts) <- ff
row.names(counts) <- counts.files[[1]]$V1
write.csv(counts,"all_count.csv")
