classdef criterion
    % CRITERION - Interface for spatial components selection criteria
    
    
    methods (Abstract)
        
        [selection, rankIndex] = select(obj, spt, ics, raw, rep, varargin);
        
        obj = not(obj);
        
        bool = negated(obj);
        
    end
    
    methods
        
        function count = fprintf(fid, critObj, varargin)
            import misc.fid2fname;
            
            % Default implementation simply prints the criterion props into
            % a separate sub-report
            count = 0;
            objRep = report.object.new(critObj, ...
                'Title', sprintf('Criterion %s',class(critObj)));
            objRep = childof(objRep, fid2fname(fid));
            initialize(objRep);
            generate(objRep);
            [~, repName] = fileparts(get_filename(objRep));
            count = count + ...
                fprintf(fid, '[%s](%s)', class(critObj), [repName '.txt']);
        end
        
        
    end
    
    
end