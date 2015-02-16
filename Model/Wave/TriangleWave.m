classdef TriangleWave < BaseWave
    methods
        function [obj] = TriangleWave(attributes)
            AttributesName = ['Frequency' 'Amplitute' 'Offset']
            Attribute = attributes[0:2]
        end
    end
