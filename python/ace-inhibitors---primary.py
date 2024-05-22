# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"1783003","system":"gprdproduct"},{"code":"615001","system":"gprdproduct"},{"code":"727001","system":"gprdproduct"},{"code":"5247001","system":"gprdproduct"},{"code":"615002","system":"gprdproduct"},{"code":"2939001","system":"gprdproduct"},{"code":"12300001","system":"gprdproduct"},{"code":"5246003","system":"gprdproduct"},{"code":"2640001","system":"gprdproduct"},{"code":"1122003","system":"gprdproduct"},{"code":"10897003","system":"gprdproduct"},{"code":"12100001","system":"gprdproduct"},{"code":"6251002","system":"gprdproduct"},{"code":"615003","system":"gprdproduct"},{"code":"6251001","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
