%��������ת�Ƹ��ʾ���Ĳ���ֲ�
function v=stationaryvector(transmatrix)
    a=size(transmatrix,1);
    v=null(transmatrix'-eye(a,a));%��һ������������
    v=v/sum(v); %����������������Ϊ���ʷֲ�