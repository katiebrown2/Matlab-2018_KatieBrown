
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
syllablepersec1=data(1,3) / data(1,2);
syllablepersec2=data(2,3) / data(2,2);
syllablepersec3=data(3,3) / data(3,2);
syllablepersec4=data(4,3) / data(4,2);
syllablepersec5=data(5,3) / data(5,2);
syllablepersec6=data(6,3) / data(6,2);
syllablepersec7=data(7,3) / data(7,2);
syllablepersec8=data(8,3) / data(8,2);

syllablespersec=[syllablepersec1, syllablepersec2, syllablepersec3, syllablepersec4, syllablepersec5, syllablepersec6, syllablepersec7, syllablepersec8];
%plot syllables per second, by subject

x=syllablespersec
y=1:8
scatter(x,y)


%find average number of pauses, between groups
AvgTremorPause=mean(data(5:8,1))
AvgNonTremorPause=mean(data(1:4,1))


%find average number of dysfluencies, between groups
AvgTremorDysfluencies=mean(data(5:8,4))
AvgNonTremorDysfluencies=mean(data(1:4,4))


%plot average pauses, between groups

figure
subplot(2,1,1)
c=categorical({'tremor', 'non-tremor'});
avgpausetime=[AvgTremorPause AvgNonTremorPause]
bar(c,avgpausetime, 'FaceColor', [0 0.5 0.5], 'LineWidth', .1, 'BarWidth', .5, 'EdgeColor',['0 0 0'])
title('Subplot 1')

%plot average number of dysfluencies, between groups as a subplot


subplot(2,1,2)
d=categorical({'tremor', 'non-tremor'});
dysfluencies=[AvgTremorDysfluencies AvgNonTremorDysfluencies]
bar(c,dysfluencies, 'FaceColor', [0 0.5 0.5], 'LineWidth', .1, 'BarWidth', .5, 'EdgeColor',['0 0 0'])
title('Subplot 2')


