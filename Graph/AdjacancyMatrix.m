% A = [0 1 0;
%     1 0 1;
%     1 1 0];
% 
% G=graph(A);
% plot(G);
% title('Adjacancy matrix')

% s = [1 1 1 2 5 3 6 4 7 8 8 8];
% t = [2 3 4 5 3 6  4 7 2 6 7 5];
% Weight = [100 10 10 10 10 20 10 30 50 10 70 10];
% 
% G = digraph(s, t, Weight);
% plot(G, 'EdgeLabel', G.Edges.Weight, 'NodeColor', 'r');

 s = [1 1 1 2 2 6 6 7 7 3 3 9 9 4 4 11 11 8];
 t = [2 3 4 5 6 7 8 5 8 9 10 5 10 11 12 10 12 12];
 Weight = [10 10 10 10 10 1 1 1 1 1 1 1 1 1 1 1 1 1];
 
 G = digraph(s, t, Weight);
 %plot(G, 'EdgeLabel', G.Edges.Weight,);

%plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout', 'force');
% arrange the nodes in a nice way using layout called 'force'

plot(G, 'EdgeLabel', G.Edges.Weight, 'Layout', 'force','NodeColor','r');