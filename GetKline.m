%% ע��ӿ�
td = TdxTrader;

%% �ʻ���Ϣ
td.apikey = 'PDOFDSJFDSF3';
td.AccountNo = '987654321';
td.JyPassword = '123456';
td.YybID = '0';
td.Version = '8.24';
td.Ip = '180.153.18.180'; % ����֤ȯ
td.Port = '7708';
td.SHshareholder = 'A683065888';
td.SZshareholder = '0217377888';

%% ��k�߿�ʼ
Start = 0;      % ��ʼ��bar���(������0)
Count = 100;    % ��ʼ��bar���(���800)
data = td.GetSecurityBars('day','SH','600000',Start,Count);
kline = td_cell2mat(data);
stockname = '�ַ�����';
candle(kline.matdata(:,4),kline.matdata(:,5),kline.matdata(:,3),kline.matdata(:,2))
title(stockname)
