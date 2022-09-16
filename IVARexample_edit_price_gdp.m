%%--------- MANUAL PART ------------
%% DATA MANIPULATION
clear
close all

%% Loading in the Data  
load data_GER
data=data_GER

%% Defining Variables
price=data(:,1);
gdp=data(:,2);
share=data(:,3);
cpi=data(:,4);
interest=data(:,5);
unemployment=data(:,6);
ipi=data(:,7);
oildivgdp=data(:,8);
energy=data(:,9);
energy_ma=data(:,10);
pos_price=data(:,11);
neg_price=data(:,12);
sopi=data(:,13);
sopd=data(:,14);
nopi=data(:,15);

loc=data(:,16);
time=data(:,17);

%% Setting Estimation Properties     

lag = 4;        % Number of lags
hominterc=1;    % in the first hominterc the interaction terms have no level effect 
                % (useful for blockexogenous variables withhomogenous dynamics and
                % intercepts)
I=1;          % Number of countries
pct=10;         % Confidence level for the CI-bands (default =10)
nsim=20;        % Number of simulations for the bootstrapped 
                % confidence bands (default = 200) 
centered=0;     % If = 0 symmetric CIs are reported if = 1 CIs are the (1-pct) range 
                % which minimizes the distance between upper and 
                % lower bound (default =0)
parametric=1;   % 1 = CI based on drawings of standards errors are drawn from normal 
                % distribution, otherwise from observed errors
                % (default = 1) 
period=12;      % Number of periods for which IRF is calculated (default = 10)
demean=0;       % 1 = fixed effects (default = 1)
cum=1;          % cumulative IRFs = 1 (default = 1)   
shock=1;        % Graph IRF in response to shock in variable # 1,2,3....nvar

%% Define Regressors
% first differences of the log of the data while taking account of the 
% panel nature of the data
%ydata=[price gdp];  

ydata=[price gdp cpi interest unemployment ipi oildivgdp];  
%ydata=[paneldiff(price,I) paneldiff(gdp,I) paneldiff(cpi,I) paneldiff(interest,I) paneldiff(unemployment,I) paneldiff(ipi,I) paneldiff(oildivgdp,I)];  

%% Define Matrix of Interaction Terms
Idata=[energy_ma];

%% Setting Restrictions on Interaction Terms
% Three equation, three interaction variable and, first variable exogenous.
%restr = [0 0 0 0
%         0 1 0 1];
     
     
restr = [0 0 0 1 0 1 0 1 0 1 0 1 0 1        
         0 0 0 1 0 1 0 1 0 1 0 1 0 1
         0 0 0 1 0 1 0 1 0 1 0 1 0 1
         0 0 0 1 0 1 0 1 0 1 0 1 0 1
         0 0 0 1 0 1 0 1 0 1 0 1 0 1
         0 0 0 1 0 1 0 1 0 1 0 1 0 1
         0 0 0 1 0 1 0 1 0 1 0 1 0 1];

%see interactpvar for a description for no restrictions on dynamics set
%restr=zeros(size(ydata,2), size(Idata,2)*size(Idata,2));

%% Defining values at which interaction terms are to be evaluated for the IRF
values=[0.3
    0.6
    0.4
    prctile(Idata(:,1),30)
    prctile(Idata(:,1),70)];
    values=values';

%% START AUTOMATIC PART ----------------------
nint=size(Idata,2);   % number of interaction terms
nvar=size(ydata,2);   % number of ebndogenous variables

%% Estimation of Structural Form
[beta,sterr,errors, positioner, F]=interactPVAR(ydata,I,lag,Idata,hominterc,....
    restr,demean);

%% Variance of (orthogonal) Shocks
for i=1:nvar
fPkomega(i,i) = errors(:,i)'*errors(:,i)/(size(errors,1)-(size(find(beta(:,i)),1)));
end

%% Create IRF for different interaction term values
for i=1:size(values,2)
    betaeval(:,:,i)=evalpvar(beta,values(:,i),lag);
    [betairf(:,:,i) Pkomega(:,:,i) azero(:,:,i)]=irfpreppvar(betaeval(:,:,i)...
        ,fPkomega,lag);
    MA(:,:,:,i)=IRFcreator(betairf(:,:,i),Pkomega(:,:,i),lag,period);
end

%% Generating Pictures
%dopics(MA,shock,cum,period,values,nvar)
cumulatedIR=dopicsedit(MA,shock,cum,period,values,nvar)

