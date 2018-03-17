
% Katie Brown
% Matlab final project 

% Parkinson's disease is the 2nd most common age-related neurodegenerative
% disease. Most people with Parkinson's disease will experience changes to
% their speech. Symptoms are very different across individuals. For
% example, some individuals might have speech that has a slowed rate with
% many inappropriate pauses, while others may have speech that is rushed
% and stuttering-like. Currently, it is not know which individuals will
% present with which speech symptoms; however, there is limited reserach to
% suggest that the speech symptoms may correlate with motor symptom
% predominance, which also varies in Parkinson's. Motor symptom
% predominance is judged by the predominant motor characteristic an
% individual presents with, and is used to separate individuals into 2
% subtypes- a tremor-dominant subtype, and a non-tremor subtype. 

% The aim of this project is to present some fake data and practice plotting
% and analyzing it. For this fake data, there are 
% 8 subjects with idiopathic Parkinson's disease speech
% impairment.
% A speech sample taken for each subject, reading The Caterpillar
% passage, a speech task designed to provide a contextual approach to
% analyzing and comparing prosodic and segmental variables across
% individuals.
% Variabls = [pause, length, syllables, dysfluencies, subtype]
% pause = total # of pauses (pause >= 10 ms) in sample
% length = total length of reading passage, in seconds
% syllables = total number of syllables spoken (including dysfluencies)
% dysfluencies = total number of dysfluencies in the sample 
% subtype= PD subtype; 0=tremor dominant, 1=non-tremor
clear all


% check this, was inconsistent in your code (I think you had two switches
% so it plotted right!
tremor= 1:4;
nontremor=5:8;

sub1= [60, 75, 261, 3, 1]
sub2=[72, 70, 266, 8, 1]
sub3=[56, 80, 273, 2, 1]
sub4=[61, 87, 261, 5, 1]
sub5=[26, 60, 300, 26, 0]
sub6=[19, 51, 294, 30, 0]
sub7=[22, 49, 301, 40, 0]
sub8=[20, 50, 322, 29, 0]

data=[sub1;sub2;sub3;sub4;sub5;sub6;sub7;sub8]


% calculate average # of syllables
mean(data(:,3))

% calculate average # of syllables per second, by subject
for s=1:size(data, 1)
syllablespersec(s)=data(s,3) / data(s,2);
end

x=syllablespersec
y=1:8
scatter(syllablespersec,y) % should this be the other way around

%find average number of pauses, between groups
AvgTremorPause = mean(data(tremor,1));
AvgTremorPauseSTE=std(data(tremor,1))/sqrt(length(tremor));

AvgNonTremorPause = mean(data(nontremor,1))
AvgNonTremorPauseSTE=std(data(nontremor,1))/sqrt(length(nontremor));

%find average number of dysfluencies, between groups
AvgTremorDysfluencies = mean(data(tremor,4));
AvgTremorDysfluenciesSTE=std(data(tremor,4))/sqrt(length(tremor));
AvgNonTremorDysfluencies = mean(data(nontremor,4));
AvgNonTremorDysfluenciesSTE=std(data(nontremor,4))/sqrt(length(nontremor));

%plot average pauses, between groups

figure(1); clf 
subplot(2,1,1)
avgpausetime=[AvgTremorPause AvgNonTremorPause];
avgpausetimeSTE=[AvgTremorPauseSTE AvgNonTremorPauseSTE];

% so you had a bug in here where the tremor and the non-tremor were
% miscategorized!
bar(1:2,avgpausetime, 'FaceColor', [0 0.5 0.5], 'LineWidth', .1, 'BarWidth', .5, 'EdgeColor',['0 0 0']);hold on
e=errorbar(1:2,avgpausetime, avgpausetimeSTE);
set(e, 'LineStyle', 'none', 'Color', 'k')
set(gca, 'XTickLabel', {'tremor', 'non-tremor'});
title('Subplot 1')


%plot average number of dysfluencies, between groups as a subplot
subplot(2,1,2)
d=categorical({'tremor', 'non-tremor'});
dysfluencies=[AvgTremorDysfluencies AvgNonTremorDysfluencies];
dysfluenciesSTE=[AvgTremorDysfluenciesSTE AvgNonTremorDysfluenciesSTE];

bar(1:2,dysfluencies, 'FaceColor', [0 0.5 0.5], 'LineWidth', .1, 'BarWidth', .5, 'EdgeColor',['0 0 0']); hold on
e=errorbar(1:2,dysfluencies, dysfluenciesSTE);
set(e, 'LineStyle', 'none', 'Color', 'k')
set(gca, 'XTickLabel', {'tremor', 'non-tremor'});
title('Subplot 2')


