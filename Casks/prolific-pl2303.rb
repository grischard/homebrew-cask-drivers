cask 'prolific-pl2303' do
  version '2.0.0_20191112'
  sha256 '37d8b69952a12718f836a5d808325337ad45f63fb103b729d788245f76d65a6d'

  url "http://www.prolific.com.tw/UserFiles/files/PL2303HXD_G_Driver_#{version.before_comma.dots_to_underscores}.zip"
  name 'Prolific USB to Serial Cable driver'
  homepage 'http://www.prolific.com.tw/US/'

  pkg "PL2303_MacOSX_#{version.after_comma}.pkg"

  uninstall kext:    'com.prolific.driver.PL2303',
            pkgutil: [
                       'com.Susteen.driver.PL2303',
                       'com.prolific.driver.PL2303',
                     ],
            delete:  [
                       '/Library/Extensions/ProlificUsbSerial.kext',
                       '/var/db/receipts/*PL2303*.*',
                       '/var/db/receipts/*ProlificUSbSerial*.*',
                     ]
end
