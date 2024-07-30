class Adjuster {

private:
  int gHandle;
  double gLotSize;
  int gHour;
  double gStopLoss;
  double gTakeProfit;
  
public:
  Adjuster(double lotSize = 0.1, int hour = 1, double stopLoss = 0.0, double takeProfit = 0.0)
    : gLotSize(lotSize), gHour(hour), gStopLoss(stopLoss), gTakeProfit(takeProfit) {}
  
  Adjuster(Adjuster &adjuster) {
    SetLotSize(adjuster.GetLotSize());
    SetHour(adjuster.GetHour());
    SetStopLoss(adjuster.GetStopLoss());
    SetTakeProfit(adjuster.GetTakeProfit());
  }
  
  void SetLotSize(double lotSize) {
    if (lotSize < 0.01) {
      Alert("RSI lotSize < 0.01 !");
    } else if (lotSize > 10.0) {
      Alert("RSI lotSize > 10.0 !");
    } else {
      gLotSize = lotSize;
    }
  }
  
  void SetStopLoss(double stopLoss) {
    if (stopLoss < 0) {
      Alert("RSI stopLoss < 0 !");
    } else {
      gStopLoss = stopLoss;
    }
  }
  
  void SetTakeProfit(double takeProfit) {
    if (takeProfit < 0) {
      Alert("RSI takeProfit < 0 !");
    } else {
      gTakeProfit = takeProfit;
    }
  }
  
  void SetHour(int hour) {
    if (hour <= 0) {
      Alert("RSI hour <= 0 !");
    } else {
      gHour = hour;
    }
  }
  
  double GetLotSize() {
    return gLotSize;
  }
  
  int GetHour() {
    return gHour;
  }
  
  double GetStopLoss() {
    return gStopLoss;
  }
  
  double GetTakeProfit() {
    return gTakeProfit;
  }
};
