

% 
% Name Surname: Muhammed Eymen Ustaal
%
% 
% Topic:        Audio Filtering and Analysis
% 
% Topic:        Audio Filtering and Analysis
% Description:  This script reads an audio file, applies 8 different 
%               digital filters (LP, HP, BP, BS), plots the results 
%               in the time domain, and plays the audio sequentially.

  clear; close all; clc;


filename = 'voice_file.mp3'; 

try
    [y_raw, Fs] = audioread(filename);
    
    if size(y_raw, 2) > 1
        y_raw = mean(y_raw, 2);
    end
    
    fprintf('>>> Ses dosyası başarıyla okundu.\n');
    fprintf('>>> Örnekleme Frekansı (Fs): %d Hz\n', Fs);
    fprintf('>>> Toplam Süre: %.2f saniye\n\n', length(y_raw)/Fs);
catch
    error('HATA: Ses dosyası bulunamadı. Lütfen dosya adını ve klasörü kontrol edin.');
end


fprintf('Filtreleme işlemi yapılıyor, lütfen bekleyin...\n');


y_LP1 = filter(LP_Filter_1, y_raw);
y_LP2 = filter(LP_Filter_2, y_raw);


y_HP1 = filter(HP_Filter_1, y_raw);
y_HP2 = filter(HP_Filter_2, y_raw);


y_BP1 = filter(BP_Filter_1, y_raw);
y_BP2 = filter(BP_Filter_2, y_raw);


y_BS1 = filter(BS_Filter_1, y_raw);
y_BS2 = filter(BS_Filter_2, y_raw);

fprintf('Filtreleme tamamlandı. Grafik oluşturuluyor...\n\n');


t = (0:length(y_raw)-1)/Fs;

figure('Name', 'Filtering Results', 'NumberTitle', 'off', 'Position', [100, 100, 1000, 800]);
tiledlayout(5, 2, 'Padding', 'compact', 'TileSpacing', 'compact');

nexttile([1 2]);
plot(t, y_raw, 'k'); grid on;
title(['Original Audio Signal (Fs = ' num2str(Fs) ' Hz)']);
ylabel('Amplitude');

nexttile; plot(t, y_LP1, 'b'); title('Low Pass - Set 1'); grid on; axis tight;
nexttile; plot(t, y_LP2, 'b'); title('Low Pass - Set 2'); grid on; axis tight;

nexttile; plot(t, y_HP1, 'r'); title('High Pass - Set 1'); grid on; axis tight;
nexttile; plot(t, y_HP2, 'r'); title('High Pass - Set 2'); grid on; axis tight;

nexttile; plot(t, y_BP1, 'g'); title('Band Pass - Set 1'); grid on; axis tight;
nexttile; plot(t, y_BP2, 'g'); title('Band Pass - Set 2'); grid on; axis tight;

nexttile; plot(t, y_BS1, 'y'); title('Band Stop - Set 1'); grid on; axis tight;
nexttile; plot(t, y_BS2, 'y'); title('Band Stop - Set 2'); grid on; axis tight;

xlabel(nexttile(9),'Time (s)');
xlabel(nexttile(10),'Time (s)');


bekleme_suresi = (length(y_raw)/Fs) + 0.5; 

fprintf('--- DİNLEME TESTİ BAŞLIYOR ---\n');

fprintf('Orijinal Ses çalınıyor...\n');
sound(y_raw, Fs);
pause(bekleme_suresi);

fprintf('1. Low Pass (Set 1) çalınıyor...\n');
sound(y_LP1, Fs);
pause(bekleme_suresi);

fprintf('2. Low Pass (Set 2) çalınıyor...\n');
sound(y_LP2, Fs);
pause(bekleme_suresi);

fprintf('3. High Pass (Set 1) çalınıyor...\n');
sound(y_HP1, Fs);
pause(bekleme_suresi);

fprintf('4. High Pass (Set 2) çalınıyor...\n');
sound(y_HP2, Fs);
pause(bekleme_suresi);

fprintf('5. Band Pass (Set 1) çalınıyor...\n');
sound(y_BP1, Fs);

pause(bekleme_suresi);

fprintf('6. Band Pass (Set 2) çalınıyor...\n');
sound(y_BP2, Fs);
pause(bekleme_suresi);

fprintf('7. Band Stop (Set 1) çalınıyor...\n');
sound(y_BS1, Fs);
pause(bekleme_suresi);

fprintf('8. Band Stop (Set 2) çalınıyor...\n');
sound(y_BS2, Fs);
pause(bekleme_suresi);

fprintf('--- İŞLEM TAMAMLANDI ---\n');




