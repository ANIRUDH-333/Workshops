function amazing(varargin)
% Graphical driver for the maze generator, amaze.
%
% Click on a grid size, 5 through 30, to generate a maze.
% Choose a branching option, first, middle or last.
% Choose to see detail about how the sausage is made.
% Choose to see the shortest path from upper left to lower right.
% Then click on a grid size again to see another maze.
%
% See also: amaze, https://blogs.mathworks.com/cleve/2019/03/04.

    % Copyright 2019 Cleve Moler
    % Copyright 2019 The MathWorks, Inc.

    if nargin == 0
        amaze(15,'middle',false,true)
        make_controls
        set(gcf,'userdata',{15,'middle',false,true})
    else
        amaze(varargin{:})
    end

    function size_cb(arg,~)
        set(findobj('tag','size_tag'),'value',0)
        set(arg,'value',1)
        n = get(arg,'userdata');
        mazedata = get(gcf,'userdata');
        mazedata{1} = n;
        set(gcf,'userdata',mazedata)
        amaze(mazedata{:})
    end

    function branch_cb(arg,~)
        set(findobj('tag','branch_tag'),'value',0)
        set(arg,'value',1)
        k = get(arg,'userdata'); 
        branches = {'first','middle','last'};
        mazedata = get(gcf,'userdata');
        mazedata{2} = branches{k};
        set(gcf,'userdata',mazedata)
    end

    function other_cb(arg,~)
        k = get(arg,'userdata'); 
        switch k
            case 1 
                detail = get(arg,'value');
                mazedata = get(gcf,'userdata');
                mazedata{3} = detail;
                set(gcf,'userdata',mazedata)
            case 2
                shortest = get(arg,'value');
                mazedata = get(gcf,'userdata');
                mazedata{4} = shortest;
                set(gcf,'userdata',mazedata)
            case 3 % info
                doc amazing
                set(arg,'value',0)
        end        
    end

    function make_controls
        uicontrol('style','text', ...
            'units','normalized', ...
            'position',[.15 .05 .25 .05], ...
            'string',' 5    10    15    20    25    30')
        uicontrol('style','text', ...
            'units','normalized', ...
            'position',[.40 .05 .24 .05], ...
            'string',' first middle last')
        uicontrol('style','text', ...
            'units','normalized', ...
            'position',[.66 .05 .25 .05], ...
            'string','detail   shortest   info')
        for k = 1:6
             uicontrol('style','radio', ...
                'units','normalized', ...
                'position',[.122+.041*k .03 .04 .04], ...
                'value',k==3, ...
                'userdata',5*k, ...
                'tag','size_tag', ...
                'callback',@size_cb);
        end
        for k = 1:3
             uicontrol('style','radio', ...
                'units','normalized', ...
                'position',[.435+.041*k .03 .04 .04], ...
                'value',k==2, ...
                'userdata',k, ...
                'tag','branch_tag', ...
                'callback',@branch_cb);
        end
        for k = 1:3
             uicontrol('style','radio', ...
                'units','normalized', ...
                'position',[.63+.075*k .03 .04 .04], ...
                'value',k==2, ...
                'userdata',k, ...
                'callback',@other_cb);
        end
    end
end % amazing