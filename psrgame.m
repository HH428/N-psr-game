close all
clear
clc

% paper, scissor, rock game simulator by Q.H 2017
% Alice VS Bob

winN = [0,0];
N = 0;
while N < 500000  
    N = N + 1;
    fprintf('** Round# %d **\n\n', N);
    fprintf('--------\n')
    

    a = randi([0 2],1); %Alice % comment if u want try stratigy for Alice.
    b = randi([0 2],1); %Bob
    
%%%%%%%%%% Strategy START
% modify it this any strategy you want to try for Alice.
%     if N == 1 
%      a = 0;
%     else
%      if b == 0
%          a = 2;
%      end
%      if b == 1
%          a = 0;
%      end
%      if b == 2
%          a = 1;
%      end      
%     end
%%%%%%%%%%% Strategy END
    
    showmove(a)
    fprintf(' VS ')
    showmove(b)
    res = judge(a,b);
    winN = winN + res;
    rate = winN/sum(winN) * 100;
    fprintf('\n--------')
    fprintf('\n Alice wins %d times, rate is %.2f percentage \n', winN(1), rate(1));
    fprintf('\n Bob wins %d times, rate is %.2f percentage \n', winN(2),rate(2));  
    fprintf('** This Round Ends ** \n\n\n');
    
    pause  % comment to run multiple times
end


%0 % rock
%1 % scissors
%2 % paper

function showmove(x)
    if x == 0
        fprintf('0-rock')
    end
    if x == 1 
        fprintf('1-scissors')
    end
    if x == 2
        fprintf('2-paper')
    end       
end


function res = judge(a,b)
    if a == 0
        if b == 0
            res = [0, 0];
        end
        if b == 1
            res = [1, 0];
        end
        if b == 2
            res = [0, 1];
        end
    end
    if a == 1
        if b == 0
            res = [0, 1];
        end
        if b == 1
            res = [0, 0];
        end
        if b == 2
            res = [1, 0];
        end
    end
    if a == 2
        if b == 0
            res = [1, 0];
        end
        if b == 1
            res = [0, 1];
        end
        if b == 2
            res = [0, 0];
        end
    end
end