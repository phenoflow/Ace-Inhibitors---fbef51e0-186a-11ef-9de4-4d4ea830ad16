# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"6668009","system":"gprdproduct"},{"code":"10694001","system":"gprdproduct"},{"code":"6402002","system":"gprdproduct"},{"code":"8555001","system":"gprdproduct"},{"code":"3203007","system":"gprdproduct"},{"code":"6669009","system":"gprdproduct"},{"code":"14573001","system":"gprdproduct"},{"code":"6402001","system":"gprdproduct"},{"code":"13870001","system":"gprdproduct"},{"code":"6670009","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-perindopril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-perindopril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-perindopril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
