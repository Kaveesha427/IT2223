% Write the MATLAB code to import a graph.Use the following sourse and
% destination data
% Using the imported data,draw the graph
% Write the matlab code to find and  display the subgraph for the given nodes
% identify and display the adjacency vertices for each node.
% Label the edges of the graph.
% Label the nodes of the graph
% Write the matlab code to colour the graph (graph colouring)
% write the matlab code to find the shortest path from node 1 to node 5

% source = [1,1,2,3,4]
% destination = [2,3,4,4,5]

s = [1,1,2,3,4];
t = [2,3,4,4,5];

figure;
G=graph(s,t);
P=plot(G);

title('main graph');

figure;
sub_nodes=[2,3,4];
G_sub=subgraph(G,sub_nodes);
plot(G_sub);
title('sub graph');

disp('Adjacent vertices');


for i=1:numnodes(G)
    a = neighbors(G,i);
    fprintf('Node %d connect to ',i);
    fprintf('%d\t',a);
    fprintf('\n')
   
end

figure;
labelnode(P,1:numnodes(G),1:numnodes(G));
labeledge(P,1:numnodes(G),1:numnodes(G));

node_colors = randi([1 5], numnodes(G), 1); 
plot_G = plot(G, 'NodeCData', node_colors, 'MarkerSize', 7, 'EdgeColor', 'k');
labelnode(P, 1:numnodes(G), 1:numnodes(G)); % Node labels
colorbar; % Show color scale
title('Graph Coloring');

 %Find the shortest path from node 1 to node 5
[spath, spath_length] = shortestpath(G, 1, 5);

fprintf('Shortest path from node 1 to node 5: %s\n', num2str(spath));
fprintf('Length of the shortest path: %d\n', spath_length);

% Highlight the shortest path on the colored graph
highlight(P, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Graph Coloring with Shortest Path Highlighted');









