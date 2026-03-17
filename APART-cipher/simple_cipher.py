def simpleCipher(encrypted, k):
    result = ""

    for char in encrypted:
        index = ord(char) - ord('A')
        new_index = (index - k) % 26
        result += chr(new_index + ord('A'))

    return result


# ทดสอบ
encrypted = 'VTAOG'
k = 2

result = simpleCipher(encrypted, k)

print("Expected Result:", result)