%给出输入转移概率矩阵的不变分布
function v=stationaryvector(transmatrix)
    a=size(transmatrix,1);
    v=null(transmatrix'-eye(a,a));%求一个左特征向量
    v=v/sum(v); %将该左特征向量变为概率分布