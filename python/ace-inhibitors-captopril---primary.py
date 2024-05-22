# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"9950001","system":"gprdproduct"},{"code":"2913007","system":"gprdproduct"},{"code":"3111003","system":"gprdproduct"},{"code":"14250001","system":"gprdproduct"},{"code":"3111001","system":"gprdproduct"},{"code":"2960009","system":"gprdproduct"},{"code":"2958009","system":"gprdproduct"},{"code":"3805009","system":"gprdproduct"},{"code":"14539001","system":"gprdproduct"},{"code":"14248001","system":"gprdproduct"},{"code":"3900007","system":"gprdproduct"},{"code":"2167011","system":"gprdproduct"},{"code":"3803009","system":"gprdproduct"},{"code":"2167009","system":"gprdproduct"},{"code":"12187001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-captopril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-captopril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-captopril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
