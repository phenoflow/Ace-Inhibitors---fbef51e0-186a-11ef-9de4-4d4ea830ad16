# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"3313009","system":"gprdproduct"},{"code":"2652007","system":"gprdproduct"},{"code":"3204001","system":"gprdproduct"},{"code":"6084009","system":"gprdproduct"},{"code":"3203003","system":"gprdproduct"},{"code":"3820009","system":"gprdproduct"},{"code":"3309011","system":"gprdproduct"},{"code":"3312011","system":"gprdproduct"},{"code":"6083009","system":"gprdproduct"},{"code":"3310009","system":"gprdproduct"},{"code":"3821009","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-enalapril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-enalapril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-enalapril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
