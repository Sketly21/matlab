% Read the first .wav file
[audio_data1, sample_rate1] = audioread('pedestrian_crossing_1.wav');

% Extract one of the channels from the first .wav file
channel1 = audio_data1(:,1);

% Compute the magnitude of the first audio data
frequency_data1 = abs(channel1);

% Find the peaks in the magnitude data of the first .wav file
peaks1 = findpeaks(frequency_data1, 'MinPeakHeight', 0.01, 'MinPeakDistance', 100);

% Read the second .wav file
[audio_data2, sample_rate2] = audioread('pedestrian_crossing_2.wav');

% Extract one of the channels from the second .wav file
channel2 = audio_data2(:,1);

% Compute the magnitude of the second audio data
frequency_data2 = abs(channel2);

% Find the peaks in the magnitude data of the second .wav file
peaks2 = findpeaks(frequency_data2, 'MinPeakHeight', 0.01, 'MinPeakDistance', 100);

% Compare the number of peaks in the first and second .wav files
if length(peaks1) > length(peaks2)
    disp('The first .wav file ticks faster.');
elseif length(peaks1) < length(peaks2)
    disp('The second .wav file ticks faster.');
else
    disp('The first and second .wav files have the same number of ticks.');
end