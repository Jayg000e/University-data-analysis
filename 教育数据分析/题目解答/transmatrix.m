%根据输入数据给出转移概率矩阵
function T=transmatrix(data,weigh)
   a=size(data,1);
   total=sum(data);
   for i=1:a
      T(i,:)=data'/(total-data(i));
      T(i,i)=0;
   end
   %解决转移概率矩阵可约的问题，使用论文中的一种方法使其不可约
   if ismember(0,data)
   T=weigh*T+(1-weigh)/a*ones(a,a);
   end
   
   
       