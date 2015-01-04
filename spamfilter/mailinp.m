function rval = mailinp(file_contents)

% Read and predict
fprintf('\nPreprocessing sample email (spamSample2.txt)\n');
fprintf('\n The contents of a sample email (spamSample2.txt) are :\n');
fprintf('%s',file_contents);
word_indices  = processEmail(file_contents);
x             = emailFeatures(word_indices);
C = 0.1;
load('trainedfilter.mat');
p = svmPredict(model, x);
fprintf('\nProcessed \n\nSpam Classification: %d\n', p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');
rval=p;
end