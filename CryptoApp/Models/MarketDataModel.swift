//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 6/9/22.
//

import Foundation

// JSON Data

/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 12913,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 566,
     "total_market_cap": {
       "btc": 52526816.22802016,
       "eth": 625510714.3046098,
       "ltc": 17652120385.162804,
       "bch": 8325316352.802337,
       "bnb": 3710744987.054416,
       "eos": 681470905275.3759,
       "xrp": 3120036214794.3115,
       "xlm": 9796924376948.127,
       "link": 144614431026.66513,
       "dot": 137108098839.75569,
       "yfi": 110745161.46672453,
       "usd": 1040859493093.9012,
       "aed": 3823181004083.212,
       "ars": 146287535005313,
       "aud": 1543122078048.3933,
       "bdt": 98843454382242.94,
       "bhd": 392398824598.93567,
       "bmd": 1040859493093.9012,
       "brl": 5450044391788.963,
       "cad": 1366518406995.6562,
       "chf": 1023981956413.3823,
       "clp": 925792476132370,
       "cny": 7238345086873.633,
       "czk": 25875708710182.824,
       "dkk": 7813739500672.366,
       "eur": 1050732045385.8956,
       "gbp": 903053859646.2418,
       "hkd": 8170694977812.501,
       "huf": 423990430910054.94,
       "idr": 15506932900011586,
       "ils": 3557678564584.8203,
       "inr": 83092276516160.58,
       "jpy": 148670298316626.38,
       "krw": 1436693961727016.2,
       "kwd": 321519415697.72046,
       "lkr": 374466158241673.7,
       "mmk": 2184392465225297,
       "mxn": 20970218065412.195,
       "myr": 4683867718922.563,
       "ngn": 443177154969521.56,
       "nok": 10418818252880.176,
       "nzd": 1720941472989.061,
       "php": 59385198559839.07,
       "pkr": 231440954797202.16,
       "pln": 4964865433694.6455,
       "rub": 64272976898615.44,
       "sar": 3911810189920.1606,
       "sek": 11234461773155.887,
       "sgd": 1463903302888.5088,
       "thb": 38157909016822.484,
       "try": 18967582542650.207,
       "twd": 32079289577154.066,
       "uah": 38416747873846.08,
       "vef": 104221261043.49248,
       "vnd": 24490817025393556,
       "zar": 18003371942627.695,
       "xdr": 770434829052.6687,
       "xag": 57654164913.204735,
       "xau": 611265554.5092586,
       "bits": 52526816228020.164,
       "sats": 5252681622802016
     },
     "total_volume": {
       "btc": 3982456.7480457104,
       "eth": 47424716.44090314,
       "ltc": 1338341270.105503,
       "bch": 631205442.6619996,
       "bnb": 281339751.2961859,
       "eos": 51667483396.09071,
       "xrp": 236553634315.3867,
       "xlm": 742779220154.9385,
       "link": 10964318001.053936,
       "dot": 10395205966.144735,
       "yfi": 8396431.523319693,
       "usd": 78915460896.1055,
       "aed": 289864379417.48535,
       "ars": 11091168716715.512,
       "aud": 116995800889.67781,
       "bdt": 7494072745546.048,
       "bhd": 29750734180.527317,
       "bmd": 78915460896.1055,
       "brl": 413209244798.0969,
       "cad": 103606135723.97455,
       "chf": 77635846697.67505,
       "clp": 70191356694040.99,
       "cny": 548793898163.6987,
       "czk": 1961833938611.3765,
       "dkk": 592418917355.29,
       "eur": 79663974042.70496,
       "gbp": 68467369535.30476,
       "hkd": 619482422261.3856,
       "huf": 32145933714212.49,
       "idr": 1175698319522360.8,
       "ils": 269734623652.1068,
       "inr": 6299856360716.201,
       "jpy": 11271824094474.227,
       "krw": 108926677335987.83,
       "kwd": 24376828039.885235,
       "lkr": 28391122590231.965,
       "mmk": 165615377786330,
       "mxn": 1589911447898.517,
       "myr": 355119574032.4753,
       "ngn": 33600624940343.816,
       "nok": 789929716617.9761,
       "nzd": 130477639313.70747,
       "php": 4502442784881.874,
       "pkr": 17547295998392.947,
       "pln": 376424144264.2143,
       "rub": 4873022371196.643,
       "sar": 296584030912.78894,
       "sek": 851769844662.687,
       "sgd": 110989624076.33604,
       "thb": 2893040796451.232,
       "try": 1438076443909.7336,
       "twd": 2432174504817.9736,
       "uah": 2912665335435.953,
       "vef": 7901805099.527054,
       "vnd": 1856834785198775,
       "zar": 1364972317554.0142,
       "xdr": 58412513916.149284,
       "xag": 4371199981.2593,
       "xau": 46344682.720456116,
       "bits": 3982456748045.7104,
       "sats": 398245674804571.06
     },
     "market_cap_percentage": {
       "btc": 36.4444913563754,
       "eth": 19.23867239746015,
       "usdt": 6.488318154172022,
       "usdc": 4.9718326582176395,
       "bnb": 4.400264470145148,
       "busd": 1.8706199041986868,
       "ada": 1.608285434176223,
       "xrp": 1.5921718104759661,
       "sol": 1.1129375408343214,
       "dot": 0.8382080667222329
     },
     "market_cap_change_percentage_24h_usd": 1.8250095146918184,
     "updated_at": 1662478049
   }
 }
 
 
 
 */

// MARK: - GlobalData

struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - MarketDataModel
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
   
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return "\(item.value.asPercentString())"
        }
        return ""
    }
}

 
