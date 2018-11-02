%% compute Fourier Coefficient Cube (in dB)
% input:
% output:
function [FCCdB, FCC] = computeFCC(directEEG)
    global channels 
    channels = containers.Map({3,4,5,6,7,8,9,10,11,12,13,14,15,16},...
        {'AF3','F7','F3','FC5','T7','P7',...
        'O1','O2','P8','T8','FC6','F4','F8','AF4'});
    af3 = find (strcmp({directEEG.chanlocs.labels}, 'AF3'));
    af4 = find(strcmp({directEEG.chanlocs.labels}, 'AF4'));
    rawEEG = directEEG.data(af3:af4, :);
    rawEEG = rawEEG';
    
    rate = directEEG.srate;         %Sampling rate
    timel = round(directEEG.pnts/rate);    %Sampling length(second)
    
    FCC = ones(length(channels),directEEG.srate,timel);
    FCCdB = ones(length(channels),directEEG.srate,timel);
    for idx = 1:1:timel
        %fourier coefficients at 1 sec window
        FC = fft(rawEEG((1+directEEG.srate*(idx-1)):(directEEG.srate*idx),:));
        %dB of fourier coefficients
        FCdB = 20*log10(abs(FC(1:end,:)));

        FCC(:,:,idx) = FC';
        FCCdB(:,:,idx) = FCdB';
    end
end

%% Remark 
%  And thanks to adviser Jing-Rebecca Li.