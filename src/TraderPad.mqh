//+------------------------------------------------------------------+
//|                                   Copyright 2018, Erlon F. Souza |
//|                                       https://github.com/erlonfs |
//+------------------------------------------------------------------+

#property copyright "Copyright 2018, Erlon F. Souza"
#property link      "https://github.com/erlonfs"

#include <Trade\Trade.mqh>
#include <Trade\PositionInfo.mqh>
#include <BadRobot.Framework\BadRobotPad.mqh>
#include <BadRobot.Framework\BadRobotPrompt.mqh>

class Sample : public BadRobotPad
{
      public:
      
      void Load()
   	{
         LoadBase();
   	};
   	
      void UnLoad(const int reason)
   	{
         UnLoadBase(reason);
   	};   	
   
   	void Execute() 
   	{   	
         if(!ExecuteBase()) return;   		   
   	};
   	
      void ExecuteOnTrade()
      {      
         ExecuteOnTradeBase();         
      };
      
      void ChartEvent(const int id, const long& lparam, const double& dparam, const string& sparam)
      {
         ChartEventBase(id,lparam,dparam,sparam);
      }
};

