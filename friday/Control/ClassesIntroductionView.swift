//
//  HopeViewController.swift
//  friday
//
//  Created by 溫家豪 on 2020/9/17.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit
import CardSlider

struct Classes: CardSliderItem {
    let image: UIImage
    let rating: Int?
    let title: String
    let subtitle: String?
    let description: String?
}

class ClassesIntroductionView: UIViewController, CardSliderDataSource {
    
    let classes = [
            Classes(image: #imageLiteral(resourceName: "basic"), rating: 5, title: "智慧商務 基礎必修", subtitle: "人工智慧應用工程師", description: "◆ 未來出路：人工智慧應用工程師為應用統計相關原理以解決非線性結構問題的專業人士。主要工作內容為應用讓電腦可以自動「學習」的演算法，從資料中自動分析獲得模式，利用模式對未知資料進行預測。Gartner報告指出，2020年全球將有180萬個職缺被AI取代，並創造出230萬個全新工作機會。104人力銀行數據長呂承諭分析，國內目前AI人才缺口約6000人，呈現翻倍成長，與AI相關的職務，平均年薪達新台幣122萬元。◇ 工作技能：具備機器學習與深度學習開發與應用技能。"),
            Classes(image: #imageLiteral(resourceName: "fintech"), rating: 5, title: "跨領域「智慧金融與大數據」學程", subtitle: "智慧金融工程師", description: "◇ 工作說明：智慧金融工程師為利用基本的金融工具和手段，運用大量的數量知識和工程技術，設計和開發新型金融工具並創造性地解決金融問題的專業人才。區塊鏈、比特幣等各種新興金融科技趨勢來臨，相關產業與市場以驚人速度成長，2018年被視為金融科技 ( FinTech ) 元年，人力銀行調查已有 6 成 2 金融業者啟動徵才計畫， FinTech 人才起薪普遍高於其他職缺，平均多出1% 。◇ 工作技能：區塊鏈概念與設計、數位金融相關概念與設計、數據分析、金融業相關知識及實務經驗。"),
            Classes(image: #imageLiteral(resourceName: "iot"), rating: 5, title: "智慧物聯網學程", subtitle: "物聯網工程師", description: "◇ 工作說明：物聯網是由實際物體(如車輛、機器、家用電器等)，經由嵌入式感測器和 API 等裝置，透過網際網路所形成的資訊連結與交換網路。物聯網技術包含將裝置連線到網際網路的應用程式開發介面 (API)，其他包含大數據管理工具、預測分析、AI 和機器學習、雲端以及無線射頻識別 (RFID)。根據Zebra Technologies發佈的《智慧企業指數》(Intelligent Enterprise Index)調查，62%的公司計劃未來將在整個公司部署物聯網計劃，還有42%的企業預計每年至少會在物聯網上花費310萬美元。因此，為了迎頭趕上這一波物聯網的人才與技能需求，加速培訓與教育目前已是迫在眉睫。◇ 工作技能：無線感測網路相關技術規格(IEEE802.15.4E、6LowPAN、RPL等)、嵌入式系統開發。"),
            Classes(image: #imageLiteral(resourceName: "sell"), rating: 5, title: "創新網路行銷與分析學程", subtitle: "電子商務工程師", description: "◇ 工作說明：電子商務工程師是指在各類事業組織中具有電子商務交易模式、電子商務支付與安全、網路營銷、電子商務法律等商業管理知識，從事業務流程系統分析、電子商務系統規劃和設計、網路資訊收集與整理、網路營銷管理、電子商務軟體和工具應用、電子商務系統維護、相關數據管理的專業性和綜合性專業資格人才。◇ 工作技能：網路交易平台管理、網路交易平台設計、網路交易平台金流與物流管理、網路行銷活動企劃。"),
            Classes(image: #imageLiteral(resourceName: "open"), rating: 5, title: "智慧雲端商務系統開發學程", subtitle: "雲端系統工程師", description: "◇ 工作說明：雲端工程師是軟體項目搭配雲端計算的總體設計師，主要負責雲端系統運算與服務平台的平行化與分散式軟體設計、開發與服務。工作內容包含根據企業流程設計雲端系統功能，草擬系統軟體架構之藍圖，並列出影響雲端系統軟體架構的可能因素清單。富比世雜誌（Forbes）報導，現今全美有390萬個工作與雲端運算相關，而全球總計有1,820多萬份IT工作仰賴雲端技術。◇ 工作技能：雲端服務應用與管理 ( 軟體、平台、基礎設施 ) 、雲端運算程式設計。"),
    ]
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let cardSlider = CardSliderViewController.with(dataSource: self)
        cardSlider.title = "特色學程"
        cardSlider.modalPresentationStyle = .fullScreen
        present(cardSlider, animated: true, completion: nil)
    }
}

extension ClassesIntroductionView {
    func item(for index: Int) -> CardSliderItem {
        return classes[index]
    }
    
    func numberOfItems() -> Int {
        return classes.count
    }
}

