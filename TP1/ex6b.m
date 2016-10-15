[max_r,values_r] = ex6mminf('dados/target01 - repeat.wav');
disp('target01 - repeat.wav');
disp(values_r);
disp('max entropy value: ');
figure(1);
subplot(2,1,1);
plot(values_r);
disp(max_r);

[max_r,values_r] = ex6mminf('dados/target02 - repeatNoise.wav');
disp('target02 - repeatNoise.wav');
disp(values_r);
disp('max entropy value: ');
figure(1);
subplot(2,1,2);
plot(values_r);
disp(max_r);