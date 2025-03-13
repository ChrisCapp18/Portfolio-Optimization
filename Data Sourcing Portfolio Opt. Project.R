## Packages Needed
install.packages("quantmod")
library(quantmod)

install.packages("tidyquant")
library(tidyquant)

##Data Sourcing
#time horizon = 3 years, to get more to-date scope for investors

##ETFs (5 etfs of differing metrics, S&P, total market, NASDAQ 100, bonds, speculative)
SPY <- as.data.frame(getSymbols("SPY", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
SPY <- subset(SPY, select = -c(SPY.Open, SPY.High, SPY.Low, SPY.Volume, SPY.Adjusted))
tail(SPY)


VTI <- as.data.frame(getSymbols("VTI", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
VTI <- subset(VTI, select = -c(VTI.Open, VTI.High, VTI.Low, VTI.Volume, VTI.Adjusted))
tail(VTI)


QQQ <- as.data.frame(getSymbols("QQQ", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
QQQ <- subset(QQQ, select = -c(QQQ.Open, QQQ.High, QQQ.Low, QQQ.Volume, QQQ.Adjusted))
tail(QQQ)


BND <- as.data.frame(getSymbols("BND", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
BND <- subset(BND, select = -c(BND.Open, BND.High, BND.Low, BND.Volume, BND.Adjusted))
tail(BND)


ARKK <- as.data.frame(getSymbols("ARKK", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
ARKK <- subset(ARKK, select = -c(ARKK.Open, ARKK.High, ARKK.Low, ARKK.Volume, ARKK.Adjusted))
tail(ARKK)


##Stocks (3 top stocks from each 11 sectors of the market)
#Technology
AAPL <- as.data.frame(getSymbols("AAPL", from = "2022-02-22", to = "2025-02-22",
          auto.assign = TRUE, warnings = FALSE, env = NULL))
AAPL <- subset(AAPL, select = -c(AAPL.Open, AAPL.High, AAPL.Low, AAPL.Volume, AAPL.Adjusted))

NVDA <- as.data.frame(getSymbols("NVDA", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
NVDA <- subset(NVDA, select = -c(NVDA.Open, NVDA.High, NVDA.Low, NVDA.Volume, NVDA.Adjusted))

MSFT <- as.data.frame(getSymbols("MSFT", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
MSFT <- subset(MSFT, select = -c(MSFT.Open, MSFT.High, MSFT.Low, MSFT.Volume, MSFT.Adjusted))

#Financial Services
BRK_B <- as.data.frame(getSymbols("BRK-B", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
attach(BRK_B)
BRK_B <- subset(BRK_B, select = -c(`BRK-B.Open`, `BRK-B.High`, `BRK-B.Low`, `BRK-B.Volume`, `BRK-B.Adjusted`))

JPM <- as.data.frame(getSymbols("JPM", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
JPM <- subset(JPM, select = -c(JPM.Open, JPM.High, JPM.Low, JPM.Volume, JPM.Adjusted))

V <- as.data.frame(getSymbols("V", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
V <- subset(V, select = -c(V.Open, V.High, V.Low, V.Volume, V.Adjusted))

#Consumer Cyclical
AMZN <- as.data.frame(getSymbols("AMZN", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
AMZN <- subset(AMZN, select = -c(AMZN.Open, AMZN.High, AMZN.Low, AMZN.Volume, AMZN.Adjusted))

TSLA <- as.data.frame(getSymbols("TSLA", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
TSLA <- subset(TSLA, select = -c(TSLA.Open, TSLA.High, TSLA.Low, TSLA.Volume, TSLA.Adjusted))

HD <- as.data.frame(getSymbols("HD", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
HD <- subset(HD, select = -c(HD.Open, HD.High, HD.Low, HD.Volume, HD.Adjusted))

#Healthcare
LLY <- as.data.frame(getSymbols("LLY", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
LLY <- subset(LLY, select = -c(LLY.Open, LLY.High, LLY.Low, LLY.Volume, LLY.Adjusted))

UNH <- as.data.frame(getSymbols("UNH", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
UNH <- subset(UNH, select = -c(UNH.Open, UNH.High, UNH.Low, UNH.Volume, UNH.Adjusted))

JNJ <- as.data.frame(getSymbols("JNJ", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
JNJ <- subset(JNJ, select = -c(JNJ.Open, JNJ.High, JNJ.Low, JNJ.Volume, JNJ.Adjusted))

#Communication Services
GOOG <- as.data.frame(getSymbols("GOOG", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
GOOG <- subset(GOOG, select = -c(GOOG.Open, GOOG.High, GOOG.Low, GOOG.Volume, GOOG.Adjusted))

META <- as.data.frame(getSymbols("META", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
META <- subset(META, select = -c(META.Open, META.High, META.Low, META.Volume, META.Adjusted))

NFLX <- as.data.frame(getSymbols("NFLX", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
NFLX <- subset(NFLX, select = -c(NFLX.Open, NFLX.High, NFLX.Low, NFLX.Volume, NFLX.Adjusted))

#Industrials
GE <- as.data.frame(getSymbols("GE", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
GE <- subset(GE, select = -c(GE.Open, GE.High, GE.Low, GE.Volume, GE.Adjusted))

CAT <- as.data.frame(getSymbols("CAT", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
CAT <- subset(CAT, select = -c(CAT.Open, CAT.High, CAT.Low, CAT.Volume, CAT.Adjusted))

RTX <- as.data.frame(getSymbols("RTX", from = "2022-02-22", to = "2025-02-22",
           auto.assign = TRUE, warnings = FALSE, env = NULL))
RTX <- subset(RTX, select = -c(RTX.Open, RTX.High, RTX.Low, RTX.Volume, RTX.Adjusted))

#Consumer Defensive
WMT <- as.data.frame(getSymbols("WMT", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
WMT <- subset(WMT, select = -c(WMT.Open, WMT.High, WMT.Low, WMT.Volume, WMT.Adjusted))

COST <- as.data.frame(getSymbols("COST", from = "2022-02-22", to = "2025-02-22",
                                 auto.assign = TRUE, warnings = FALSE, env = NULL))
COST <- subset(COST, select = -c(COST.Open, COST.High, COST.Low, COST.Volume, COST.Adjusted))

PG <- as.data.frame(getSymbols("PG", from = "2022-02-22", to = "2025-02-22",
                               auto.assign = TRUE, warnings = FALSE, env = NULL))
PG <- subset(PG, select = -c(PG.Open, PG.High, PG.Low, PG.Volume, PG.Adjusted))

#Energy
XOM <- as.data.frame(getSymbols("XOM", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
XOM <- subset(XOM, select = -c(XOM.Open, XOM.High, XOM.Low, XOM.Volume, XOM.Adjusted))

CVX <- as.data.frame(getSymbols("CVX", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
CVX <- subset(CVX, select = -c(CVX.Open, CVX.High, CVX.Low, CVX.Volume, CVX.Adjusted))

COP <- as.data.frame(getSymbols("COP", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
COP <- subset(COP, select = -c(COP.Open, COP.High, COP.Low, COP.Volume, COP.Adjusted))

#Real Estate
PLD <- as.data.frame(getSymbols("PLD", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
PLD <- subset(PLD, select = -c(PLD.Open, PLD.High, PLD.Low, PLD.Volume, PLD.Adjusted))

WELL <- as.data.frame(getSymbols("WELL", from = "2022-02-22", to = "2025-02-22",
                                 auto.assign = TRUE, warnings = FALSE, env = NULL))
WELL <- subset(WELL, select = -c(WELL.Open, WELL.High, WELL.Low, WELL.Volume, WELL.Adjusted))

AMT <- as.data.frame(getSymbols("AMT", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
AMT <- subset(AMT, select = -c(AMT.Open, AMT.High, AMT.Low, AMT.Volume, AMT.Adjusted))

#Basic Materials
LIN <- as.data.frame(getSymbols("LIN", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
LIN <- subset(LIN, select = -c(LIN.Open, LIN.High, LIN.Low, LIN.Volume, LIN.Adjusted))

SHW <- as.data.frame(getSymbols("SHW", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
SHW <- subset(SHW, select = -c(SHW.Open, SHW.High, SHW.Low, SHW.Volume, SHW.Adjusted))

ECL <- as.data.frame(getSymbols("ECL", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
ECL <- subset(ECL, select = -c(ECL.Open, ECL.High, ECL.Low, ECL.Volume, ECL.Adjusted))

#Utilities
NEE <- as.data.frame(getSymbols("NEE", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
NEE <- subset(NEE, select = -c(NEE.Open, NEE.High, NEE.Low, NEE.Volume, NEE.Adjusted))

SO <- as.data.frame(getSymbols("SO", from = "2022-02-22", to = "2025-02-22",
                               auto.assign = TRUE, warnings = FALSE, env = NULL))
SO <- subset(SO, select = -c(SO.Open, SO.High, SO.Low, SO.Volume, SO.Adjusted))

DUK <- as.data.frame(getSymbols("DUK", from = "2022-02-22", to = "2025-02-22",
                                auto.assign = TRUE, warnings = FALSE, env = NULL))
DUK <- subset(DUK, select = -c(DUK.Open, DUK.High, DUK.Low, DUK.Volume, DUK.Adjusted))

#Combine dataframes
price_data <- cbind(SPY, VTI, QQQ, BND, ARKK, AAPL, NVDA, MSFT,
                    BRK_B, JPM, V, AMZN, TSLA, HD, LLY, UNH, JNJ,
                    GOOG, META, NFLX, GE, CAT, RTX, WMT, COST, PG,
                    XOM, CVX, COP, PLD, WELL, AMT, LIN, SHW, ECL,
                    NEE, SO, DUK)
View(price_data)

#Export as CSV
write.csv(price_data,"~/Desktop/Portfolio opt. project/price_data_port_project.csv", row.names = TRUE)




  
                      