//
//  InternetRadioInfo.swift
//  HW#34_RadioApp
//
//  Created by Dawei Hao on 2023/9/9.
//

import Foundation
import UIKit

struct RadioStationsInfo {
    var channelName: String
    var steamURL: String
    var quality: String
    var website: String
}

    // Total is 33 items.
    let RadioStationsList = [
        //index 0
        RadioStationsInfo(
            channelName: "Classical FM 97.7",
            steamURL: "https://onair.family977.com.tw:8977/live.mp3",
            quality: "128kbps 48kHz",
            website: "https://www.family977.com.tw/"
        ),

        //index 1
        RadioStationsInfo(
            channelName: "Bravo FM 91.3",
            steamURL: "https://onair.bravo913.com.tw:9130/live.mp3",
            quality: "128kbps 44.1kHz",
            website: "https://bravo913.com.tw"
        ),

        //index 2
        RadioStationsInfo(
            channelName: "ICRT",
            steamURL: "http://live.leanstream.co/ICRTFM?args=tunein_aac",
            quality: "44.1kHz",
            website: "https://www.icrt.com.tw"
        ),

        //index 3
        RadioStationsInfo(
            channelName: "News 98",
            steamURL: "https://stream.rcs.revma.com/pntx1639ntzuv.m4a",
            quality: "44.1kHz",
            website: "http://www.news98.com.tw"
        ),

        //index 4
        RadioStationsInfo(
            channelName: "城市廣播網 台北 90.1",
            steamURL: "http://fm901.cityfm.tw:8080/901.mp3",
            quality: "128kbps 44.1kHz",
            website: "http://www.cityfm.tw"
        ),

        //index 5
        RadioStationsInfo(
            channelName: "IC之音",
            steamURL: "https://n10.rcs.revma.com/7mnq8rt7k5zuv",
            quality: "44.1kHz",
            website: "https://www.ic975.com"
        ),

        //index 6
        RadioStationsInfo(
            channelName: "臺北廣播電臺 93.1",
            steamURL: "https://stream.ginnet.cloud/live0130lo-yfyo/_definst_/fm/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.radio.gov.taipei/"
        ),

        //index 7
        RadioStationsInfo(
            channelName: "中廣流行網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣流行網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        ),

        //index 8
        RadioStationsInfo(
            channelName: "中廣音樂網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣音樂網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        ),

        //index 9
        RadioStationsInfo(
            channelName: "中廣新聞網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣新聞網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        ),

        //index 10
        RadioStationsInfo(
            channelName: "中廣鄉親網",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=中廣鄉親網",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        ),

        //index 11
        RadioStationsInfo(
            channelName: "I go 531",
            steamURL: "https://sonnykuo.appspot.com/bcc/?id=I%20go%20531",
            quality: "44.1kHz",
            website: "https://www.bcc.com.tw"
        ),

        //index 12
        RadioStationsInfo(
            channelName: "國立教育廣播電台 台北 101.7",
            steamURL: "https://cast.ner.gov.tw/1",
            quality: "128kbps 44.1kHz",
            website: "https://www.ner.gov.tw"
        ),

        //index 13
        RadioStationsInfo(
            channelName: "飛碟聯播網",
            steamURL: "https://stream.rcs.revma.com/em90w4aeewzuv.m4a",
            quality: "48kHz",
            website: "http://www.uforadio.com.tw"
        ),

        //index 14
        RadioStationsInfo(
            channelName: "警察廣播電台 全國治安交通網",
            steamURL: "http://stream.pbs.gov.tw:1935/live/mp3:PBS/playlist.m3u8",
            quality: "48kHz",
            website: "https://pbs.npa.gov.tw/"
        ),

        //index 15
        RadioStationsInfo(
            channelName: "警察廣播電台 台北分台",
            steamURL: "http://stream.pbs.gov.tw:1935/live/TPS/playlist.m3u8",
            quality: "48kHz",
            website: "https://pbs.npa.gov.tw/"
        ),

        //index 16
        RadioStationsInfo(
            channelName: "幸福電台 FM102.5",
            steamURL: "https://live.tr-radio.com/live/live/playlist.m3u8",
            quality: "48kHz",
            website: "https://www.tr-radio.com"
        ),

        //index 17
        RadioStationsInfo(
            channelName: "世新廣播電臺 88.1",
            steamURL: "https://stream.ginnet.cloud/live0115lo-89xv/_definst_/fm881/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://shrs.shu.edu.tw"
        ),

        //index 18
        RadioStationsInfo(
            channelName: "台藝之聲 88.3",
            steamURL: "https://votastream.ntua.edu.tw:8443/vota",
            quality: "320kbps 48kHz",
            website: "https://vota.ntua.edu.tw"
        ),

        //index 19
        RadioStationsInfo(
            channelName: "輔大之聲 88.5",
            steamURL: "http://fjuvoice885.fju.edu.tw:8000/fjuvoice885.mp3",
            quality: "192kbps 44.1kHz",
            website: "https://www.fjucomm.com/fjuvoice885/"
        ),

        //index 20
        RadioStationsInfo(
            channelName: "政大之聲 88.7",
            steamURL: "http://vnccuonair.nccu.edu.tw:8000/ade.taiwan.mp3",
            quality: "64kbps 44.1kHz",
            website: "https://vnccu.nccu.edu.tw"
        ),

        //index 21
        RadioStationsInfo(
            channelName: "淡江之聲 88.7",
            steamURL: "http://163.13.182.81:8001/votk",
            quality: "192kbps 44.1kHz",
            website: "http://votk.tku.edu.tw"
        ),

        //index 22
        RadioStationsInfo(
            channelName: "銘傳之聲 88.3",
            steamURL: "http://radio.mcu.edu.tw:8080/radio",
            quality: "44.1kHz",
            website: "http://radio.mcu.edu.tw"
        ),

        //index 23
        RadioStationsInfo(
            channelName: "AsiaFM 亞洲電台 FM92.7",
            steamURL: "https://stream.rcs.revma.com/xpgtqc74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        ),

        //index 24
        RadioStationsInfo(
            channelName: "AsiaFM 亞太電台 FM92.3",
            steamURL: "https://stream.rcs.revma.com/kydend74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        ),

        //index 25
        RadioStationsInfo(
            channelName: "AsiaFM 飛揚調頻 FM89.5",
            steamURL: "https://stream.rcs.revma.com/e0tdah74hv8uv",
            quality: "48kHz",
            website: "https://www.asiafm.com.tw/"
        ),

        //index 26
        RadioStationsInfo(
            channelName: "佳音Love聯播網",
            steamURL: "https://stream.ginnet.cloud/live0119lo-p4rb/_definst_/fm909/playlist.m3u8",
            quality: "32kHz",
            website: "http://www.goodnews.org.tw/"
        ),

        //index 27
        RadioStationsInfo(
            channelName: "漁業廣播電台",
            steamURL: "https://stream.rcs.revma.com/mk0c5vq122hvv",
            quality: "96kbps 44.1kHz",
            website: "https://www.frs.gov.tw/"
        ),

        //index 28
        RadioStationsInfo(
            channelName: "正聲綜合",
            steamURL: "http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live2/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.csbc.com.tw"
        ),

        //index 29
        RadioStationsInfo(
            channelName: "正聲 104.1",
            steamURL: "http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live1/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.csbc.com.tw"
        ),

        //index 30
        RadioStationsInfo(
            channelName: "UNI FM96.7 環宇廣播電台",
            steamURL: "https://n10.rcs.revma.com/srn5f9kmwxhvv",
            quality: "44.1kHz",
            website: "http://www.uni967.com"
        ),

        //index 31
        RadioStationsInfo(
            channelName: "中央廣播電臺 華語",
            steamURL: "https://streamak0138.akamaized.net/live0138lh-mbm9/_definst_/rti3/playlist.m3u8",
            quality: "44.1kHz",
            website: "https://www.rti.org.tw"
        ),

        //index 32
        RadioStationsInfo(
            channelName: "全國廣播",
            steamURL: "http://stream.rcs.revma.com/044q61ha7a0uv",
            quality: "44.1kHz",
            website: "https://www.mradio.com.tw"
        )
    ]

/*
 Name: Classical FM 97.7
 Stream URL: https://onair.family977.com.tw:8977/live.mp3
 Quality: 128kbps 48kHz
 Website: https://www.family977.com.tw/
 ----------------------------------------
 Name: Bravo FM 91.3
 Stream URL: https://onair.bravo913.com.tw:9130/live.mp3
 Quality: 128kbps 44.1kHz
 Website: https://bravo913.com.tw
 ----------------------------------------
 Name: ICRT
 Stream URL: http://live.leanstream.co/ICRTFM?args=tunein_aac
 Quality: 44.1kHz
 Website: https://www.icrt.com.tw
 ----------------------------------------
 Name: News 98
 Stream URL: https://stream.rcs.revma.com/pntx1639ntzuv.m4a
 Quality: 44.1kHz
 Website: http://www.news98.com.tw
 ----------------------------------------
 Name: 城市廣播網 台北 90.1
 Stream URL: http://fm901.cityfm.tw:8080/901.mp3
 Quality: 128kbps 44.1kHz
 Website: http://www.cityfm.tw
 ----------------------------------------
 Name: IC之音
 Stream URL: https://n10.rcs.revma.com/7mnq8rt7k5zuv
 Quality: 44.1kHz
 Website: https://www.ic975.com
 ----------------------------------------
 Name: 臺北廣播電臺 93.1
 Stream URL: https://stream.ginnet.cloud/live0130lo-yfyo/_definst_/fm/playlist.m3u8
 Quality: 44.1kHz
 Website: https://www.radio.gov.taipei/
 ----------------------------------------
 Name: 中廣流行網
 Stream URL: https://sonnykuo.appspot.com/bcc/?id=中廣流行網
 Quality: 44.1kHz
 Website: https://www.bcc.com.tw
 ----------------------------------------
 Name: 中廣音樂網
 Stream URL: https://sonnykuo.appspot.com/bcc/?id=中廣音樂網
 Quality: 44.1kHz
 Website: https://www.bcc.com.tw
 ----------------------------------------
 Name: 中廣新聞網
 Stream URL: https://sonnykuo.appspot.com/bcc/?id=中廣新聞網
 Quality: 44.1kHz
 Website: https://www.bcc.com.tw
 ----------------------------------------
 Name: 中廣鄉親網
 Stream URL: https://sonnykuo.appspot.com/bcc/?id=中廣鄉親網
 Quality: 44.1kHz
 Website: https://www.bcc.com.tw
 ----------------------------------------
 Name: I go 531
 Stream URL: https://sonnykuo.appspot.com/bcc/?id=I%20go%20531
 Quality: 44.1kHz
 Website: https://www.bcc.com.tw
 ----------------------------------------
 Name: 國立教育廣播電台/台北 101.7
 Stream URL: https://cast.ner.gov.tw/1
 Quality: 128kbps 44.1kHz
 Website: https://www.ner.gov.tw
 ----------------------------------------
 Name: 飛碟聯播網
 Stream URL: https://stream.rcs.revma.com/em90w4aeewzuv.m4a
 Quality: 48kHz
 Website: http://www.uforadio.com.tw
 ----------------------------------------
 Name: 警察廣播電台 全國治安交通網
 Stream URL: http://stream.pbs.gov.tw:1935/live/mp3:PBS/playlist.m3u8
 Quality: 48kHz
 Website: https://pbs.npa.gov.tw/
 ----------------------------------------
 Name: 警察廣播電台 台北分台
 Stream URL: http://stream.pbs.gov.tw:1935/live/TPS/playlist.m3u8
 Quality: 48kHz
 Website: https://pbs.npa.gov.tw/
 ----------------------------------------
 Name: 幸福電台 FM102.5
 Stream URL: https://live.tr-radio.com/live/live/playlist.m3u8
 Quality: 48kHz
 Website: https://www.tr-radio.com
 ----------------------------------------
 Name: 世新廣播電臺 88.1
 Stream URL: https://stream.ginnet.cloud/live0115lo-89xv/_definst_/fm881/playlist.m3u8
 Quality: 44.1kHz
 Website: https://shrs.shu.edu.tw
 ----------------------------------------
 Name: 台藝之聲 88.3
 Stream URL: https://votastream.ntua.edu.tw:8443/vota
 Quality: 320kbps 48kHz
 Website: https://vota.ntua.edu.tw
 ----------------------------------------
 Name: 輔大之聲 88.5
 Stream URL: http://fjuvoice885.fju.edu.tw:8000/fjuvoice885.mp3
 Quality: 192kbps 44.1kHz
 Website: https://www.fjucomm.com/fjuvoice885/
 ----------------------------------------
 Name: 政大之聲 88.7
 Stream URL: http://vnccuonair.nccu.edu.tw:8000/ade.taiwan.mp3
 Quality: 64kbps 44.1kHz
 Website: https://vnccu.nccu.edu.tw
 ----------------------------------------
 Name: 淡江之聲 88.7
 Stream URL: http://163.13.182.81:8001/votk
 Quality: 192kbps 44.1kHz
 Website: http://votk.tku.edu.tw
 ----------------------------------------
 Name: 銘傳之聲 88.3
 Stream URL: http://radio.mcu.edu.tw:8080/radio
 Quality: 44.1kHz
 Website: http://radio.mcu.edu.tw
 ----------------------------------------
 Name: AsiaFM 亞洲電台 FM92.7
 Stream URL: https://stream.rcs.revma.com/xpgtqc74hv8uv
 Quality: 48kHz
 Website: https://www.asiafm.com.tw/
 ----------------------------------------
 Name: AsiaFM 亞太電台 FM92.3
 Stream URL: https://stream.rcs.revma.com/kydend74hv8uv
 Quality: 48kHz
 Website: https://www.asiafm.com.tw/
 ----------------------------------------
 Name: AsiaFM 飛揚調頻 FM89.5
 Stream URL: https://stream.rcs.revma.com/e0tdah74hv8uv
 Quality: 48kHz
 Website: https://www.asiafm.com.tw/
 ----------------------------------------
 Name: 佳音Love聯播網
 Stream URL: https://stream.ginnet.cloud/live0119lo-p4rb/_definst_/fm909/playlist.m3u8
 Quality: 32kHz
 Website: http://www.goodnews.org.tw/
 ----------------------------------------
 Name: 漁業廣播電台
 Stream URL: https://stream.rcs.revma.com/mk0c5vq122hvv
 Quality: 96kbps 44.1kHz
 Website: https://www.frs.gov.tw/
 ----------------------------------------
 Name: 正聲綜合
 Stream URL: http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live2/playlist.m3u8
 Quality: 44.1kHz
 Website: https://www.csbc.com.tw
 ----------------------------------------
 Name: 正聲 104.1
 Stream URL: http://flv.ccdntech.com/live/_definst_/mp4:vod117_Live/live1/playlist.m3u8
 Quality: 44.1kHz
 Website: https://www.csbc.com.tw
 ----------------------------------------
 Name: UNI FM96.7 環宇廣播電台
 Stream URL: https://n10.rcs.revma.com/srn5f9kmwxhvv
 Quality: 44.1kHz
 Website: http://www.uni967.com
 ----------------------------------------
 Name: 中央廣播電臺 華語
 Stream URL: https://streamak0138.akamaized.net/live0138lh-mbm9/_definst_/rti3/playlist.m3u8
 Quality: 44.1kHz
 Website: https://www.rti.org.tw
 ----------------------------------------
 Name: 全國廣播
 Stream URL: http://stream.rcs.revma.com/044q61ha7a0uv
 Quality: 44.1kHz
 Website: https://www.mradio.com.tw
 ----------------------------------------
 */


//        let radioStationsName = ["Classical FM 97.7", "Bravo FM 91.3", "ICRT", "News 98", "城市廣播網 台北 90.1", "IC之音", "臺北廣播電臺 93.1", "中廣流行網", "中廣音樂網", "中廣新聞網", "中廣鄉親網", "I go 531", "國立教育廣播電台 台北 101.7", "飛碟聯播網", "警察廣播電台 全國治安交通網", "警察廣播電台 台北分台", "幸福電台 FM102.5", "世新廣播電臺 88.1", "台藝之聲 88.3", "輔大之聲 88.5", "政大之聲 88.7", "淡江之聲 88.7", "銘傳之聲 88.3", "AsiaFM 亞洲電台 FM92.7", "AsiaFM 亞太電台 FM92.3", "AsiaFM 飛揚調頻 FM89.5", "佳音Love聯播網", "漁業廣播電台", "正聲綜合", "正聲 104.1", "UNI FM96.7 環宇廣播電台", "中央廣播電臺 華語", "全國廣播"]
//
//        lazy var filterRadioStationNames = radioStationsName
