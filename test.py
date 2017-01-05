with open('news.html') as f:
    for line in f:
        line = line.rstrip()
        if "*" in line:
            split = line.split(" - ")
            if len(split) == 1:
                print(line + "<br>")
                continue
            name = split[0].replace("* ", "")
            desc = split[1]
            if len(split) == 3:
                url = split[2]
                print("* <a href=\"{}\">{}</a> - {}".format(url, name, desc))
            else:
                print("* {} - {}<br>".format(name, desc))
        else:
            print(line)