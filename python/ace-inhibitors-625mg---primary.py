# Tim Doran, Evangelos Kontopantelis, Jose M Valderas, Stephen Campbell, Martin Roland, Chris Salisbury, David Reeves, 2024.

import sys, csv, re

codes = [{"code":"4592009","system":"gprdproduct"},{"code":"1830001","system":"gprdproduct"},{"code":"8219001","system":"gprdproduct"},{"code":"4926009","system":"gprdproduct"},{"code":"12935001","system":"gprdproduct"},{"code":"5130001","system":"gprdproduct"},{"code":"3111002","system":"gprdproduct"},{"code":"3725010","system":"gprdproduct"},{"code":"5280009","system":"gprdproduct"},{"code":"2180010","system":"gprdproduct"},{"code":"5136009","system":"gprdproduct"},{"code":"6663009","system":"gprdproduct"},{"code":"9554002","system":"gprdproduct"},{"code":"5047009","system":"gprdproduct"},{"code":"5437009","system":"gprdproduct"},{"code":"11650002","system":"gprdproduct"},{"code":"9466001","system":"gprdproduct"},{"code":"1783001","system":"gprdproduct"},{"code":"2860010","system":"gprdproduct"},{"code":"4852009","system":"gprdproduct"},{"code":"9589002","system":"gprdproduct"},{"code":"4606009","system":"gprdproduct"},{"code":"3804009","system":"gprdproduct"},{"code":"12094001","system":"gprdproduct"},{"code":"3436010","system":"gprdproduct"},{"code":"3341010","system":"gprdproduct"},{"code":"3341009","system":"gprdproduct"},{"code":"13101001","system":"gprdproduct"},{"code":"2166010","system":"gprdproduct"},{"code":"4297009","system":"gprdproduct"},{"code":"5246002","system":"gprdproduct"},{"code":"3309010","system":"gprdproduct"},{"code":"5436009","system":"gprdproduct"},{"code":"12099001","system":"gprdproduct"},{"code":"5248002","system":"gprdproduct"},{"code":"5745009","system":"gprdproduct"},{"code":"4851009","system":"gprdproduct"},{"code":"3312009","system":"gprdproduct"},{"code":"12298001","system":"gprdproduct"},{"code":"3097009","system":"gprdproduct"},{"code":"5282009","system":"gprdproduct"},{"code":"4680009","system":"gprdproduct"},{"code":"2205010","system":"gprdproduct"},{"code":"5100009","system":"gprdproduct"},{"code":"5729009","system":"gprdproduct"},{"code":"3694010","system":"gprdproduct"},{"code":"3698010","system":"gprdproduct"},{"code":"5246001","system":"gprdproduct"},{"code":"5250002","system":"gprdproduct"},{"code":"4314009","system":"gprdproduct"},{"code":"148002","system":"gprdproduct"},{"code":"3320009","system":"gprdproduct"},{"code":"4944009","system":"gprdproduct"},{"code":"10941002","system":"gprdproduct"},{"code":"1783002","system":"gprdproduct"},{"code":"5588009","system":"gprdproduct"},{"code":"12098001","system":"gprdproduct"},{"code":"8219002","system":"gprdproduct"},{"code":"5744009","system":"gprdproduct"},{"code":"11650001","system":"gprdproduct"},{"code":"5589009","system":"gprdproduct"},{"code":"5347009","system":"gprdproduct"},{"code":"4209009","system":"gprdproduct"},{"code":"10938001","system":"gprdproduct"},{"code":"4607009","system":"gprdproduct"},{"code":"2179010","system":"gprdproduct"},{"code":"10930002","system":"gprdproduct"},{"code":"3353009","system":"gprdproduct"},{"code":"5426009","system":"gprdproduct"},{"code":"3436009","system":"gprdproduct"},{"code":"1528002","system":"gprdproduct"},{"code":"4315009","system":"gprdproduct"},{"code":"4276009","system":"gprdproduct"},{"code":"5799009","system":"gprdproduct"},{"code":"5171009","system":"gprdproduct"},{"code":"4282009","system":"gprdproduct"},{"code":"4210009","system":"gprdproduct"},{"code":"4614009","system":"gprdproduct"},{"code":"4308009","system":"gprdproduct"},{"code":"5048009","system":"gprdproduct"},{"code":"13545001","system":"gprdproduct"},{"code":"3204003","system":"gprdproduct"},{"code":"5425009","system":"gprdproduct"},{"code":"3818009","system":"gprdproduct"},{"code":"5087009","system":"gprdproduct"},{"code":"4319009","system":"gprdproduct"},{"code":"2167010","system":"gprdproduct"},{"code":"3203001","system":"gprdproduct"},{"code":"5348009","system":"gprdproduct"},{"code":"1830002","system":"gprdproduct"},{"code":"14821001","system":"gprdproduct"},{"code":"6540002","system":"gprdproduct"},{"code":"7112001","system":"gprdproduct"},{"code":"2178010","system":"gprdproduct"},{"code":"6662009","system":"gprdproduct"},{"code":"4324009","system":"gprdproduct"},{"code":"2168010","system":"gprdproduct"},{"code":"5065009","system":"gprdproduct"},{"code":"3819009","system":"gprdproduct"},{"code":"4901009","system":"gprdproduct"},{"code":"3031010","system":"gprdproduct"},{"code":"12738001","system":"gprdproduct"},{"code":"5066009","system":"gprdproduct"},{"code":"4927009","system":"gprdproduct"},{"code":"3320010","system":"gprdproduct"},{"code":"3334009","system":"gprdproduct"},{"code":"9423001","system":"gprdproduct"},{"code":"10938002","system":"gprdproduct"},{"code":"11491002","system":"gprdproduct"},{"code":"3334010","system":"gprdproduct"},{"code":"5446002","system":"gprdproduct"},{"code":"8041001","system":"gprdproduct"},{"code":"5733009","system":"gprdproduct"},{"code":"5248001","system":"gprdproduct"},{"code":"5051009","system":"gprdproduct"},{"code":"4943009","system":"gprdproduct"},{"code":"6102009","system":"gprdproduct"},{"code":"12299001","system":"gprdproduct"},{"code":"3203002","system":"gprdproduct"},{"code":"5130002","system":"gprdproduct"},{"code":"4902009","system":"gprdproduct"},{"code":"2959009","system":"gprdproduct"},{"code":"3725009","system":"gprdproduct"},{"code":"3312010","system":"gprdproduct"},{"code":"12095001","system":"gprdproduct"},{"code":"3309009","system":"gprdproduct"},{"code":"7112002","system":"gprdproduct"},{"code":"5250001","system":"gprdproduct"},{"code":"1941009","system":"gprdproduct"},{"code":"4318009","system":"gprdproduct"},{"code":"4309009","system":"gprdproduct"},{"code":"2996010","system":"gprdproduct"},{"code":"6540001","system":"gprdproduct"},{"code":"6101009","system":"gprdproduct"},{"code":"9554001","system":"gprdproduct"},{"code":"4750009","system":"gprdproduct"},{"code":"6082009","system":"gprdproduct"},{"code":"4298009","system":"gprdproduct"},{"code":"4364009","system":"gprdproduct"},{"code":"1528001","system":"gprdproduct"},{"code":"13861001","system":"gprdproduct"},{"code":"4323009","system":"gprdproduct"},{"code":"3698009","system":"gprdproduct"},{"code":"5446001","system":"gprdproduct"},{"code":"1122002","system":"gprdproduct"},{"code":"3338010","system":"gprdproduct"},{"code":"5604001","system":"gprdproduct"},{"code":"6081009","system":"gprdproduct"},{"code":"3097010","system":"gprdproduct"},{"code":"4275009","system":"gprdproduct"},{"code":"5484009","system":"gprdproduct"},{"code":"5057009","system":"gprdproduct"},{"code":"4363009","system":"gprdproduct"},{"code":"5603001","system":"gprdproduct"},{"code":"4600009","system":"gprdproduct"},{"code":"4800009","system":"gprdproduct"},{"code":"5058009","system":"gprdproduct"},{"code":"3338009","system":"gprdproduct"},{"code":"10897002","system":"gprdproduct"},{"code":"5476009","system":"gprdproduct"},{"code":"5475009","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ace-inhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ace-inhibitors-625mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ace-inhibitors-625mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ace-inhibitors-625mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)