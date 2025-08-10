import time, hmac, hashlib

def totp_for_user(userid, digits=10, timestep=30):
    secret = (userid + "HENNGECHALLENGE004").encode("ascii")
    T = int(time.time() // timestep)
    msg = T.to_bytes(8, "big")
    digest = hmac.new(secret, msg, hashlib.sha512).digest()
    offset = digest[-1] & 0x0F
    code_int = int.from_bytes(digest[offset:offset+4], "big") & 0x7FFFFFFF
    return str(code_int % (10 ** digits)).zfill(digits)

if __name__ == "__main__":
    email = "youremail@example.com"  # replace with same email as in JSON
    print(totp_for_user(email))
