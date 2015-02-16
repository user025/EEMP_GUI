classdef OscilloscopeDevice < BaseDevice
    methods
        function [obj]=OscilloscopeDevice()
            obj = obj@BaseDevice()
        end
        function [statu]=UpLoadParser(obj)
            'Oscilloscope uploadparser'
        end
        function [statu]=DownLoadParser(obj)
            'Oscilloscope downloadparser'
        end
        function [statu]=UpLoad(obj)
            'Oscilloscope upload'
        end
        function [statu]=DownLoad(obj)
            'Oscilloscope download'
        end
    end
end
