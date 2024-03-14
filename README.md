# Monday to PowerBi

This repo is based on https://github.com/ariten/Monday-to-PowerBi repository. I have made a few adjustments in the GetNext and the SourceTable queries.

## Purpose of the repo
The idea was to solve the issue of the List.Generate ignoring the last page of data brought from Monday (check the following the issue : https://github.com/ariten/Monday-to-PowerBi/issues/1).

While researching about it, I found out that the problem is related to how the List.Generate function works in PowerQuery (check https://learn.microsoft.com/en-us/answers/questions/484396/list-generate-missing-last-item)
Therefore, I had to change the logic for it to look for a different 'stop condition' and grab the last item as well.



