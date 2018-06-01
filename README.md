# Installation

```{r}
devtools::install_github("harryprince/addinpromises")
```

# addinpromises

Based on R pakcage `promises`, you can easily convert a sync R code block to async. Here is the example:

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
After you claim your pipeline asynchronised, now you can do another meaningful job instead of waiting spark collection data or anyother time-consuming computing.
