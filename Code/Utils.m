function h = sha256_hex(data)
if ischar(data)
    data = uint8(data);
end
import java.security.*;
md = MessageDigest.getInstance('SHA-256');
md.update(int8(data));
hash = md.digest();
h = sprintf('%02x', typecast(hash,'uint8'));
end
