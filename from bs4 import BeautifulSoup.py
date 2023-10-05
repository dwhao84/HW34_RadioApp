from bs4 import BeautifulSoup

html_content = '''[from bs4 import BeautifulSoup
html_content = ' <li class="list-group-item"><button type="button" class="btn btn-primary">Classical FM 97.7</button>&nbsp;
                <a href="https://onair.family977.com.tw:8977/live.mp3" target="_blank">https://onair.family977.com.tw:8977/live.mp3</a>
                &nbsp;<span class="badge badge-success">128kbps 48kHz</span>
                &nbsp;<a href="https://www.family977.com.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">Bravo FM 91.3</button>&nbsp;
                <a href="https://onair.bravo913.com.tw:9130/live.mp3" target="_blank">https://onair.bravo913.com.tw:9130/live.mp3</a>
                &nbsp;<span class="badge badge-success">128kbps 44.1kHz</span>
                &nbsp;<a href="https://bravo913.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">ICRT</button>&nbsp;
                <a href="http://live.leanstream.co/ICRTFM?args=tunein_aac" target="_blank">http://live.leanstream.co/ICRTFM?args=tunein_aac</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.icrt.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">News 98</button>&nbsp;
                <a href="https://stream.rcs.revma.com/pntx1639ntzuv.m4a" target="_blank">https://stream.rcs.revma.com/pntx1639ntzuv.m4a</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="http://www.news98.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">城市廣播網 台北 90.1</button>&nbsp;
                <a href="http://fm901.cityfm.tw:8080/901.mp3" target="_blank">http://fm901.cityfm.tw:8080/901.mp3</a>
                &nbsp;<span class="badge badge-success">128kbps 44.1kHz</span>
                &nbsp;<a href="http://www.cityfm.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">IC之音</button>&nbsp;
                <a href="https://n10.rcs.revma.com/7mnq8rt7k5zuv" target="_blank">https://n10.rcs.revma.com/7mnq8rt7k5zuv</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.ic975.com" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">臺北廣播電臺 93.1</button>&nbsp;
                <a href="https://stream.ginnet.cloud/live0130lo-yfyo/_definst_/fm/playlist.m3u8" target="_blank">https://stream.ginnet.cloud/live0130lo-yfyo/_definst_/fm/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.radio.gov.taipei/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">中廣流行網</button>&nbsp;
                <a href="https://sonnykuo.appspot.com/bcc/?id=中廣流行網" target="_blank">https://sonnykuo.appspot.com/bcc/?id=中廣流行網</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.bcc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">中廣音樂網</button>&nbsp;
                <a href="https://sonnykuo.appspot.com/bcc/?id=中廣音樂網" target="_blank">https://sonnykuo.appspot.com/bcc/?id=中廣音樂網</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.bcc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">中廣新聞網</button>&nbsp;
                <a href="https://sonnykuo.appspot.com/bcc/?id=中廣新聞網" target="_blank">https://sonnykuo.appspot.com/bcc/?id=中廣新聞網</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.bcc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">中廣鄉親網</button>&nbsp;
                <a href="https://sonnykuo.appspot.com/bcc/?id=中廣鄉親網" target="_blank">https://sonnykuo.appspot.com/bcc/?id=中廣鄉親網</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.bcc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">I go 531</button>&nbsp;
                <a href="https://sonnykuo.appspot.com/bcc/?id=I%20go%20531" target="_blank">https://sonnykuo.appspot.com/bcc/?id=I%20go%20531</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.bcc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">國立教育廣播電台/台北 101.7</button>&nbsp;
                <a href="https://cast.ner.gov.tw/1" target="_blank">https://cast.ner.gov.tw/1</a>
                &nbsp;<span class="badge badge-success">128kbps 44.1kHz</span>
                &nbsp;<a href="https://www.ner.gov.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">飛碟聯播網</button>&nbsp;
                <a href="https://stream.rcs.revma.com/em90w4aeewzuv.m4a" target="_blank">https://stream.rcs.revma.com/em90w4aeewzuv.m4a</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="http://www.uforadio.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">警察廣播電台 全國治安交通網</button>&nbsp;
                <a href="http://stream.pbs.gov.tw:1935/live/mp3:PBS/playlist.m3u8" target="_blank">http://stream.pbs.gov.tw:1935/live/mp3:PBS/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://pbs.npa.gov.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">警察廣播電台 台北分台</button>&nbsp;
                <a href="http://stream.pbs.gov.tw:1935/live/TPS/playlist.m3u8" target="_blank">http://stream.pbs.gov.tw:1935/live/TPS/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://pbs.npa.gov.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">幸福電台 FM102.5</button>&nbsp;
                <a href="https://live.tr-radio.com/live/live/playlist.m3u8" target="_blank">https://live.tr-radio.com/live/live/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://www.tr-radio.com" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">世新廣播電臺 88.1</button>&nbsp;
                <a href="https://stream.ginnet.cloud/live0115lo-89xv/_definst_/fm881/playlist.m3u8" target="_blank">https://stream.ginnet.cloud/live0115lo-89xv/_definst_/fm881/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://shrs.shu.edu.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">台藝之聲 88.3</button>&nbsp;
                <a href="https://votastream.ntua.edu.tw:8443/vota" target="_blank">https://votastream.ntua.edu.tw:8443/vota</a>
                &nbsp;<span class="badge badge-success">320kbps 48kHz</span>
                &nbsp;<a href="https://vota.ntua.edu.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">輔大之聲 88.5</button>&nbsp;
                <a href="http://fjuvoice885.fju.edu.tw:8000/fjuvoice885.mp3" target="_blank">http://fjuvoice885.fju.edu.tw:8000/fjuvoice885.mp3</a>
                &nbsp;<span class="badge badge-success">192kbps 44.1kHz</span>
                &nbsp;<a href="https://www.fjucomm.com/fjuvoice885/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">政大之聲 88.7</button>&nbsp;
                <a href="http://vnccuonair.nccu.edu.tw:8000/ade.taiwan.mp3" target="_blank">http://vnccuonair.nccu.edu.tw:8000/ade.taiwan.mp3</a>
                &nbsp;<span class="badge badge-success">64kbps 44.1kHz</span>
                &nbsp;<a href="https://vnccu.nccu.edu.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">淡江之聲 88.7</button>&nbsp;
                <a href="http://163.13.182.81:8001/votk" target="_blank">http://163.13.182.81:8001/votk</a>
                &nbsp;<span class="badge badge-success">192kbps 44.1kHz</span>
                &nbsp;<a href="http://votk.tku.edu.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">銘傳之聲 88.3</button>&nbsp;
                <a href="http://radio.mcu.edu.tw:8080/radio" target="_blank">http://radio.mcu.edu.tw:8080/radio</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="http://radio.mcu.edu.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">AsiaFM 亞洲電台 FM92.7</button>&nbsp;
                <a href="https://stream.rcs.revma.com/xpgtqc74hv8uv" target="_blank">https://stream.rcs.revma.com/xpgtqc74hv8uv</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://www.asiafm.com.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">AsiaFM 亞太電台 FM92.3</button>&nbsp;
                <a href="https://stream.rcs.revma.com/kydend74hv8uv" target="_blank">https://stream.rcs.revma.com/kydend74hv8uv</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://www.asiafm.com.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">AsiaFM 飛揚調頻 FM89.5</button>&nbsp;
                <a href="https://stream.rcs.revma.com/e0tdah74hv8uv" target="_blank">https://stream.rcs.revma.com/e0tdah74hv8uv</a>
                &nbsp;<span class="badge badge-success">48kHz</span>
                &nbsp;<a href="https://www.asiafm.com.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">佳音Love聯播網</button>&nbsp;
                <a href="https://stream.ginnet.cloud/live0119lo-p4rb/_definst_/fm909/playlist.m3u8" target="_blank">https://stream.ginnet.cloud/live0119lo-p4rb/_definst_/fm909/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">32kHz</span>
                &nbsp;<a href="http://www.goodnews.org.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">漁業廣播電台</button>&nbsp;
                <a href="https://stream.rcs.revma.com/mk0c5vq122hvv" target="_blank">https://stream.rcs.revma.com/mk0c5vq122hvv</a>
                &nbsp;<span class="badge badge-success">96kbps 44.1kHz</span>
                &nbsp;<a href="https://www.frs.gov.tw/" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">正聲綜合</button>&nbsp;
                <a href="http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live2/playlist.m3u8" target="_blank">http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live2/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.csbc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">正聲 104.1</button>&nbsp;
                <a href="http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live1/playlist.m3u8" target="_blank">http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live1/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.csbc.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">UNI FM96.7 環宇廣播電台</button>&nbsp;
                <a href="https://n10.rcs.revma.com/srn5f9kmwxhvv" target="_blank">https://n10.rcs.revma.com/srn5f9kmwxhvv</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="http://www.uni967.com" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item">&nbsp;
                <button type="button" class="btn btn-primary">中央廣播電臺 華語</button><a href="https://streamak0138.akamaized.net/live0138lh-mbm9/_definst_/rti3/playlist.m3u8" target="_blank">https://streamak0138.akamaized.net/live0138lh-mbm9/_definst_/rti3/playlist.m3u8</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.rti.org.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li><li class="list-group-item"><button type="button" class="btn btn-primary">全國廣播</button>&nbsp;
                <a href="http://stream.rcs.revma.com/044q61ha7a0uv" target="_blank">http://stream.rcs.revma.com/044q61ha7a0uv</a>
                &nbsp;<span class="badge badge-success">44.1kHz</span>
                &nbsp;<a href="https://www.mradio.com.tw" target="_blank" class="btn btn-light btn-sm active" role="button">web</a>
            </li></ul>'

soup = BeautifulSoup(html_content, 'html.parser')
stations = soup.find_all('li', class_='list-group-item')

for station in stations:
    name = station.button.text if station.button else None
    stream_url = station.find('a', href=True, text=True)['href'] if station.find('a', href=True, text=True) else None
    quality = station.find('span', class_='badge badge-success').text if station.find('span', class_='badge badge-success') else None
    website_url = station.find('a', text='web')['href'] if station.find('a', text='web') else None
    print(f"Name: {name}\nStream URL: {stream_url}\nQuality: {quality}\nWebsite: {website_url}\n{'-'*40}")]'''  # 把你提供的HTML放到這裡

soup = BeautifulSoup(html_content, 'html.parser')
stations = soup.find_all('li', class_='list-group-item')

for station in stations:
    name = station.button.text if station.button else None
    stream_url = station.find('a', href=True, text=True)['href'] if station.find('a', href=True, text=True) else None
    quality = station.find('span', class_='badge badge-success').text if station.find('span', class_='badge badge-success') else None
    website_url = station.find('a', text='web')['href'] if station.find('a', text='web') else None
    print(f"Name: {name}\nStream URL: {stream_url}\nQuality: {quality}\nWebsite: {website_url}\n{'-'*40}")
    
