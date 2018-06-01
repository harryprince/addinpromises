
# How to Use

1. Install:

```{r}
devtools::install_github("harryprince/addinpromises")
```

2. Add shortcut

![](https://github.com/harryprince/addinpromises/blob/master/inst/img/addin_in_rstudio.png)

Currently, setup shortcut as `CMD` + `shift` + `B`.

3. Insert code

# addinpromises

Based on R pakcage `promises`, you can easily convert a sync R code block to async. Here is the example:

dependecies:

```{r}
library(future)
library(promises)
```

The original sync code:

```{r}
spark_df %>%
   head(1000) %>%
   collect() %>% # mostly time-consuming process
   View()
```

After asynchronized:

```{r}
future(spark_df) %...>%
    head(1000) %...>%
    collect() %...>% # Now you are free
    View()
```
After you claim your pipeline asynchronised, now you can do another meaningful job instead of waiting spark collection data or another time-consuming computing.
