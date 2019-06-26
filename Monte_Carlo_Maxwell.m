close all;
d = 2;
k=1.3181*10^(-23);
vmax = 100;
N=10000;          
T=1;            % Temperature in kelvins
counter=1;
m=1*10^-25;
set = zeros(N,d);
speed = zeros(N,1);

while counter<=N
    vec = (rand(1,d)*2-1)*vmax;
    
    if rand<exp(-m*norm(vec)^2/(2*k*T))
        set(counter,:) = vec;
        speed(counter,1) = norm(vec);
        counter = counter + 1;
    end
end

figure
histogram(speed,26)
title('Maxwell Speed Distribution')
figure
histogram(set(:,1),30)
title('Boltzmann X')
figure
histogram(set(:,2),30)
title('Boltzmann Y')
figure
histogram(set(:,3),30)
title('Boltzmann Z')