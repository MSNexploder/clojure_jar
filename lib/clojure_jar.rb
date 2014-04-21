require 'clojure_jar/version'

module ClojureJar
  def self.load_jar!
    require 'java'
    require "clojure-#{CLOJURE_VERSION}"
  end
end

ClojureJar.load_jar!
