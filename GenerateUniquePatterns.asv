function [patternindexarray,outputpatternarray] = GenerateUniquePatterns()
numtogenerate = 10; % number of unique patterns to generate
patternindexarray = cell(1,numtogenerate);
outputpatternarray = cell(1,numtogenerate);

for i = 1:numtogenerate
    unique = 0;
    while unique == 0
        [patternindex,outputpattern] = PatternRandom2x2();
        patternsize = size(patternindex);
        totalcheckers = patternsize(1)*patternsize(2);
        if i == 1
            i
            unique = 1;
        else
            for j = 1:i-1
                % test against existing patterns
                if sum(sum(patternindexarray{j} == patternindex)) == totalcheckers
                    unique = 0;
                    fprintf('match found, repeating generation\n\n');
                    break;
                end
            end
            unique = 1;
        end
    end
    
    % assign if unique
    patternindexarray{i} = patternindex;
    outputpatternarray{i} = outputpattern;
    fprintf('pattern assigned in index %d\n\n',i);
end

end