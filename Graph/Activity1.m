a=[1,1,2,3,4,5,10,1,6,2,7,3,8,4,9,11,11,11,11,11,11,11,11,11,11];
b=[2,5,3,4,5,10,1,6,2,7,3,8,4,9,5,1,2,3,4,5,6,7,8,9,10];

%G=graph(s,t);
G=graph(a,b);
h1 = plot(G,'Layout','force')
h1 = plot(G,'LineWidth',2.5)
highlight(h1,[1:10],'NodeColor','blue')
highlight(h1,11,1:10,'EdgeColor','magenta') 
highlight(h1,[1,6,2,7,3,8,4,9,5,10],[6,2,7,3,8,4,9,5,10,1],'EdgeColor','red')


for i=1:4
    highlight(h1,[i,i+1],'EdgeColor','green')
   
end
 highlight(h1,[1,5],'EdgeColor','green')




