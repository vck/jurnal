- create column with daterange from date a to b with interval 1 min

```
date = pd.date_range("2018-05-24", "2019-10-10", freq="min")
df["date"] = date
```

- remove column from dataframe

```
df.drop(columns=["a", "b"], inplace=True)
```
