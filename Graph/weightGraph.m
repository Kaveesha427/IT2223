s = [1, 2];         % Start nodes
t = [2, 3];         % End nodes
weight = [100, 50]; % Weights of the edges

G = digraph(s, t, weight); % Create a directed graph with weights
plot(G, 'EdgeLabel', G.Edges.Weight); % Plot graph with edge labels (weights)
title('Weighted Graph');
