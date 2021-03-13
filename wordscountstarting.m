
% WRITE HERE YOUR FUNCTION FOR EXERCISE 9
function [mf,total] = wordscountstarting(n,c)
%declaring cells
mf={};
% all strings I am considering in upper case here
c=upper(c);
% as per assignment suggesion used textrea
character= categorical(upper(textread('LittleMermaid.txt',"%s")));
cat=categories(character);
%count of character
count=countcats(character);
%withcount
WC=struct('character',{cat},'count',{count});
%forming table 
Table=struct2table(WC);
% n num of most frequent words starting with C
desc=table2struct(sortrows(Table,'count','descend'));
final=startsWith({desc.character},c);
Crr=desc(final);%array
mf(1:2,1:n)={Crr(1:n).character;Crr(1:n).count};
%total number of words starting with C
total=sum(final);
end
