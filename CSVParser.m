classdef CSVParser<handle
    %CSVParser A tool for dealing with csv strings
    %   Detailed explanation goes here
    
    properties
        string = [];
        delimiter = ',';
        data = [];
    end
    
    methods
        function obj=CSVParser()
            obj;
        end
        
        function obj=parse(obj)
            obj.data = [];
            split_string = strsplit(obj.string,obj.delimiter)
            for i = [1:length(split_string)]
                obj.data = [ obj.data str2num(split_string{i}) ]
            end
        end
        
        function obj=build(obj)
            obj.string = [];
            obj.string = sprintf('%d,',obj.data);
            obj.string = obj.string(1:length(obj.string)-1);
        end
    end
    
end

