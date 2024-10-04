[y, FS] = audioread("moonlight-sonata-classical-piano-241539.mp3");
y_t = y(FS*10+1:FS*20); 
t = 1/FS:1/FS:0.01;
plot(t, y_t(1:length(t)));

xlabel('Time (s)');
ylabel('Amplitude');
title('Y');