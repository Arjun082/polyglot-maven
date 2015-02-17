require File.join( basedir, 'ruby-maven/lib/tesla_maven' )

project 'tesla-polyglot-gems' do

  inherit "io.tesla.polyglot:tesla-polyglot:#{TeslaMaven::VERSION}-SNAPSHOT"
  id 'tesla-polyglot-gems'
  packaging 'pom'

  modules [ 'ruby-maven-libs',
            'ruby-maven' ]

  plugin( 'io.tesla.maven.plugins:tesla-license-plugin',
          'header' =>  '${basedir}/../license-header.txt',
          'excludes' => [ '**/conf/**',
                          '**/pkg/**',
                          '**/*pom.xml',
                          '**/*gemspec.xml' ] )
end
