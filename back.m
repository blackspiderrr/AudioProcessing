[y, FS] = audioread("moonlight-sonata-classical-piano-241539.mp3");
y_t = y(FS*10+1:FS*20); 
t = 1/FS:1/FS:0.01;
m = length(y_t);

y_back = zeros(1,m);
for i = 1:1:m
    y_back(i) = y_t(m+1-i);
end

audiowrite('back.mp4',y_back,FS)