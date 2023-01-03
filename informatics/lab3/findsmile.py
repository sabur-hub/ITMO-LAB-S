eyes = [':', ';', 'X', '8', '=']
nose = ['-', '<', '-{', '<{']
mouth = ['(', ')', 'O', '|', '\\', '/', 'P']
number = int(input('input your isu number:  '))

print(eyes[number%5] + nose[number%4] + mouth[number%7])
