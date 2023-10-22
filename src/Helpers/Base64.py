import base64

def convert_file_to_base64(path):
    with open(path, "rb") as file:
        file_base64 = base64.b64encode(file.read()).decode("utf-8")
    return file_base64

# Exemplo de uso
#file_path = "..\\Assets\\USAGE.docx"
#file_content = convert_file_to_base64(file_path)
#print(file_content)
