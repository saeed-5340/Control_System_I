%% Example 6.1
s = tf('s');
G = 1/(s*(s+7)*(s+11));
f = figure;                
f.Position = [100, 100,400,850];
subplot(2,1,1)
rlocus(G)
subplot(2,1,2)
K = 860;
step(feedback(K*G,1),5)
hold;
K = 1460;
step(feedback(K*G,1),5)
%% Example 6.2
s = tf('s');
G = (s+1)/(s*(0.1*s-1));
figure;                     
rlocus(G);
axis equal;
sgrid;
title('Root locus for (s+1)/s(0.1s-1)');
[K,p] = rlocfind(G);
figure
%% Example 6.3
s = tf('s');
G = (s^2-4*s+20)/((s+2)*(s+4));
rlocus(G);
zeta = 0.45;
wn = 0;
sgrid(zeta,wn);
