curl -XPUT "$ElasticsearchHost:$ElasticsearchPort/english_article" -d '
{
  "number_of_shards": 3,
  "number_of_replicas": 0,
  "mappings": {
    "article": {
      "properties": {
        "publishDatetime": {
          "type": "date"
        },
        "quillContent": {
          "index": false,
          "type": "keyword"
        },
        "content": {
          "analyzer": "english",
          "type": "text"
        },
        "author": {
          "analyzer": "english",
          "type": "text"
        },
        "title": {
          "analyzer": "english",
          "type": "text"
        }
      }
    }
  }
}
'
