cask 'konica-minolta-bizhub-c220-c280-c360-driver' do
  version '3.11.0,9417996e51b61744d50204a9201cfa60,40940,1558521685'
  sha256 '236d1fd8acf2888ac48668eebf02aa8de567d0f481142e2ac9d4d7b2a9100587'

  url "https://dl.konicaminolta.eu/en/?tx_kmanacondaimport_downloadproxy[fileId]=#{version.after_comma.before_comma}&tx_kmanacondaimport_downloadproxy[documentId]=#{version.after_comma.after_comma.before_comma}&tx_kmanacondaimport_downloadproxy[system]=KonicaMinolta&tx_kmanacondaimport_downloadproxy[language]=EN&type=#{version.after_comma.after_comma.after_comma}"
  name 'Konica Minolta Bizhub C220/C280/C360 PostScript Printer Driver'
  homepage 'https://www.konicaminolta.eu/en/business-solutions/support/download-center.html'

  depends_on macos: '>= :mavericks'

  pkg 'bizhub_C360_109.pkg'

  uninstall pkgutil: 'jp.konicaminolta.print.package.C360'
end
