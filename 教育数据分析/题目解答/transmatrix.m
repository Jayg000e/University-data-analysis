%�����������ݸ���ת�Ƹ��ʾ���
function T=transmatrix(data,weigh)
   a=size(data,1);
   total=sum(data);
   for i=1:a
      T(i,:)=data'/(total-data(i));
      T(i,i)=0;
   end
   %���ת�Ƹ��ʾ����Լ�����⣬ʹ�������е�һ�ַ���ʹ�䲻��Լ
   if ismember(0,data)
   T=weigh*T+(1-weigh)/a*ones(a,a);
   end
   
   
       