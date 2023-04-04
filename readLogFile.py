import re

def read_log_file(file_path):
    total_sum = 0
    separate_sum = 0

    with open(file_path, 'r') as file:
        lines = file.readlines()

        for idx, line in enumerate(lines):
            if "Rendite wenn Trade" in line:
                numeric_value = float(re.findall(r"[-+]?\d*\.\d+|\d+", line)[0])
                total_sum += numeric_value

            if "Niedrigster Ask Preis und QTY" in line:
                ask_qty = float(re.findall(r"[-+]?\d*\.\d+|\d+", line)[-1])

            if "Hoechster Bid Preis und QTY" in line:
                bid_price = float(re.findall(r"[-+]?\d*\.\d+|\d+", line)[-2])
                bid_qty = float(re.findall(r"[-+]?\d*\.\d+|\d+", line)[-1])
                print(bid_price)

                smaller_qty = min(ask_qty, bid_qty)
                separate_sum += bid_price * smaller_qty

    return total_sum, separate_sum

if __name__ == "__main__":
    file_path = 'all_exchanges.log'
    total_sum, separate_sum = read_log_file(file_path)
    print(f"The sum of the numeric values is: {total_sum}")
    print(f"The separate sum is: {separate_sum}")
