classdef WaveFactory
   methods 
       function [obj]=GenerateWave(type. name, attributes):
           if type=='Triangle':
               obj = TriangleWave(name, attributes)
           end
           if type=='Sin':
               obj = SquareWave(name, attributes)
           end
           if type=='User':
               obj = UserWave(name, attributes)
           end
       end
   end
end