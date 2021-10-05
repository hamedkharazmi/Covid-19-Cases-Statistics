save mdata
clear all
y1 = [0 0 0 0 0 0 13 11 14 18 34 44 106 143 205 385 523 835 586 591 1234 1076 743 595 881 985 1078 1259 1365 1209 1053 1178 1192 1046 1297 966 1027 1411 1762 2206 2389 2926 3076 2901 3186 3110 2988 2875 2715 2560 2473 2274 2089 1997 2334 1972 1837 1657 1617 1574 1512 1576 1499 1374 1343 1294 1297 1174 1030 1168 1134 1153];
y2 = [0 0 0 0 2 2 4 6 8 12 16 19 26 34 43 54 66 77 92 108 124 145 192 235 291 354 429 547 611 724 853 988 1135 1284 1443 1556 1685 1812 1934 2077 2234 2378 2517 2640 2757 2897 3036 3160 3294 3442 3603 3739 3882 3993 4110 4239 4357 4474 4585 4683 4759 4869 4958 5031 5118 5209 5297 5397 5481 5594 5650 5710];
y3 = [0 0 0 0 0 0 0 0 1 2 22 0 29 19 50 52 116 144 117 187 174 756 465 260 337 228 317 253 810 251 406 393 321 269 766 890 278 463 537 712 832 676 546 712 1520 745 817 1238 1224 1801 2275 2225 2803 2773 2497 3156 2482 1947 2089 2146 1804 2296 1835 1923 1036 2250 1692 2148 1730 1756 1594 1464];
ts1 = timeseries(y1,1:72);
ts2 = timeseries(y2,1:72);
ts3 = timeseries(y3,1:72);
ts1.TimeInfo.Units = 'days';
ts1.TimeInfo.StartDate = '15-Feb-2020';    
ts1.TimeInfo.Format = 'mmm dd, yy';     
ts1.Time = ts1.Time - ts1.Time(1);
ts2.TimeInfo.Units = 'days';
ts2.TimeInfo.StartDate = '15-Feb-2020';    
ts2.TimeInfo.Format = 'mmm dd, yy';       
ts2.Time = ts2.Time - ts2.Time(1);
ts3.TimeInfo.Units = 'days';
ts3.TimeInfo.StartDate = '15-Feb-2020';     
ts3.TimeInfo.Format = 'mmm dd, yy';      
ts3.Time = ts3.Time - ts3.Time(1);
plot(ts1,'--');hold on
plot(ts2,'-');hold on
plot(ts3,':','Color',[0 0 1]);
xlabel('Date')
ylabel({'Number of Daily Cases ','(infected , Death & Recovered)'},'FontWeight','bold','FontName','Calibri')
legend('Infected daily Cases','Total Death daily Cases','Recovered Cases')
title('CoronaVirus statistic Graph of Iran','LineStyle','--','EdgeColor',[0 0 1],'FontAngle','italic','FontName','Calibri','Interpreter','none')
annotation('textbox',[0.0116692531522793 0 0.0911435499515034 0.26984126984127],'Color',[1 0 0],'String',{'P.s : This Statics','Were Announced','By The Iranian','government.','Therefore we can','not Confirm or','Deny It.'},'FontSize',8,'FontName','Calibri','FitBoxToText','off','EdgeColor',[1 1 1],'BackgroundColor',[1 1 1]);
clear all
load mdata 