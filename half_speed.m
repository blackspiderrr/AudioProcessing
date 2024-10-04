[y, FS] = audioread("moonlight-sonata-classical-piano-241539.mp3");
y_t = y(FS*10+1:FS*20); 
t = 1/FS:1/FS:0.01;
m = length(y_t);

y_slow = zeros(1,2*m);
for i = 1:1:m
    y_slow(i*2) = y_t(i);
end

t_slow = 1/FS:1/FS:0.02;

plot(t_slow, y_slow(1:length(t_slow)));
xlabel('Time (s)');
ylabel('Amplitude');
title('Y slow');

audiowrite('slow.mp4',y_slow,FS)