# kenapa 

mau bikin saingan duckduckgo

# pake apa

python + scikit learn

# itu apaan

- bahasa pemrograman
- libary buat ML

# gimana

pake tf-idf, kita bisa bilang kumpulan teks yang mau kita cari sbg dokumen,
dokumen tsb harus dirubah, dari teks/string ke angka, proses ini kita panggil vektorisasi,
disini kita pake TfidfVectorizer dari scikit-learn, dokumen yang udah dalam bentuk angka 
dihitung jaraknya sama query, bisa pake euclidean dist.

# PoC

```
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import euclidean_distances as dist

vectorizer = TfidfVectorizer()

docs = [
     "bapak budi nyari ikan di sawah",
     "emak gw masak nasi di dapur",
     "pak adit makan apa ya",
     "si udin makan mulu", ]

vectorized_docs = vectorizer.fit_transform(docs)

query = ["udin makan apaan"]
query_vectorized = vectorizer.transform(query)
score = dist(query_vectorized, vectorized_docs).tolist()[0]

for i in range(len(docs)):
   print("query: ", query[0], " dokumen: ", docs[i], " skor: ", score[i])

```

# QnA

- Q: lah itu apaan, hasil pencarian nya mana?

- A: hasil dari kodingan diatas ini:

```
query:  udin makan apaan  dokumen:  bapak budi nyari ikan di sawah  skor:  1.414213562373095
query:  udin makan apaan  dokumen:  emak gw masak nasi di dapur  skor:  1.414213562373095
query:  udin makan apaan  dokumen:  pak adit makan apa ya  skor:  1.2433348440391927
query:  udin makan apaan  dokumen:  si udin makan mulu  skor:  0.8134539857371308
```

lu bisa liat, makin kecil skor antara query sama dokumen, makin mirip dokumen nya, 
disini skor=jarak, makin deket jaraknya, makin mirip dokumennya, di kasus yang diatas,
gw pake query "udin makan apaan", setelah query ini dirubah jadi angka, terus dihitung jaraknya
sama setiap dokumen, dari hasil diatas lu bisa liat, kalau `udin makan apaan` mirip sama `si udin makan mulu`. 
kalau query nya gw ganti jadi `pak adit makan apa ya`, itu skor nya ntar jadi berapa hayo? 

- Q: weits, gw mau belajar lebih lanjut tentang mesin pencari, belajar dari mana?
- A: dari sini https://github.com/memaskal/search, https://github.com/memaskal/search
