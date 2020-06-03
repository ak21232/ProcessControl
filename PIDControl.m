% How change in flow rate effects Concentration with PID control 
syms s
 

num= sym2poly(5.359*s-4.099); 
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=15                       % adjusting the Kp value
        Kp=i; 
        for j=150                  % adjusting the Ki value
            Ki=j;
            for k=.0001            % adjusting the Kd value 
                Kd=k;
        
                A=pid(Kp,Ki,Kd);   % generates continuous PID controller 
                B=feedback(A*G,H); % applies feedback to the system
                step(B)            % generates step input 
                figure(1)          % outputs graph 
                hold on  
            end
        end
    end
 

%How change in flow rate effects Temperature with PID control 
syms s
 
num= sym2poly(-56.36*s-71.53);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=4                        % adjusting the Kp value
        Kp=i; 
        for j=240                  % adjusting the Ki value
            Ki=j;
            for k=15               % adjusting the Kd value 
                Kd=k;
        
                A=pid(Kp,Ki,Kd);   % generates continuous PID controller 
                B=feedback(A*G,H); % applies feedback to the system
                step(B)            % generates step input
                figure(2)          % outputs graph
                hold on  
            end
        end
    end
 


%Initial Temperature effects Concentration with PID control 
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-240                         % adjusting the Kp value
        Kp=i; 
        for j=-95                      % adjusting the Ki val
            Ki=j;
            for k=-250                 % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);       % generates continuous PID controller
                B=feedback(A*G,H);     % applies feedback to the system
                step(B)                % generates step input
                figure(3)              % outputs graph
                hold on  
            end
        end
    end


%Initial Temperature effects Final Temperature with PID control 
syms s
 
 
num=sym2poly(1.5*s+4.848);
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=30                          % adjusting the Kp value
        Kp=i; 
        for j=75                      % adjusting the Ki val
            Ki=j;
            for k=30                  % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);      % generates continuous PID controller
                B=feedback(A*G,H);    % applies feedback to the system
                step(B)               % generates step input
                figure(4)             % outputs graph
                hold on  
            end
        end
    end

                

% How flow rate effects concentration with P control 
syms s
 
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=50:10:150                   % adjusting the Kp value
        Kp=i; 
        for j=0                       % adjusting the Ki val
            Ki=j;
            for k=0                   % adjusting the Kd value

                Kd=k;
        
                A=pid(Kp,Ki,Kd);      % generates continuous PID controller
                B=feedback(A*G,H);    % applies feedback to the system
                step(B)               % generates step input
                figure(5)             % outputs graph
                hold on  
            end
        end
    end



% How Flow rate effects concentration using PI control
syms s
 
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
   

 for i=150                          % adjusting the Kp value
        Kp=i; 
        for j=150:10:300            % adjusting the Ki val
            Ki=j;
            for k=0                 % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);    % generates continuous PID controller
                B=feedback(A*G,H);  % applies feedback to the system
                step(B)             % generates step input
                figure(6)           % outputs graph
                hold on  
            end
        end
    end

%How initial temperature effects concentration using P control
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-175                         % adjusting the Kp value
        Kp=i; 
        for j=0                        % adjusting the Ki val
            Ki=j;
            for k=0                    % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);       % generates continuous PID controller
                B=feedback(A*G,H);     % applies feedback to the system
                step(B)                % generates step input
                figure(7)              % outputs graph
                hold on  
            end
        end
    end

%How initial Temperature effects final temperature using PI control
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-100              % adjusting the Kp value
        Kp=i; 
        for j=-100:10:-50   % adjusting the Ki val
            Ki=j;
            for k=0
                Kd=k;       % adjusting the Kd value
        
                A=pid(Kp,Ki,Kd);     % generates continuous PID controller
                B=feedback(A*G,H);   % applies feedback to the system
                step(B)              % generates step input
                figure(8)            % outputs graph
                hold on  
            end
        end
    end

% How changing the step input affects the PID graph 
syms s
 
% Flowrate, Concentration Function with PID
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
 
Kp=20;                          % adjusting the Kp value
Ki=120;                         % adjusting the Ki val
Kd=.0001;                       % adjusting the Kd value
 
for H=10:1:20                   % Adjusting the step input   
    A=pid(Kp,Ki,Kd);            % generates continuous PID controller
    B=feedback(A*G,H);          % applies feedback to the system
    step(B)                     % generates step input
    figure(10)                  % outputs graph
    hold on  
end         

%How changing the Impulse input affects the PID control 

syms s
 
% Flowrate, Concentration Function with PID
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
 
Kp=20;                   % adjusting the Kp value
Ki=120;                  % adjusting the Ki val
Kd=.0001;                % adjusting the Kd value
 
for H=5:1:15             % adjusting impulse value
    A=pid(Kp,Ki,Kd);     % generates continuous PID controller
    B=feedback(A*G,H);   % applies feedback to the system
    impulse(B)           % generates impulse change
    figure(11)           % outputs graph
    hold on  
end         


% How change in flow rate effects Concentration with PID control 
syms s
 

num= sym2poly(5.359*s-4.099); 
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=15                       % adjusting the Kp value
        Kp=i; 
        for j=150                  % adjusting the Ki value
            Ki=j;
            for k=.0001            % adjusting the Kd value 
                Kd=k;
        
                A=pid(Kp,Ki,Kd);   % generates continuous PID controller 
                B=feedback(A*G,H); % applies feedback to the system
                step(B)            % generates step input 
                figure(1)          % outputs graph 
                hold on  
            end
        end
    end
 

%How change in flow rate effects Temperature with PID control 
syms s
 
num= sym2poly(-56.36*s-71.53);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=4                        % adjusting the Kp value
        Kp=i; 
        for j=240                  % adjusting the Ki value
            Ki=j;
            for k=15               % adjusting the Kd value 
                Kd=k;
        
                A=pid(Kp,Ki,Kd);   % generates continuous PID controller 
                B=feedback(A*G,H); % applies feedback to the system
                step(B)            % generates step input
                figure(2)          % outputs graph
                hold on  
            end
        end
    end
 


%Initial Temperature effects Concentration with PID control 
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-240                         % adjusting the Kp value
        Kp=i; 
        for j=-95                      % adjusting the Ki val
            Ki=j;
            for k=-250                 % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);       % generates continuous PID controller
                B=feedback(A*G,H);     % applies feedback to the system
                step(B)                % generates step input
                figure(3)              % outputs graph
                hold on  
            end
        end
    end


%Initial Temperature effects Final Temperature with PID control 
syms s
 
 
num=sym2poly(1.5*s+4.848);
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=30                          % adjusting the Kp value
        Kp=i; 
        for j=75                      % adjusting the Ki val
            Ki=j;
            for k=30                  % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);      % generates continuous PID controller
                B=feedback(A*G,H);    % applies feedback to the system
                step(B)               % generates step input
                figure(4)             % outputs graph
                hold on  
            end
        end
    end

                

% How flow rate effects concentration with P control 
syms s
 
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=50:10:150                   % adjusting the Kp value
        Kp=i; 
        for j=0                       % adjusting the Ki val
            Ki=j;
            for k=0                   % adjusting the Kd value

                Kd=k;
        
                A=pid(Kp,Ki,Kd);      % generates continuous PID controller
                B=feedback(A*G,H);    % applies feedback to the system
                step(B)               % generates step input
                figure(5)             % outputs graph
                hold on  
            end
        end
    end



% How Flow rate effects concentration using PI control
syms s
 
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
   

 for i=150                          % adjusting the Kp value
        Kp=i; 
        for j=150:10:300            % adjusting the Ki val
            Ki=j;
            for k=0                 % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);    % generates continuous PID controller
                B=feedback(A*G,H);  % applies feedback to the system
                step(B)             % generates step input
                figure(6)           % outputs graph
                hold on  
            end
        end
    end

%How initial temperature effects concentration using P control
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-175                         % adjusting the Kp value
        Kp=i; 
        for j=0                        % adjusting the Ki val
            Ki=j;
            for k=0                    % adjusting the Kd value
                Kd=k;
        
                A=pid(Kp,Ki,Kd);       % generates continuous PID controller
                B=feedback(A*G,H);     % applies feedback to the system
                step(B)                % generates step input
                figure(7)              % outputs graph
                hold on  
            end
        end
    end

%How initial Temperature effects final temperature using PI control
syms s
 
 
num= -0.57232;
den=sym2poly(s^2-.01592*s-2.62);
G=tf(num, den);
H=1;
 
 
 
 
    for i=-100              % adjusting the Kp value
        Kp=i; 
        for j=-100:10:-50   % adjusting the Ki val
            Ki=j;
            for k=0
                Kd=k;       % adjusting the Kd value
        
                A=pid(Kp,Ki,Kd);     % generates continuous PID controller
                B=feedback(A*G,H);   % applies feedback to the system
                step(B)              % generates step input
                figure(8)            % outputs graph
                hold on  
            end
        end
    end

% How changing the step input affects the PID graph 
syms s
 
% Flowrate, Concentration Function with PID
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
 
Kp=20;                          % adjusting the Kp value
Ki=120;                         % adjusting the Ki val
Kd=.0001;                       % adjusting the Kd value
 
for H=10:1:20                   % Adjusting the step input   
    A=pid(Kp,Ki,Kd);            % generates continuous PID controller
    B=feedback(A*G,H);          % applies feedback to the system
    step(B)                     % generates step input
    figure(10)                  % outputs graph
    hold on  
end         

%How changing the Impulse input affects the PID control 

syms s
 
% Flowrate, Concentration Function with PID
 
num= sym2poly(5.359*s-4.099);
den=sym2poly(s^2+.01592*s-2.62);
G=tf(num, den);
 
Kp=20;                   % adjusting the Kp value
Ki=120;                  % adjusting the Ki val
Kd=.0001;                % adjusting the Kd value
 
for H=5:1:15             % adjusting impulse value
    A=pid(Kp,Ki,Kd);     % generates continuous PID controller
    B=feedback(A*G,H);   % applies feedback to the system
    impulse(B)           % generates impulse change
    figure(11)           % outputs graph
    hold on  
end         


