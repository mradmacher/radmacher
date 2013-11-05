# coding: utf-8
require 'rubygems'
require 'sinatra'

PATHS = { pl: { home: '/', projects: '/projekty', music: '/muzyka', contact: '/kontakt' },
  en: { home: '/en', projects: '/en/projects', music: '/en/music', contact: '/en/contact' } }
LOCALES = { pl: { home: 'Strona główna', projects: 'Projekty', music: 'Muzyka', contact: 'Kontakt' },
  en: { home: 'Home', projects: 'Projects', music: 'Music', contact: 'Contact' } }

get %r{(\/(?<lang>en))?(\/.+)?} do
	@lang = params[:lang] ? params[:lang].to_sym : :pl
	pass
end

PATHS.values.each do |paths|
  paths.each do |key, value|
    get value do
      erb @current = key
    end
  end
end

