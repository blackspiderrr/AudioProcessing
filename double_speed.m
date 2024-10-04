[y, FS] = audioread("moonlight-sonata-classical-piano-241539.mp3");
y_t = y(FS*10+1:FS*20); 
t = 1/FS:1/FS:0.01;
m = length(y_t);

y_fast = zeros(1,0.5*m);
for i = 1:1:m*0.5
    y_fast(i) = y_t(i*2);
end

t_fast = 1/FS:1/FS:0.005;

plot(t_fast, y_fast(1:length(t_fast)));
xlabel('Time (s)');
ylabel('Amplitude');
title('Y fast');

audiowrite('fast.mp4',y_fast,FS)