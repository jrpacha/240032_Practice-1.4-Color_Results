%myExercise4.m
%Compute the number of nodes in the boundary of the meshTwoHolesQuad.m 
%example. using the boundaryNodes function.
 
clearvars
close all

eval('meshTwoHolesQuad');

%t = cputime;
[indNodBd1, indElemBd1, indLocalEdgBd1, edges1] = myBoundaryNodes(nodes, elem);
[indNodBd, indElemBd, indLocalEdgBd, edges] = boundaryNodes(nodes, elem);
%t = cputime - t

fprintf(' number of nodes in the boundary of meshTwoholesQuad.m = %d \n',...
    length(indNodBd));

figure()
plotElements(nodes,elem,0);
hold on

for e = 1:length(indElemBd)
    fill(nodes(elem(indElemBd(e),:),1),nodes(elem(indElemBd(e),:),2),'y')
end
plot(nodes(indNodBd,1),nodes(indNodBd,2),'ob','Marker','o',...
    'MarkerFaceColor','blue','MarkerSize',4)
hold off

setdiff(indNodBd1,indNodBd)
setdiff(indElemBd1,indElemBd)
setdiff(indLocalEdgBd1,indLocalEdgBd)
setdiff(edges(:,1),edges1(:,2))
setdiff(edges(:,1),edges1(:,2))