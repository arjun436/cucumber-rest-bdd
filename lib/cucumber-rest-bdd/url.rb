def get_url(path)
    raise %/Please set an 'endpoint' environment variable provided with the url of the api/ if !ENV.has_key?('endpoint')
    url = ENV['endpoint']
    url = "#{url}/" unless url.end_with?("/")
    url = "#{url}#{@urlbasepath}/" unless @urlbasepath.to_s.empty?
    url = "#{url}#{path}" unless path.empty?
end
