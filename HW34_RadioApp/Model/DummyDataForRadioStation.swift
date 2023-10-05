//
//  DummyDataForRadioStation.swift
//  HW#34_RadioApp
//
//  Created by Dawei Hao on 2023/9/20.
//

import UIKit

extension RadioAppViewController {
    func fetchData () -> [RadioStationsInfo] {

        //index 0
        let radioStation1 =
        RadioStationsInfo(
            channelName: "Classical FM 97.7",
            steamURL: "https://onair.family977.com.tw:8977/live.mp3",
            quality: "128kbps 48kHz",
            website: "https://www.family977.com.tw/")

        let radioStation2 =
        //index 1
        RadioStationsInfo(
            channelName: "Bravo FM 91.3",
            steamURL: "https://onair.bravo913.com.tw:9130/live.mp3",
            quality: "128kbps 44.1kHz",
            website: "https://bravo913.com.tw"
        )

        let radioStation3 =
        //index 2
        RadioStationsInfo(
            channelName: "ICRT",
            steamURL: "http://live.leanstream.co/ICRTFM?args=tunein_aac",
            quality: "44.1kHz",
            website: "https://www.icrt.com.tw"
        )
        let radioStation4 =

        //index 3
        RadioStationsInfo(
            channelName: "News 98",
            steamURL: "https://stream.rcs.revma.com/pntx1639ntzuv.m4a",
            quality: "44.1kHz",
            website: "http://www.news98.com.tw"
        )

        let radioStation5 =
        //index 4
        RadioStationsInfo(
            channelName: "城市廣播網 台北 90.1",
            steamURL: "http://fm901.cityfm.tw:8080/901.mp3",
            quality: "128kbps 44.1kHz",
            website: "http://www.cityfm.tw"
        )

        let radioStation6 =
        //index 5
        RadioStationsInfo(
            channelName: "IC之音",
            steamURL: "https://n10.rcs.revma.com/7mnq8rt7k5zuv",
            quality: "44.1kHz",
            website: "https://www.ic975.com"
        )

        let radioStation7 =
        //index 6
        RadioStationsInfo(
            channelName: "臺北廣播電臺 93.1",
            steamURL: "https://stream.ginnet.cloud/live0130lo-yfyo/_definst_/fm/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.radio.gov.taipei/"
        )

        let radioStation8 =
        //index 7
        RadioStationsInfo(
            channelName: "中廣流行網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣流行網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        )

        let radioStation9 =
        //index 8
        RadioStationsInfo(
            channelName: "中廣音樂網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣音樂網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        )

        let radioStation10 =
        //index 9
        RadioStationsInfo(
            channelName: "中廣新聞網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣新聞網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        )

        let radioStation11 =
        //index 10
        RadioStationsInfo(
            channelName: "中廣鄉親網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣鄉親網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        )

        let radioStation12 =
        //index 11
        RadioStationsInfo(
            channelName: "I go 531",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=I%20go%20531",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        )

        let radioStation13 =
        //index 12
        RadioStationsInfo(
            channelName: "國立教育廣播電台 台北 101.7",
            steamURL: "https://cast.ner.gov.tw/1",
            quality: "128kbps 44.1kHz",
            website: "https://www.ner.gov.tw"
        )

        let radioStation14 =
        //index 13
        RadioStationsInfo(
            channelName: "飛碟聯播網",
            steamURL: "https://stream.rcs.revma.com/em90w4aeewzuv.m4a",
            quality: "48kHz",
            website: "http://www.uforadio.com.tw"
        )

        let radioStation15 =
        //index 14
        RadioStationsInfo(
            channelName: "警察廣播電台 全國治安交通網",
            steamURL: "http://stream.pbs.gov.tw:1935/live/mp3:PBS/playlist.m3u8",
            quality: "48kHz",
            website: "https://pbs.npa.gov.tw/"
        )

        let radioStation16 =
        //index 15
        RadioStationsInfo(
            channelName: "警察廣播電台 台北分台",
            steamURL: "http://stream.pbs.gov.tw:1935/live/TPS/playlist.m3u8",
            quality: "48kHz",
            website: "https://pbs.npa.gov.tw/"
        )

        let radioStation17 =
        //index 16
        RadioStationsInfo(
            channelName: "幸福電台 FM102.5",
            steamURL: "https://live.tr-radio.com/live/live/playlist.m3u8",
            quality: "48kHz",
            website: "https://www.tr-radio.com"
        )

        let radioStation18 =
        //index 17
        RadioStationsInfo(
            channelName: "世新廣播電臺 88.1",
            steamURL: "https://stream.ginnet.cloud/live0115lo-89xv/_definst_/fm881/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://shrs.shu.edu.tw"
        )


        let radioStation19 =
        //index 18
        RadioStationsInfo(
            channelName: "台藝之聲 88.3",
            steamURL: "https://votastream.ntua.edu.tw:8443/vota",
            quality: "320kbps 48kHz",
            website: "https://vota.ntua.edu.tw"
        )

        let radioStation20 =
        //index 19
        RadioStationsInfo(
            channelName: "輔大之聲 88.5",
            steamURL: "http://fjuvoice885.fju.edu.tw:8000/fjuvoice885.mp3",
            quality: "192kbps 44.1kHz",
            website: "https://www.fjucomm.com/fjuvoice885/"
        )

        let radioStation21 =
        //index 20
        RadioStationsInfo(
            channelName: "政大之聲 88.7",
            steamURL: "http://vnccuonair.nccu.edu.tw:8000/ade.taiwan.mp3",
            quality: "64kbps 44.1kHz",
            website: "https://vnccu.nccu.edu.tw"
        )

        let radioStation22 =
        //index 21
        RadioStationsInfo(
            channelName: "淡江之聲 88.7",
            steamURL: "http://163.13.182.81:8001/votk",
            quality: "192kbps 44.1kHz",
            website: "http://votk.tku.edu.tw"
        )

        let radioStation23 =
        //index 22
        RadioStationsInfo(
            channelName: "銘傳之聲 88.3",
            steamURL: "http://radio.mcu.edu.tw:8080/radio",
            quality: "44.1kHz",
            website: "http://radio.mcu.edu.tw"
        )

        let radioStation24 =
        //index 23
        RadioStationsInfo(
            channelName: "AsiaFM 亞洲電台 FM92.7",
            steamURL: "https://stream.rcs.revma.com/xpgtqc74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        )

        let radioStation25 =
        //index 24
        RadioStationsInfo(
            channelName: "AsiaFM 亞太電台 FM92.3",
            steamURL: "https://stream.rcs.revma.com/kydend74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        )

        let radioStation26 =
        //index 25
        RadioStationsInfo(
            channelName: "AsiaFM 飛揚調頻 FM89.5",
            steamURL: "https://stream.rcs.revma.com/e0tdah74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        )

        let radioStation27 =
        //index 26
        RadioStationsInfo(
            channelName: "佳音Love聯播網",
            steamURL: "https://stream.ginnet.cloud/live0119lo-p4rb/_definst_/fm909/playlist.m3u8",
            quality: "32kHz",
            website: "http://www.goodnews.org.tw/"
        )

        let radioStation28 =
        //index 27
        RadioStationsInfo(
            channelName: "漁業廣播電台",
            steamURL: "https://stream.rcs.revma.com/mk0c5vq122hvv",
            quality: "96kbps 44.1kHz",
            website: "https://www.frs.gov.tw/"
        )

        let radioStation29 =
        //index 28
        RadioStationsInfo(
            channelName: "正聲綜合",
            steamURL: "http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live2/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.csbc.com.tw"
        )

        let radioStation30 =
        //index 29
        RadioStationsInfo(
            channelName: "正聲 104.1",
            steamURL: "http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live1/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.csbc.com.tw"
        )

        let radioStation31 =
        //index 30
        RadioStationsInfo(
            channelName: "UNI FM96.7 環宇廣播電台",
            steamURL: "https://n10.rcs.revma.com/srn5f9kmwxhvv",
            quality: "44.1kHz",
            website: "http://www.uni967.com"
        )

        let radioStation32 =
        //index 31
        RadioStationsInfo(
            channelName: "中央廣播電臺 華語",
            steamURL: "https://streamak0138.akamaized.net/live0138lh-mbm9/_definst_/rti3/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.rti.org.tw"
        )

        let radioStation33 =
        //index 32
        RadioStationsInfo(
            channelName: "全國廣播",
            steamURL: "http://stream.rcs.revma.com/044q61ha7a0uv",
            quality: "44.1kHz",
            website: "https://www.mradio.com.tw"
        )
        return [ radioStation1, radioStation2, radioStation3, radioStation4, radioStation5, radioStation6, radioStation7, radioStation8, radioStation9, radioStation10, radioStation11, radioStation12, radioStation13, radioStation14, radioStation15, radioStation16, radioStation17, radioStation18, radioStation19, radioStation20, radioStation21,radioStation22,radioStation23, radioStation24, radioStation25, radioStation26, radioStation27, radioStation28, radioStation29, radioStation30,radioStation31,radioStation32,radioStation33]
            }
        }
