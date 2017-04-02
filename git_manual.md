# Git Manual

![图1](http://onq7gdyen.bkt.clouddn.com/bg2014061202.jpg)

1. verbose

   git status

   git log

   git diff \<file>

2. initialize

   git init 

   git add \<file1 file2 … filen>

   git commit -m <"message">

3. git clone

   `git clone <版本库网址> <本地目录>`  从远程clone一个代码库

4. git remote

   git remote [-v]  查看远程主机的网址

   git remote add <主机名> <网址>

   git remote rm <主机名>

   git remote rename <原主机名> <新主机名>

5. git fetch

   `git fetch <远程主机名>`  取回主机的所有更新

   `git fetch <远程主机名> <分支名>`  取回主机某个分支的更新

   所取回的更新，在本地要用“远程主机名/分支名”的形式读取

   `git branch` 读取本地分支

   `git branch -r` 读取远程分支

   `git branch -a` 读取所有分支

   `git checkout -b newBranch origin/master`   在远程分支的基础上生成新分支

   `git merge origin/master`

   or

   `git rebase origin/master`

   以上两条命令，在当前分支上，合并origin/master。

6. git pull

   取回远程主机某个分支的更新，再与本地的指定分支合并。

   git pull <远程主机名> <远程分支名>:<本地分支名> 

   如果是和当前分支合并，冒号之后的不需要。 git pull <远程主机名> <远程分支名>

   git pull origin next

   就是

   git fetch origin

   git merge origin/next

7. git push

   用于将本地分支更新，推送到远程主机。

   git push <远程主机名> <本地分支名>:<远程分支名>

   如果省略远程分支名，表示将本地分支推送到与之存在“追踪关系”的远程分支（一般而言，两者同名）。

   如果省略本地分支名，则表示删除指定的远程分支。

   git push origin :master

   \#等同于

   git push origin —delete master

   如果当前分支和远程分支存在追踪关系，则本地分支和远程分支都可以忽略。

   git push origin

   git push不会推送标签，除非使用—tag选项。

   git push orgin --tag

   ​

   ​

   ​

   ​

   ​