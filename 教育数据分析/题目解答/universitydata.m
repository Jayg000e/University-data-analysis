%������ָ�ꡢ�߱���ѧ�ߡ�ѧ�����������A����ѧУ������Ϣ�е������������й����ָ�У�������ݱ�.xlsx��
clear;clc;
txt1=readcell('ѧ�����������A��.xlsx');
txt2=readcell('����ָ��.xlsx');
txt3=readcell('�߱���ѧ��.xlsx');
txt4=readcell('ѧУ������Ϣ.csv');
txt2{32,1}=[];
txt2{32,2}=[];
txt2{32,5}=[];
txt2{1,8}='�߱���ѧ��';
txt2{1,9}='ѧУ����';
txt2{1,10}='����';
txt2{1,11}='A+ѧ����';
txt2{1,12}='Aѧ����';
txt2{1,13}='A-ѧ����';

for i=1:30
    txt2{i+1,11}=0;
    txt2{i+1,12}=0;
    txt2{i+1,13}=0;
    %���ϸ߱���ѧ������
    for j=1:193
        if strcmp(txt2{i+1,2},txt3{j+1,1})
            txt2{i+1,8}=txt3{j+1,3};
        break;
        end
    end
    %����ѧУ������Ϣ
    for j=1:30
        if strcmp(txt2{i+1,2},txt4{j+1,1})
            txt2{i+1,9}=txt4{j+1,2};
            txt2{i+1,10}=txt4{j+1,3};
        break;
        end
    end
    %����ѧ�����������A�����ݱ�
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
writecell(txt2,'�й����ָ�У����ָ�����ݱ�.xlsx');