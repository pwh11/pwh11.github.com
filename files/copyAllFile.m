function copyAllFile(path,dest_path)
%����path�µ�����jpg�ļ���������Ŀ¼�£���dest_path��
%e.g copyAllFile('F:\2015.2\��ͼ\test','F:\2015.2\��ͼ\copied')
list=dir(path);
num=length(list);
for m=1:num
    if strcmp(list(m,1).name,'.')||strcmp(list(m,1).name,'..')
        continue;
    else if list(m,1).isdir
            copyAllFile(fullfile(path,list(m,1).name),dest_path);
        else
            t=list(m,1).name;
            if strcmp(t(end-3:end),'.jpg')
                copyfile(fullfile(path,list(m,1).name),fullfile(dest_path,list(m,1).name));
            end
        end
    end
end
