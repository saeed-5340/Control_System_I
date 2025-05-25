%% Example 4.1
s = tf('s');
KA = 80;
G1 = 5000/(s+1000);
G2 = 1/(s*(s+20));
M = feedback(series(KA*G1,G2),1);
f = figure;                
f.Position = [100, 100,400,850];
subplot(2,1,1)
step(M)
%%Step response with respect to W(s)
s = tf('s');
KA = 80;
G1 = 5000/(s+1000);
G2 = 1/(s*(s+20));
Mw = (-1) * feedback(G2, KA*G1);
f = figure;                
f.Position = [100, 100,400,850];
subplot(2,1,2)
step(Mw)
%% Example 4.2
w = 0.1:0.1:10;
M = abs(0.25./((j*w).^2+j*w+0.25));
SMK = abs((j*w .* (j*w + 1))./((j*w).^2 + j*w +0.25));
plot(w,M,'r',w,SMK,'b');
xlabel('Frequency (rad/sec)');
ylabel('Magnitude');
%% 
s = tf('s');
S = (s*(s+1))/(s^2+s+0.25);
M1 = 0.0625/(s^2+s+0.0625);
M2 = 0.25/(s^2+s+0.25);
M3 = 1/(s^2+s+1);
step(M1);
hold on;
step(M2);
step(M3);
%% Example 4.4
plot(Time.out.simout,Data.out.simout);
ylabel('Output (Y)');
xlabel('Time(min)');
title('Step Response');
