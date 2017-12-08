%% 注册接口
td = TdxTrader;

%% 帐户信息
td.apikey = 'PDOFDSJFDSF3';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % 中信证券
td.Port = '7708';
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% 画k线开始
Start = 0;      % 开始的bar编号(当天是0)
Count = 100;    % 开始的bar编号(最大800)
data = td.GetSecurityBars('day','SH','600000',Start,Count);
kline = td_cell2mat(data);
stockname = '浦发银行';
candle(kline.matdata(:,4),kline.matdata(:,5),kline.matdata(:,3),kline.matdata(:,2))
title(stockname)
