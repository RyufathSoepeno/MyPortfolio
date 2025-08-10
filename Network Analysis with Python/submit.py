#!/usr/bin/env python3
# submit.py  — generate TOTP and POST payload to HENNGE

import time, hmac, hashlib, base64, json
import urllib.request, urllib.error, sys

def totp_for_user(userid, digits=10, timestep=30):
    secret = (userid + "HENNGECHALLENGE004").encode("ascii")
    T = int(time.time() // timestep)
    msg = T.to_bytes(8, "big")
    digest = hmac.new(secret, msg, hashlib.sha512).digest()
    offset = digest[-1] & 0x0F
    code_int = int.from_bytes(digest[offset:offset+4], "big") & 0x7FFFFFFF
    return str(code_int % (10 ** digits)).zfill(digits)

def submit(gist_url, email, solution_language="python"):
    totp = totp_for_user(email)
    data = json.dumps({
        "github_url": gist_url,
        "contact_email": email,
        "solution_language": solution_language
    }).encode("utf-8")

    auth = base64.b64encode(f"{email}:{totp}".encode("utf-8")).decode("ascii")
    req = urllib.request.Request(
        "https://api.challenge.hennge.com/challenges/backend-recursion/004",
        data=data,
        headers={
            "Content-Type": "application/json",
            "Authorization": f"Basic {auth}",
            "User-Agent": "hennge-challenge-submitter/1.0"
        },
        method="POST"
    )

    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            body = resp.read().decode("utf-8")
            print("Status:", resp.status)
            print("Response body:", body)
    except urllib.error.HTTPError as e:
        err = e.read().decode("utf-8") if e.fp else ""
        print("HTTPError:", e.code, e.reason)
        print("Details:", err)
    except Exception as e:
        print("Request failed:", e)

if __name__ == "__main__":
    if len(sys.argv) >= 3:
        gist = sys.argv[1]; email = sys.argv[2]; lang = sys.argv[3] if len(sys.argv)>3 else "python"
    else:
        gist = input("Secret gist URL: ").strip()
        email = input("Contact email (same for Basic Auth): ").strip()
        lang = input("Solution language [python]: ").strip() or "python"
    print("Submitting now (will generate a 10-digit TOTP automatically)...")
    submit(gist, email, lang)
