# !/usr/bin/env ruby
# -*- coding: utf-8 -*-

# webに接続するためのライブラリ
require "open-uri"
# スクレイピングに使用するライブラリ
require "nokogiri"

#スクレイピング対象のURL
url = "https://XXXXXXXXXX"
#取得するhtml用charset
charset = nil

html = open(url) do |page|
  # charsetを自動で読み込み、取得
  charset = page.charset
  # 中身を読む
  page.read
end

# Nokogiri で切り分け
contents = Nokogiri::HTML.parse(html,nil,charset)
 
puts contents.title

