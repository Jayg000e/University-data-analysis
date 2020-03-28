%将部分指标、高被引学者、学科评估结果（A）、学校基本信息中的数据整合至中国部分高校各项数据表.xlsx中
clear;clc;
txt1=readcell('学科评估结果（A）.xlsx');
txt2=readcell('部分指标.xlsx');
txt3=readcell('高被引学者.xlsx');
txt4=readcell('学校基本信息.csv');
txt2{32,1}=[];
txt2{32,2}=[];
txt2{32,5}=[];
txt2{1,8}='高被引学者';
txt2{1,9}='学校类型';
txt2{1,10}='区域';
txt2{1,11}='A+学科数';
txt2{1,12}='A学科数';
txt2{1,13}='A-学科数';

for i=1:30
    txt2{i+1,11}=0;
    txt2{i+1,12}=0;
    txt2{i+1,13}=0;
    %整合高被引学者数据
    for j=1:193
        if strcmp(txt2{i+1,2},txt3{j+1,1})
            txt2{i+1,8}=txt3{j+1,3};
        break;
        end
    end
    %整合学校基本信息
    for j=1:30
        if strcmp(txt2{i+1,2},txt4{j+1,1})
            txt2{i+1,9}=txt4{j+1,2};
            txt2{i+1,10}=txt4{j+1,3};
        break;
        end
    end
    %整合学科评估结果（A）数据表
    for j=1:710
        if contains(txt1{j+1,4},txt2{i+1,2})
            if strcmp(txt1{j+1,3},'A+')
               txt2{i+1,11}=txt2{i+1,11}+1;
            end
            if strcmp(txt1{j+1,3},'A')
               txt2{i+1,12}=txt2{i+1,12}+1;
            end
            if strcmp(txt1{j+1,3},'A-')
               txt2{i+1,13}=txt2{i+1,13}+1;
            end
        end
    end
end
writecell(txt2,'中国部分高校各项指标数据表.xlsx');