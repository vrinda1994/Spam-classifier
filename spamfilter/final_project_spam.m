function rval = final_project_spam()
filename = 'emailSample2.txt';

% Read and predict
fprintf('\nPreprocessing sample email (spamSample2.txt)\n');
file_contents = readFile(filename);
fprintf('\n The contents of a sample email (spamSample2.txt) are :\n');
fprintf('%s',file_contents);
word_indices  = processEmail(file_contents);
x             = emailFeatures(word_indices);
C = 0.1;
load('trainedfilter.mat');

p = svmPredict_Percentage(model, x);
fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename, p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');
rval=p;
end