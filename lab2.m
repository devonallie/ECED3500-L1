

%1.

    %a)

        u = @(t) t>=0;
        t = [-4:0.001:4];
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
        energy_rectangle = 0;

        for v = -4:0.001:4

            energy_rectangle = energy_rectangle + 0.001*x_anon_squared(v+0.0005);

        end

    %c) 

        y_q3_i = cos(pi*t +pi/6); 
        y_anon =@(t) cos(pi*t +pi/6);
        y_anon_squaredbytwo =@(t) (y_anon(t).^2)/2;

        figure(2);
        hold on; 
        plot(t,y_q3_i);
        hold off;
        

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

    g1 = g_anon(2*t+4);
   
    figure(4);
    hold on;
    plot(t,g1);
    hold off;
    
    %c)

    g2 =  g_anon(2-2*t);
    
    figure(5);
    hold on;
    plot(t,g2);
    hold off;

    
    %d)
    
    h_anon = @(t) g_anon(2*t+4) + g_anon(2-2*t);
    h = g_anon(2*t+4) + g_anon(2-2*t);
    
    figure(6);

    hold on;
    plot(t,h);
    hold off;
    
    %e) i.
        %Energy Signal
        
    %   ii.
    
        h_anon_squared = @(t) h_anon(t) .^2;
        h_energy_simpsons = quad(h_anon_squared,-4,4);
        h_energy_rectangle = 0;

        for v = -4:0.001:4

            h_energy_rectangle = h_energy_rectangle + 0.001*h_anon_squared(v+0.0005);

        end
        
%3.

    %b)
    %   i.
    
        t_q3_i = [0:0.001:2.5];
        v = [0:0.0005:2.5]
        x_q3_i = (-cos(pi*t_q3_i/2)).*(u(t_q3_i)-u(t_q3_i-1));
        h_q3_i = (u(t_q3_i)-u(t_q3_i-1))-1.5*(u(t_q3_i-1.5)-u(t_q3_i-2.5));
        y_q3_i = 0.001*conv(x_q3_i, h_q3_i);

        figure(7)
        hold on
        plot(v, y_q3_i);
        hold off
        
    %   ii.
    
        x_q3_ii = 1.8*exp(-4*t_q3_i/3).*u(t_q3_i);
        h_q3_ii = 3*exp(-2*t_q3_i).*u(t_q3_i);
        y_q3_ii = 0.001*conv(x_q3_ii, h_q3_ii);
        
        figure(8);
        hold on;
        plot(v, y_q3_ii);
        hold off;
        
    %   iii.
    
        t_q3_iii = [-2:0.001:2];
        v_iii = [-2:0.0005:2];
        x_q3_iii = (t_q3_iii+2).*(u(t_q3_iii+2)-u(t_q3_iii)) + (t_q3_iii).*(u(t_q3_iii)-u(t_q3_iii-2));
        h_q3_iii = u(t_q3_iii+1)-u(t_q3_iii-1);
        y_q3_iii = 0.001*conv(x_q3_iii,h_q3_iii);
       
        figure(9);
        hold on;
        plot(v_iii,y_q3_iii);
        hold off;
        
        
        
