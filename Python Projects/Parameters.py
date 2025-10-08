# 1. Buat algoritma/logika dari parameter input jika parameter input "null atau string kosong (spasi), jika parameter input adalah "null", maka output yang dihasilkan adalah 0. Jika parameter input adalah string kosong ( spasi ), maka output yang dihasilkan adalah 1

# 1. Create an algorithm/logic from the input parameters if the input parameter is "null or an empty string (space), if the input parameter is "null", then the output produced is 0. If the input parameter is an empty string (space), then the output produced is 1
def cek_input(param):
    # Jika parameter adalah None atau "null" (string literal)
    if param is None or str(param).lower() == "null":
        return 0
    
    # Jika parameter adalah string kosong atau hanya spasi
    elif isinstance(param, str) and param.strip() == "":
        return 1
    
    # Jika bukan keduanya
    else:
        return "Bukan null atau string kosong"

print(cek_input(None))       # Output: 0
print(cek_input("null"))     # Output: 0
print(cek_input("   "))      # Output: 1
print(cek_input(""))         # Output: 1
print(cek_input("halo"))     # Output: Neither

#2. Buat algoritma/logika dari parameter input jika alfabet maka output yang dihasilkan adalah 0, jika angka maka output yang dihasilkan adalah 1

#2. Create an algorithm/logic from the input parameters. If it is an alphabet, the output produced is 0, if it is a number, the output produced is 1.

def cek_alfabet_angka(param):
    # Pastikan param berupa string agar bisa dicek
    param = str(param)

    if param.isalpha():        # Cek apakah seluruh karakter alfabet
        return 0
    elif param.isdigit():      # Cek apakah seluruh karakter angka
        return 1
    else:
        return "Input bukan huruf atau angka"

print(cek_alfabet_angka("abc"))   # Output: 0
print(cek_alfabet_angka("123"))   # Output: 1
print(cek_alfabet_angka("a1b"))   # Output: Input bukan huruf atau angka
print(cek_alfabet_angka("@"))     # Output: Input bukan huruf atau angka


#3. Buat algoritma/logika dari parameter input untuk memeriksa berapa banyak huruf vokal ( a,i,u,e,o) pada parameter input, jika parameter input adalah huruf alfabet. Output yang dihasilkan adalah banyaknya huruf vokal pada parameter input tersebut. Contoh : Ameera --> outputnya = 4

#3. Create an algorithm/logic from the input parameters to check how many vowels (a, i, u, e, o) are in the input parameters, if the input parameters are letters of the alphabet. The resulting output is the number of vowels in the input parameters. Example: Ameera --> output = 4
def hitung_vokal(param):
    # Pastikan input berupa string
    param = str(param)

    # Cek jikainput hanya huruf alfabet
    if not param.isalpha():
        return "Input harus berupa huruf alfabet"
    
    # Variabel yang nge-store semua huruf vokal
    vokal = "aiueoAIUEO"
    
    # Hitung jumlah huruf vokal
    count = sum(1 for huruf in param if huruf in vokal)
    
    return count

print(hitung_vokal("Ameera"))    # Output: 4
print(hitung_vokal("Indonesia")) # Output: 5
print(hitung_vokal("xyz"))       # Output: 0
print(hitung_vokal("123"))       # Output: Input harus berupa huruf alfabet

#4. Buat algoritma/logika dari parameter input untuk memeriksa berapa banyak bilangan prima ( 2,3,5,7 ) pada parameter input, jika parameter input adalah angka. Output yang dihasilkan adalah banyaknya bilangan prima pada parameter input tersebut. Contoh : 833843 --> outputnya = 3

#4. Create an algorithm/logic from the input parameters to check how many prime numbers (2,3,5,7) are in the input parameters, if the input parameters are numbers. The resulting output is the number of prime numbers in the input parameters. Example: 833843 --> output = 3

def hitung_prima(param):
    # Pastikan param berupa string untuk iterasi
    param = str(param)

    # Cek jikainput hanya terdiri dari angka
    if not param.isdigit():
        return "Input harus berupa angka"

    # Daftar bilangan prima satu digit
    prima = {'2', '3', '5', '7'}

    # Hitung jumlah bilangan prima dalam input
    count = sum(1 for digit in param if digit in prima)
    
    return count

print(hitung_prima(833843))   # Output: 3
print(hitung_prima(2357))     # Output: 4
print(hitung_prima(14689))    # Output: 0
print(hitung_prima("abc"))    # Output: Input harus berupa angka

#5. Buat algoritma/logika dari parameter input untuk memeriksa apakah pada parameter input memiliki spesial karakter "@"

#5. Buat algoritma/logika dari parameter input untuk memeriksa apakah pada parameter input memiliki spesial karakter "@"

def cek_spesial_karakter(param):
    # Ubah ke string agar bisa diperiksa
    param = str(param)
    
    # Cek apakah ada karakter '@'
    if '@' in param:
        return "Ada karakter @"
    else:
        return "Tidak ada karakter @"

print(cek_spesial_karakter("user@example.com"))  # Output: Ada karakter @
print(cek_spesial_karakter("hello.world"))       # Output: Tidak ada karakter @
print(cek_spesial_karakter("@@@"))               # Output: Ada karakter @
print(cek_spesial_karakter(12345))               # Output: Tidak ada karakter @
