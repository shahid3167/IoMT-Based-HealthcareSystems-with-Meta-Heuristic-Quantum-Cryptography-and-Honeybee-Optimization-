function ciphertext = encrypt_twofish(plaintextBits, keyBits, type)
ptBytes = bits2bytes(plaintextBits);
kBytes = bits2bytes(keyBits);

switch type
    case 'AES-128'
        key16 = pad_or_trim(kBytes,16);
        ciphertext = aes_encrypt_java(ptBytes, key16);
    case 'AES-256'
        key32 = pad_or_trim(kBytes,32);
        ciphertext = aes_encrypt_java(ptBytes, key32);
    otherwise
        ciphertext = ptBytes; % placeholder
end
end

function bytes = bits2bytes(bits)
bits = bits(:)';
padlen = mod(8 - mod(numel(bits),8),8);
bits = [bits zeros(1,padlen)];
bytes = uint8(bin2dec(reshape(char(bits+'0'),8,[])')) ;
end

function out = pad_or_trim(bytes, N)
out = zeros(1,N,'uint8');
L = min(numel(bytes),N);
out(1:L) = bytes(1:L);
end

function ct = aes_encrypt_java(pt, key)
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
cipher = Cipher.getInstance('AES/ECB/PKCS5Padding');
keySpec = SecretKeySpec(uint8(key), 'AES');
cipher.init(Cipher.ENCRYPT_MODE, keySpec);
ctJava = cipher.doFinal(int8(pt));
ct = typecast(int8(ctJava), 'uint8')';
end
