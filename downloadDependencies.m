function submodules = downloadDependencies(repoParent)
%
% Syntax:
%   downloadDependencies(repoParent, urlroot, branch)
%   downloadDependencies(repoParent, urlroot)
%   downloadDependencies(repoParent)
%   downloadDependencies()
%
% Examples:
%   downloadDependencies()
%   downloadDependencies('c:\users\public\DataTree')
%
%

if ~exist('repoParent','var')
    repoParent = pwd;
end
repoParentFull = fullpath_startup(repoParent);
submodules = parseGitSubmodulesFile(repoParentFull);
gitSubmodulesClone(repoParentFull, false, 'init');



