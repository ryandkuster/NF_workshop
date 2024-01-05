def get_squares(input_ls):
    squares_ls = []
    for i in input_ls:
        squares_ls.append(i**2)
    return squares_ls


test_ls = [i for i in range(1, 11)]
test_squares = get_squares(test_ls)
print(test_squares)
#print(squares_ls)

