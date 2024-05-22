# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"4287009","system":"gprdproduct"},{"code":"3320011","system":"gprdproduct"},{"code":"5277009","system":"gprdproduct"},{"code":"5173009","system":"gprdproduct"},{"code":"2166011","system":"gprdproduct"},{"code":"4286009","system":"gprdproduct"},{"code":"5139009","system":"gprdproduct"},{"code":"5138009","system":"gprdproduct"},{"code":"2180009","system":"gprdproduct"},{"code":"5137009","system":"gprdproduct"},{"code":"3321009","system":"gprdproduct"},{"code":"5172009","system":"gprdproduct"},{"code":"2205011","system":"gprdproduct"},{"code":"5270009","system":"gprdproduct"},{"code":"2166009","system":"gprdproduct"},{"code":"2205009","system":"gprdproduct"},{"code":"5875009","system":"gprdproduct"},{"code":"3338011","system":"gprdproduct"},{"code":"5272009","system":"gprdproduct"},{"code":"5286009","system":"gprdproduct"},{"code":"3339009","system":"gprdproduct"},{"code":"2180011","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-genus---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-genus---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-genus---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
