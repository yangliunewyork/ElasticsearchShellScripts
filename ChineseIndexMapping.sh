#!/bin/bash

curl -XPUT "$ElasticsearchHost:$ElasticsearchPort/chinese_article" -d '
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
          "analyzer": "smartcn",
          "type": "text"
        },
        "author": {
          "analyzer": "smartcn",
          "type": "text"
        },
        "title": {
          "analyzer": "smartcn",
          "type": "text"
        }
      }
    }
  }
}
'
