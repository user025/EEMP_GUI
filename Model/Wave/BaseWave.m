classdef BaseWave
    properties 
        Name
        Data
        Length
        Attributes
        AttributesName
        isDisplay=1
        WindowName
    end
    methods
        function [obj]=Wave(name, attributes)
            obj.Name = name
            obj.Attributes = attributes
        end
        function [statu]=SendData(obj)
            sender = Device()
            sender.SendWaveDataToDevice(obj.Data)
            del sender
        end
        function [statu]=ReadData(obj)
            reader = Deviece()
            obj.Data = reader.ReadWaveDataFromDevice()
            del reader
    end
end
