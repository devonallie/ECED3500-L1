%1.
    %a)
        u = @(t) t>=0;
        t = -4:0.001:4;
        x = u(t+2)-3*u(t)+2*u(t-1); 
        x_anon =@(t) u(t+2)-3*u(t)+2*u(t-1);
        x_anon_squared =@(t) x_anon(t).^2;
     
        figure(1)
        hold on
        plot(t,x);
        hold off
    %b) i. Energy signal
    %   ii.
        energy_simpsons = quad(x_anon_squared,-4,4);
        power_rectangle = 0;
        for v = -4:0.001:4
            power_rectangle = power_rectangle + 0.001*x_anon_squared(v+0.0005);
        end
    %c) 
        y = cos(pi*t +pi/6); 
        y_anon =@(t) cos(pi*t +pi/6);
        y_anon_squaredbytwo =@(t) (y_anon(t).^2)/2;
       
        figure(2);
        hold on; 
        plot(t,y);
        
    %d) i. Power signal
    %   ii.
        power_simpsons = quad(y_anon_squaredbytwo,-4,4);
        power_rectangle = 0;
        for v = -4:0.001:4
            power_rectangle = power_rectangle + 0.001*y_anon_squaredbytwo(v);
        end
        
%2.
    %a)
    g = exp((-3/5)*t).*cos((3*(pi/4))*t).*u(t);
    g_anon = @(t) exp((-3/5)*t).*cos((3*(pi/4))*t).*u(t);
    figure(3);
    hold on;
    plot(t,g);
    %b)
    g1 = g(2*t+4);
    
    figure(4);
    hold on
    plot(t,g1);
    
    %c)
    g2 = g(2-2*t);
    
    figure(5);
    hold on;
    plot(t,g2);
    hold off;
    
    
    


