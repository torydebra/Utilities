### How To plot data "live" to do nice videos

Given some data, we can plot not immediately, but plot a point each delay time. 
It is nice to sincronize plotting data with video experiment

- A butter filter is also used here, because I had noisy data, it is optional (and butter require signal processing toolbox)


- The only thing to take care is about the data frequency: in this case, I can not live plot the data at the same frequency of logged data, because 100 Hz was too fast for
matlab to finisish an iteration of the for. So, I put a greater pause. This will make the final video 5x slower than real time, it is then sufficient to speed up x5 the video with the video editor. 

- Alternative could be to reduce the frequency of logged data, eg plot only a point every 10... I have not tried

- On my pc, depending on window size of the plot, the lines may have or not some "holes". IDK if this is because of matlab, desktop, gpu, ubuntu or something. I partially solved this increasing the linewidth and playing with the windows size.

```matlab
%% Real time plot

%filter try
fc = 20;

%sampling freq
fs = 2000;
[b, a] = butter(1, fc/(fs/2));

motor_pos_filt = motor_pos;
motor_pos_filt(1,tBegin:tEnd) = filtfilt(b, a, motor_pos(1,tBegin:tEnd));
motor_pos_filt(2,tBegin:tEnd) = filtfilt(b, a, motor_pos(2,tBegin:tEnd));
motor_pos_filt(3,tBegin:tEnd) = filtfilt(b, a, motor_pos(3,tBegin:tEnd));
motor_pos_filt(4,tBegin:tEnd) = filtfilt(b, a, motor_pos(4,tBegin:tEnd));

figure(3);
h = animatedline(0,0, 'Color', '#0072BD', 'LineWidth',2 );
h2 = animatedline(0,0, 'Color', '#77AC30', 'LineWidth',2 );
h3 = animatedline(0,0, 'Color', '#EDB120', 'LineWidth',2 );
h4 = animatedline(0,0, 'Color', '#A2142F', 'LineWidth',2 );
axis([0,110,-0.1,1.8]);

xlabel("Time [s]");
ylabel("Motor Position [rad]");
legend("Motor Finger 1 Position", "Motor Finger 2 Position", "Motor Finger 3 Position", "Motor Thumb Position");
title("HERI II Hand Motors Positions");

BANG = input("Press to start live plot...");

for i = 1:length(time)
    timer = tic;
    addpoints(h, time(i), motor_pos_filt(1,tBegin+i-1));
    addpoints(h2, time(i), motor_pos_filt(2,tBegin+i-1));
    addpoints(h3, time(i), motor_pos_filt(3,tBegin+i-1));
    addpoints(h4, time(i), motor_pos_filt(4,tBegin+i-1));
    drawnow;
    timer2 = toc(timer);
    
    if (0.05 - timer2 < 0 )
        disp("TOO SLOW") %% if this happen, the syncronization is lost so you should increase the 0.05 and speed up more the resulting video
    end
    
    pause(0.05 - timer2);
    
    %%TO test if iteration freq is correct around 0.05
    %toc(timer) 
end
```
